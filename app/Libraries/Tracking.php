<?php

namespace App\Libraries;

use DB;
use Log;
use App\Analytic;
use App\BrowserReport;
use App\LocationReport;
use App\AnalyticDetail;
use App\Libraries\Common;
use Jenssegers\Agent\Agent;
use App\ContactAnalyticDetails;
use App\ContactAnalyticMapping;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Tracking
{

    public $common;
    public $udger;

    public function __construct()
    {
        $this->common = new Common();
    }

    public function update_stat( $data )
    {
        $location = $this->common->getCountryDetails( $data[ 'ip_address' ] );
        $data[ 'country' ] = addslashes( $location[ 'country' ][ 'name' ] );
        $data[ 'country_iso' ] = $location[ 'country' ][ 'iso' ];
        $data[ 'state' ] = addslashes( $location[ 'state' ][ 'name' ] );
        $data[ 'state_iso' ] = $location[ 'country' ][ 'iso' ] . '-' . $location[ 'state' ][ 'iso' ];
        $data[ 'city' ] = addslashes( $location[ 'city' ][ 'name' ] );
        $data[ 'postal_code' ] = $location[ 'postal_code' ];
        $data[ 'timezone' ] = $location[ 'timezone' ];
        $data[ 'latitude' ] = $location[ 'latitude' ] != '' ? $location[ 'latitude' ] : '0.0';
        $data[ 'longitude' ] = $location[ 'longitude' ] != '' ? $location[ 'longitude' ] : '0.0';
        $agent = new Agent();
        $browser = $agent->browser();
        $browser_version = $agent->version( $browser );
        $data[ 'browser' ] = $browser;
        $data[ 'browser_version' ] = $browser_version;

        $platform = $agent->platform();
        $platform_version = $agent->version( $platform );

        $data[ 'operating_system' ] = $platform;
        $data[ 'os_version' ] = !$platform_version ? '' : $platform_version;
        $data[ 'open_duration' ] = 0;

        if ( $agent->isDesktop() )
        {
            $data[ 'reading_environment' ] = 'desktop';
        }
        else if ( $agent->isPhone() )
        {
            $data[ 'reading_environment' ] = 'mobile';
        }
        else
        {
            $data[ 'reading_environment' ] = 'other';
        }

        return $this->execute_update( $data );
    }

    private function execute_update( $filter )
    {
        $return_data[ 'flag' ] = 0;
        $return_data[ 'message' ] = '';
        $analytics = Analytic::select( 'id' )->where( [ 'pixel_tracker_id' => $filter[ 'pixel_id' ] ] )->first();        
        if ( $analytics )
        {
            $filter[ 'analytic_id' ] = $analytics->id;
            try
            {
                DB::beginTransaction();
                if ( isset( $filter[ 'email' ] ) && $filter[ 'email' ] != '' )
                {
                    $contact_data = ContactAnalyticDetails::select()->where( [ 'email' => $filter[ 'email' ] ] )->first();
                }
                else if ( isset( $filter[ 'client_id' ] ) && $filter[ 'client_id' ] != '' )
                {
                    $contact_data = ContactAnalyticDetails::select()->where( [ 'client_id' => $filter[ 'client_id' ] ] )->first();
                }
                else
                {
                    $contact_data = ContactAnalyticDetails::select()->where( [ 'ip_address' => $filter[ 'ip_address' ],
                                'ua_string' => $filter[ 'ua_string' ] ] )->first();
                }
                if ( !isset( $contact_data ) || !$contact_data )
                {
                    $contact_data = ContactAnalyticDetails::create( [ 'ip_address' => $filter[ 'ip_address' ],
                                'email' => $filter[ 'email' ],
                                'client_id' => isset( $filter[ 'client_id' ] ) ? $filter[ 'client_id' ] : '',
                                'ua_string' => $filter[ 'ua_string' ],
                                'browser' => $filter[ 'browser' ],
                                'device' => $filter[ 'reading_environment' ]
                            ] );
                }
                $contact_map_data = ContactAnalyticMapping::select( [ 'id', 'open_count', 'click_count', 'print_count', 'forward_count' ] )
                        ->where( ['analytic_id' => $analytics->id, 'contact_id' => $contact_data->id ] )
                        ->first();
                if ( $contact_map_data )
                {
                    if ( $filter[ 'status' ] == 'open' )
                    {
                        $contact_map_data->open_count = $contact_map_data->open_count + 1;
                        $contact_map_data->save();
                    }
                    else if ( $filter[ 'status' ] == 'print' )
                    {
                        $contact_map_data->print_count = $contact_map_data->print_count + 1;
                        $contact_map_data->save();
                    }
                    else if ( $filter[ 'status' ] == 'forward' )
                    {
                        $contact_map_data->forward_count = $contact_map_data->forward_count + 1;
                        $contact_map_data->save();
                    }
                    else if ( $filter[ 'status' ] == 'click' )
                    {
                        $contact_map_data->click_count = $contact_map_data->click_count + 1;
                        $contact_map_data->save();
                    }
                    else
                    {
                        $contact_map_data->open_count = $contact_map_data->open_count + 1;
                        $contact_map_data->save();
                    }
                }
                else
                {
                    if ( $filter[ 'status' ] == 'open' )
                    {
                        ContactAnalyticMapping::create( ['contact_id' => $contact_data->id, 'analytic_id' => $analytics->id, 'conversion_id' => null, 'open_count' => 1, 'click_count' => 0, 'print_count' => 0, 'forward_count' => 0 ] );
                    }
                    else if ( $filter[ 'status' ] == 'print' )
                    {
                        ContactAnalyticMapping::create( ['contact_id' => $contact_data->id, 'analytic_id' => $analytics->id, 'conversion_id' => null, 'open_count' => 1, 'click_count' => 0, 'print_count' => 1, 'forward_count' => 0 ] );
                    }
                    else if ( $filter[ 'status' ] == 'forward' )
                    {
                        ContactAnalyticMapping::create( ['contact_id' => $contact_data->id, 'analytic_id' => $analytics->id, 'conversion_id' => null, 'open_count' => 1, 'click_count' => 0, 'print_count' => 0, 'forward_count' => 1 ] );
                    }
                    else if ( $filter[ 'status' ] == 'click' )
                    {
                        ContactAnalyticMapping::create( ['contact_id' => $contact_data->id, 'analytic_id' => $analytics->id, 'conversion_id' => null, 'open_count' => 1, 'click_count' => 1, 'print_count' => 0, 'forward_count' => 0 ] );
                    }
                    else
                    {
                        ContactAnalyticMapping::create( ['contact_id' => $contact_data->id, 'analytic_id' => $analytics->id, 'conversion_id' => null, 'open_count' => 1, 'click_count' => 0, 'print_count' => 0, 'forward_count' => 0 ] );
                    }
                }
                $filter[ 'contact_id' ] = $contact_data->id;
                $analytics_details = AnalyticDetail::create( $filter );
                //Update location report
                $loc_report = LocationReport::select( 'id', 'country', 'country_iso', 'state', 'state_iso', 'total' )
                                ->where( ['analytic_id' => $analytics->id, 'country' => $filter[ 'country' ], 'state' => $filter[ 'state' ] ] )->first();
                if ( $loc_report )
                {
                    $loc_report->total = $loc_report->total + 1;
                    $loc_report->save();
                }
                else
                {
                    $data[ 'analytic_id' ] = $analytics->id;
                    $data[ 'country' ] = $filter[ 'country' ];
                    $data[ 'country_iso' ] = $filter[ 'country_iso' ];
                    $data[ 'state' ] = $filter[ 'state' ];
                    $data[ 'state_iso' ] = $filter[ 'state_iso' ];
                    $data[ 'total' ] = 1;
                    LocationReport::create( $data );
                }
                //update browser report
                $browser_report = BrowserReport::select( 'id', 'browser', 'total' )
                                ->where( ['analytic_id' => $analytics->id, 'browser' => $filter[ 'browser' ] ] )->first();
                if ( $browser_report )
                {
                    $browser_report->total = $browser_report->total + 1;
                    $browser_report->save();
                }
                else
                {
                    $data[ 'analytic_id' ] = $analytics->id;
                    $data[ 'browser' ] = $filter[ 'browser' ];
                    $data[ 'total' ] = 1;
                    BrowserReport::create( $data );
                }
                DB::commit();
                $return_data[ 'flag' ] = 1;
                $return_data[ 'message' ] = 'success';
                $return_data[ 'data' ] = ['ad_id' => $analytics_details->id ];
                return $return_data;
            }
            catch ( Exception $ex )
            {
                DB::rollBack();
                Log::critical( 'log from here', ['st' => 'create' ] );
                $return_data[ 'message' ] = 'something wrong';
                return $return_data;
            }
        }
        else
        {
            $return_data[ 'message' ] = 'No data found';
            return $return_data;
        }
    }

    public function update_read( $data )
    {
        AnalyticDetail::where( 'id', $data[ 'ad_id' ] )->update( ['engagement_type' => $data[ 'type' ], 'open_duration' => $data[ 'open_duration' ] ] );
    }

}
