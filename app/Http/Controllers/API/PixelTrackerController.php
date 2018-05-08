<?php

namespace App\Http\Controllers\API;

use DB;
use App\Campaign;
use App\User;
use App\Analytic;
use App\ClickReport;
use App\MoveCampaignHistory;
use App\AnalyticDetails;
use App\Organisation;
use App\Device;
use App\EngagementReport;
use App\LocationReport;
use App\PixelTracker;
use Illuminate\Http\Request;
use App\Conversion;
use App\ConversionSubcampaignMapping;
use App\OrganisationCampaignsAccess;
use App\libraries\common_library;
use App\Http\Controllers\Controller;
use Validator;
use Auth;
use Carbon\Carbon;

/**
 * Description of DynamicImageController
 *
 * @author Rathod Rajesh
 */
class PixelTrackerController extends Controller
{

    public $common;

    public function __construct()
    {
        //$this->common = new common_library();
    }

    public function save( Request $request )
    {
        $filter = $request->all();
        $messages = [
            'auth_user_id.required' => 'The user id field is required.',
            'pixel_tracker_title.required' => 'The email tracker title field is required.',
            'pixel_tracker_title.unique' => 'The email tracker title has already been taken.',
            'pixel_email.required' => 'The email is required.',
            'pixel_subject.required' => 'The subject  is required.'
        ];
        $validator = Validator::make( $filter, [
                    'auth_user_id' => 'required',
                    'pixel_tracker_title' => 'required|unique:pixel_trackers,name|max:50|alpha_dash',
                    'pixel_email' => 'required',
                    'pixel_subject' => 'required',
                ],$messages);

        if ( $validator->fails() )
        {
            return response()->json( ['flag' => 0, 'message' => $validator->errors() ] );
        }
        if($filter['timezone'] != ''){
            $created_at = Carbon::now($filter['timezone'])->toDateTimeString();
        }else{
            $created_at = Carbon::now()->toDateTimeString();
        }
        $pixel_tracker_created = PixelTracker::create( [
                    'name' => $filter[ 'pixel_tracker_title' ],
                    'short_name' => $filter[ 'pixel_tracker_title' ],
                    'pixel_slug' => $this->generate_pixel_slug(),
                    'is_locked' => 0,
                    'is_active' => 1,
                    'is_deleted' => 0,
                    'is_email_campaign' => 0,
                    'owner_id' => $filter[ 'auth_user_id' ],
                    'is_dynamically_created' => 0,
                    'redirect_url' => '',
                    'pixel_email' => $filter['pixel_email'],
                    'pixel_subject' => $filter['pixel_subject'],
                    'created_at'=>$created_at,
                ] );
        if ( $pixel_tracker_created )
        {
            \App\Analytic::create( [
                'pixel_tracker_id' => $pixel_tracker_created->id,
                'user_id' => $filter[ 'auth_user_id' ]
            ] );
            $pixel_script = $this->get_tracking_script($pixel_tracker_created->id);
            $response_data =  array(
                    'pixel_id' => $pixel_tracker_created->id,
                    'auth_user_id' => $pixel_tracker_created->owner_id,
                    'pixel_title' => $pixel_tracker_created->name,
                    'pixel_script' => $pixel_script,
             );
            return response()->json( ['flag' => 1, 'message' => 'Email Tracker added successfully!', 'data' => $response_data ] );
        }
        else
        {
            return response()->json( ['flag' => 0, 'message' => 'Unable to created Email Tracker at this moment!' ] );
        } 
    }
    public function get_tracking_script( $id )
    {
        $pixel_tracker_found = PixelTracker::select( 'name', 'pixel_slug', 'owner_id' )->where( 'id', $id )->working()->first();
        //dd($pixel_tracker_found);
        if ( $pixel_tracker_found )
        {
                $url = config( 'app.url' ) . 'admin/track/' . $pixel_tracker_found->pixel_slug;
                //$url = config( 'app.url' ) . 'track/' . $pixel_tracker_found->pixel_slug;
                $script = base64_encode( "&lt;style data-ignore-inlining&gt;@media print{ #_t { background-image: url('" . $url . "?p');}} div.OutlookMessageHeader {background-image:url('" . $url . "?f')} table.moz-email-headers-table {background-image:url('" . $url . "?f')} blockquote #_t {background-image:url('" . $url . "?f')} #MailContainerBody #_t {background-image:url('" . $url . "?f')}&lt;/style&gt;&lt;div id='_t'&gt;&lt;/div&gt;&lt;img src='" . $url . "' width='1' height='1' border='0' /&gt;" );
                return $script;
            
        }
        else
        {
            return '';
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
    public function email_subject(Request $request )
    {
         $filter = $request->all();
        $validator = Validator::make( $filter, [
                    'pixel_id' => 'required',
                    'pixel_email' => 'required',
                    'pixel_subject' => 'required'
                ]);

        if ( $validator->fails() )
        {
            return response()->json( ['flag' => 0, 'message' => $validator->errors() ] );
        }
        $pixel = PixelTracker::findOrFail($filter['pixel_id']);
        
        if ($pixel)
        {
            $pixel->pixel_email = $filter['pixel_email'];
            $pixel->pixel_subject = $filter['pixel_subject'];
            if($pixel->save()){
                return response()->json( ['flag' => 1, 'message' => 'Email Tracker update successfully!']);
            }else{
                return response()->json( ['flag' => 0, 'message' => 'Unable to update Email Tracker at this moment!' ] );
            }
        }
        else
        {
            return response()->json( ['flag' => 0, 'message' => 'Unable to update Email Tracker at this moment!' ] );
        } 
    }
     public function get_user_using_email(Request $request )
    {
        $filter = $request->all();
        $validator = Validator::make( $filter, [
                    'user_email' => 'required',                   
                ]);

        if ( $validator->fails() )
        {
            return response()->json( ['flag' => 0, 'message' => $validator->errors() ] );
        }
        $getUser = User::where('email',$filter['user_email'])->first();        
        if ($getUser)
        {           
            return response()->json( ['flag' => 1,'data'=>$getUser, 'message' => 'User detail.']);           
        }
        else
        {
            return response()->json( ['flag' => 0,'data'=>$getUser, 'message' => 'Unable to get user detail please login with valid email address!' ] );
        } 
    }

     /**
     * @Function Name : loginCheck
     * @author        : Rajesh R. Rajesh
     * @createon      : 02 May, 2018
     * @description   : Use the following function to check user login or not
     */

    //Use the following function to check user login or not
    public function loginCheck()
    {
        if(Auth::user())
        {
           return response()->json( ['login' => true, 'button' => true ] ); 
        }else{
            return response()->json( ['login' => false, 'button' => false] );
        }
    }


    /**
     * @Function Name : loginExtension
     * @author        : Rajesh R. Rajesh
     * @createon      : 02 May, 2018
     * @description   : Use the following function to log in using google extension
     */
    
    public function loginExtension(Request $request)
    {   
        dd(Carbon::now($request->timezone)->toDateTimeString());
        try
        {
            $filter = $request->all();
            $messages = [
                'EmailID.required' => 'The Email id is required.',
                'Password.required' => 'The password is required.'            
            ];
            $validator = Validator::make( $filter, [
                        'EmailID' => 'required',
                        'Password' => 'required'
                    ],$messages);

            if ( $validator->fails() )
            {
                return response()->json( ['login'=>false, 'flag' => 0, 'message' => $validator->errors() ] );
            }
             $userExist = User::where('email',$request->EmailID)->first();
             
             if(!$userExist)
             {
                return response()->json( ['login'=>false, 'flag' => 0, 'message' => 'Username and password are invalid.' , 'token'=>null ] );   
             }
             if(\Hash::check($request->Password, $userExist->password)) {
                $addonceToken = base64_encode($userExist->id.'=='.date('Ymd').'=='.$userExist->email.'=='.rand(1111,9999));
                $userExist->token = $addonceToken;
                $userExist->save();
                if($userExist){
                   return response()->json( ['login'=>true, 'flag' => 1, 'message' => null, 'token'=>$userExist->token] );
                }else{
                    return response()->json( ['login'=>false, 'flag' => 0, 'message' => 'Something went wrong.' , 'token'=>null ] );  
                }

             }else{
                $userExist->token = null;
                $userExist->save();
                return response()->json( ['login'=>false, 'flag' => 0, 'message' => 'Username and password are invalid.' , 'token'=>$userExist->token ] );   
             }
        }
        catch(Exception $e) {
          echo 'Message: ' .$e->getMessage();
           return response()->json( ['login'=>false, 'flag' => 0, 'message' => $e->getMessage() ] );   
        }
    }
}
