<?php

namespace App\Http\Controllers;

use Log;
use App\PixelTracker;
use App\TrackerRawData;
use App\Libraries\Common;
use App\Libraries\Tracking;
use Illuminate\Http\Request;

class TrackingController extends Controller
{

    public $common;
    public $history_tracker;
    public $tracker;
    public $output;

    public function __construct()
    {
        $this->common = new Common();
        $this->tracker = new Tracking();
    }

    public function track_now( Request $request, $id )
    {
        header( 'Content-type: image/png' );
        echo gzinflate( base64_decode( '6wzwc+flkuJiYGDg9fRwCQLSjCDMwQQkJ5QH3wNSbCVBfsEMYJC3jH0ikOLxdHEMqZiTnJCQAOSxMDB+E7cIBcl7uvq5rHNKaAIA' ) );
        $data = [ ];
        $start_time = microtime( true );
        $start = microtime( true );
        $output = '';
        ignore_user_abort( true );
        $time = 'read';
        $filter = $request->all();
        $data[ 'ip_address' ] = $this->common->get_visitor_ip();
        $end_time = microtime( true );
        $end_sec = $end_time - $start_time;

        $clicked = isset( $_GET[ 'click' ] ) ? true : false;
        if ( $clicked )
        {
            $data[ 'last_clicked' ] = date( 'Y-m-d h:i:s' );
        }
        $forward = isset( $_GET[ 'f' ] ) ? true : false;
        $print = isset( $_GET[ 'p' ] ) ? true : false;

        $data[ 'status' ] = 'open';
        if ( $forward )
        {
            $data[ 'status' ] = 'forward';
        }
        else if ( $print )
        {
            $data[ 'status' ] = 'print';
        }

        $t_date = new \DateTime( "now", new \DateTimeZone( config( 'app.timezone' ) ) );
        $opened_date = $t_date->format( 'Y-m-d H:i:s' );
        $data[ 'open_date' ] = $opened_date;
        $data[ 'engagement_type' ] = $time;
        $data[ 'email' ] = isset( $_GET[ 'email' ] ) ? $_GET[ 'email' ] : '';
        $data[ 'request_data' ] = !empty( $filter ) ? json_encode( $filter, true ) : '';
        $data[ 'open_duration' ] = 0;
        $pixel_tracker_found = PixelTracker::where( 'pixel_slug', $id )->Trackable()->first();
        if ( $pixel_tracker_found )
        {
            $data[ 'pixel_id' ] = $pixel_tracker_found->id;
            if ( isset( $_SERVER[ 'HTTP_USER_AGENT' ] ) )
            {
                $data[ 'ua_string' ] = $_SERVER[ 'HTTP_USER_AGENT' ];
            }
            else
            {
                Log::critical( 'ua not found' );
                die;
            }
            $this->history_tracker = TrackerRawData::create( $data );
            $result = $this->tracker->update_stat( $data );
            if ( $result[ 'flag' ] == 1 )
            {
                $this->output = $result[ 'data' ];
                $this->new_tracker( $start_time );
            }
            else
            {
                Log::critical( 'error' );
                die;
            }
        }
        else
        {
            Log::critical( 'no data' );
            die;
        }
    }

    public function new_tracker( $start_time )
    {
        $end_time1 = '';
        while ( 1 )
        {
            ob_flush();
            flush();
            echo "1";
            if ( connection_aborted() )
            {
                $end_time1 = microtime( true );
                break;
            }
            else
            {
                $end_time1 = microtime( true );
                $second = $end_time1 - $start_time;
                if ( $second >= 25 )
                {
                    break;
                }
            }
            // Sleep
            usleep( 300000 );
        }
        $second = $end_time1 - $start_time;
        if ( $second < 2 )
        {
            $time = 'deleted';
        }
        else if ( $second >= 2 && $second <= 8 )
        {
            $time = 'skim read';
        }
        else
        {
            $time = 'read';
        }

        $output = $this->output;
        TrackerRawData::where( 'id', $this->history_tracker->id )->update( [
            'updated_engagement_type' => $time,
            'open_duration' => $second
        ] );
        $data_to_update = [
            'ad_id' => $output[ 'ad_id' ],
            'type' => $time,
            'open_duration' => $second
        ];
        $this->tracker->update_read( $data_to_update );
        die;
    }

}
