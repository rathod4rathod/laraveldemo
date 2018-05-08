<?php

namespace App\Http\Controllers;

use DB;
use Auth;
use Validator;
use App\PixelTracker;
use App\ContactAnalyticMapping;
use Illuminate\Http\Request;

class PixelTrackerController extends Controller
{

    public function __construct()
    {
        $this->middleware( 'auth' );
    }

    public function index( Request $request )
    {
        $columns = ['name', 'created_at', 'is_active' ];
        $orderBy = 'created_at';
        $order = 'desc';
        if ( $request->has( 'sortBy' ) )
        {
            if ( in_array( $request->sortBy, $columns ) )
            {
                $orderBy = $request->sortBy;
            }
            else
            {
                $orderBy = 'created_at';
            }
        }
        if ( $request->has( 'orderBy' ) )
        {
            if ( $request->orderBy != 'desc' || $request->orderBy != 'asc' )
            {
                $order = $request->orderBy;
            }
        }
        $pixel_trackers = PixelTracker::select( [
                    'pixel_trackers.id', 'pixel_trackers.name', 'pixel_trackers.is_active', 'pixel_trackers.is_deleted', 'pixel_trackers.owner_id', 'pixel_trackers.created_at',
                    DB::raw( '(SELECT count(analytic_details.id) FROM analytics, analytic_details WHERE analytics.pixel_tracker_id = pixel_trackers.id AND analytic_details.analytic_id = analytics.id AND analytic_details.status = "OPEN") as total_open' ),
                    DB::raw( '(SELECT IFNULL(max(analytic_details.open_date), "-") FROM analytics, analytic_details WHERE analytics.pixel_tracker_id = pixel_trackers.id AND analytic_details.analytic_id = analytics.id) as latest_impression' ),
                ] )
                ->where( 'owner_id', Auth::id() )
                ->working()
                ->orderBy( $orderBy, $order )
                ->paginate( 10 );
        return view( 'vendor.voyager.pixel.list_pixel_trackers', compact( 'pixel_trackers' ) );
    }

    public function show_statistics( $id )
    {
        $pixel_tracker_data = PixelTracker::select( [ 'pixel_trackers.id', 'pixel_trackers.name', 'pixel_trackers.is_locked',
                            'pixel_trackers.is_active', 'pixel_trackers.owner_id', DB::raw( 'analytics.id as analytic_id' )
                        ] )
                        ->join( 'analytics', 'analytics.pixel_tracker_id', '=', 'pixel_trackers.id' )
                        ->where( ['pixel_trackers.id' => $id ] )->working()->first();
        if ( $pixel_tracker_data )
        {
            if ( $pixel_tracker_data->owner_id != Auth::id() )
            {
                abort( 403 );
            }
            $data[ 'pixel_info' ] = $pixel_tracker_data;
            $data[ 'overall_statistics' ][ 'total_opens' ] = DB::table( 'analytic_details' )->select( DB::raw( 'count(analytic_details.id) as total_opens' ) )->where( 'analytic_details.analytic_id', $pixel_tracker_data->analytic_id )->pluck( 'total_opens' )->first();
            $data[ 'overall_statistics' ][ 'latest_impression' ] = DB::table( 'analytic_details' )->select( DB::raw( 'IFNULL(max(analytic_details.open_date), "-") as latest_impression' ) )->where( 'analytic_details.analytic_id', $pixel_tracker_data->analytic_id )->pluck( 'latest_impression' )->first();
            $data[ 'overall_statistics' ][ 'unique_visitors' ] = DB::table( 'contact_analytic_mapping' )->select( DB::raw( 'count(distinct(contact_analytic_mapping.contact_id)) as unique_visitors' ) )->where( 'contact_analytic_mapping.analytic_id', $pixel_tracker_data->analytic_id )->pluck( 'unique_visitors' )->first();
            $data[ 'statistics' ] = ContactAnalyticMapping::select( DB::raw( 'IFNULL(sum(open_count),0) as total_opens' ), DB::raw( 'IFNULL(sum(click_count),0) as total_clicks' ), DB::raw( 'IFNULL(sum(print_count),0) as total_prints' ), DB::raw( 'IFNULL(sum(forward_count),0) as total_forwards' ) )
                            ->where( 'contact_analytic_mapping.analytic_id', $pixel_tracker_data->analytic_id )->first();
            return view( 'statistics', compact( 'data' ) );
        }
        else
        {
            abort( 404 );
        }
    }

    public function add_pixel_tracker( Request $request )
    {
        $filter = $request->all();
        $validator = Validator::make( $filter, [
                    'pixel_tracker_title' => 'required|unique:pixel_trackers,name|max:25|alpha_dash'
                ] );

        if ( $validator->fails() )
        {
            return response()->json( ['flag' => 0, 'message' => $validator->errors() ] );
        }
        $pixel_tracker_created = PixelTracker::create( [
                    'name' => $filter[ 'pixel_tracker_title' ],
                    'short_name' => $filter[ 'pixel_tracker_title' ],
                    'pixel_slug' => $this->generate_pixel_slug(),
                    'is_locked' => 0,
                    'is_active' => 1,
                    'is_deleted' => 0,
                    'is_email_campaign' => 0,
                    'owner_id' => Auth::id(),
                    'is_dynamically_created' => 0,
                    'redirect_url' => '',
                ] );
        if ( $pixel_tracker_created )
        {
            \App\Analytic::create( [
                'pixel_tracker_id' => $pixel_tracker_created->id,
                'user_id' => Auth::id()
            ] );
            return response()->json( ['flag' => 1, 'message' => 'Pixel Tracker added successfully!' ] );
        }
        else
        {
            return response()->json( ['flag' => 0, 'message' => 'Unable to created Pixel Tracker at this moment!' ] );
        }
    }

    public function edit_pixel_tracker( Request $request )
    {
        $filter = $request->all();
        $validator = Validator::make( $filter, [
                    'pixel_tracker_title' => 'required|unique:pixel_trackers,name,' . $request->id . '|max:25|alpha_dash',
                    'id' => 'required|exists:pixel_trackers'
                ] );

        if ( $validator->fails() )
        {
            return response()->json( ['flag' => 0, 'message' => $validator->errors() ] );
        }

        $pixel_tracker_found = PixelTracker::where( 'id', $request->id )->working()->first();
        if ( $pixel_tracker_found )
        {
            if ( $pixel_tracker_found->owner_id != Auth::id() )
            {
                return response()->json( ['flag' => 0, 'message' => 'Unauthorized request!' ] );
            }
            else
            {
                $pixel_tracker_found->name = $request->pixel_tracker_title;
                $pixel_tracker_found->save();
                return response()->json( ['flag' => 1, 'message' => 'Pixel Tracker updated successfully!' ] );
            }
        }
        else
        {
            return response()->json( ['flag' => 0, 'message' => 'No data found!' ] );
        }
    }

    public function get_details( $id )
    {
        $pixel_tracker_found = PixelTracker::select( 'id', 'name', 'owner_id' )->where( 'id', $id )->working()->first();
        if ( $pixel_tracker_found )
        {
            if ( $pixel_tracker_found->owner_id != Auth::id() )
            {
                return response()->json( ['flag' => 0, 'message' => 'Unauthorized request!' ] );
            }
            else
            {
                return response()->json( ['flag' => 1, 'message' => 'success!', 'data' => $pixel_tracker_found ] );
            }
        }
        else
        {
            return response()->json( ['flag' => 0, 'message' => 'No data found!' ] );
        }
    }

    public function get_tracking_script( $id )
    {
        $pixel_tracker_found = PixelTracker::select( 'name', 'pixel_slug', 'owner_id' )->where( 'id', $id )->working()->first();
        if ( $pixel_tracker_found )
        {
            if ( $pixel_tracker_found->owner_id != Auth::id() && Auth::guard()->user()->role_id !=1 )    
            {
                return response()->json( ['flag' => 0, 'message' => 'Unauthorized request!' ] );
            }
            else
            {
                //$url = config( 'app.url' ) . 'track/' . $pixel_tracker_found->pixel_slug;
                $url = config( 'app.url' ) . 'admin/track/' . $pixel_tracker_found->pixel_slug;
                $script = base64_encode( "&lt;style data-ignore-inlining&gt;@media print{ #_t { background-image: url('" . $url . "?p');}} div.OutlookMessageHeader {background-image:url('" . $url . "?f')} table.moz-email-headers-table {background-image:url('" . $url . "?f')} blockquote #_t {background-image:url('" . $url . "?f')} #MailContainerBody #_t {background-image:url('" . $url . "?f')}&lt;/style&gt;
&lt;div id='_t'&gt;&lt;/div&gt;&lt;img src='" . $url . "' width='1' height='1' border='0' /&gt;" );
                return response()->json( ['flag' => 1, 'message' => 'success!', 'data' => $pixel_tracker_found, 'script' => $script ] );
            }
        }
        else
        {
            return response()->json( ['flag' => 0, 'message' => 'No data found!' ] );
        }
    }

    public function toggle_status( $id, $status )
    {
        if ( $status == 'activate' || $status == 'deactivate' )
        {
            $pixel_tracker_found = PixelTracker::where( [ 'id' => $id, 'is_deleted' => 0 ] )->first();
            if ( $pixel_tracker_found )
            {
                if ( $pixel_tracker_found->owner_id != Auth::id() )
                {
                    return response()->json( ['flag' => 0, 'message' => 'Unauthorized request!' ] );
                }
                else
                {
                    $changed_status = $status == 'activate' ? 1 : 0;
                    if ( $changed_status == $pixel_tracker_found->is_active )
                    {
                        return response()->json( ['flag' => 0, 'message' => 'This Pixel Tracker is already ' . $status . 'd!' ] );
                    }
                    else
                    {
                        $pixel_tracker_found->is_active = $changed_status;
                        $pixel_tracker_found->save();
                        return response()->json( ['flag' => 1, 'message' => 'Pixel Tracker ' . $status . 'd successfully!' ] );
                    }
                }
            }
            else
            {
                return response()->json( ['flag' => 0, 'message' => 'No data found!' ] );
            }
        }
        else
        {
            return response()->json( ['flag' => 0, 'message' => 'Invalid status provided!' ] );
        }
    }

    public function destory( $id )
    {
        $pixel_tracker_found = PixelTracker::select( 'id', 'name', 'pixel_slug', 'owner_id' )->where( 'id', $id )->working()->first();
        if ( $pixel_tracker_found )
        {
            if ( $pixel_tracker_found->owner_id != Auth::id() )
            {
                return response()->json( ['flag' => 0, 'message' => 'Unauthorized request!' ] );
            }
            else
            {
                $analaytic = \App\Analytic::where( 'pixel_tracker_id', $pixel_tracker_found->id )->first();
                if ( $analaytic )
                {
                    \App\AnalyticDetail::where( 'analytic_id', $analaytic->id )->delete();
                    \App\BrowserReport::where( 'analytic_id', $analaytic->id )->delete();
                    \App\ContactAnalyticMapping::where( 'analytic_id', $analaytic->id )->delete();
                    \App\LocationReport::where( 'analytic_id', $analaytic->id )->delete();
                    \App\Analytic::destroy( $analaytic->id );
                }
                $old_name = $pixel_tracker_found->name;
                PixelTracker::destroy( $pixel_tracker_found->id );
                return response()->json( ['flag' => 1, 'message' => $old_name . ' deleted successfully.' ] );
            }
        }
        else
        {
            return response()->json( ['flag' => 0, 'message' => 'No data found!' ] );
        }
    }

    public function generate_pixel_slug()
    {
        $rand_str = substr( sha1( substr( str_shuffle( 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890' ) . strtotime( date( 'Y-m-d h:i:sa' ) ), 0, 10 ) ), 0, 30 );
        $is_exits = PixelTracker::where( 'pixel_slug', $rand_str )->first();
        if ( $is_exits )
        {
            $this->generate_pixel_slug();
        }
        return $rand_str;
    }

}
