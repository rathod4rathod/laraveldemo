<?php

namespace App\Libraries;

use GeoIp2\Database\Reader;
//use GeoIp2\WebService\Client;
use GeoIp2\Exception\AddressNotFoundException;

/**
 * Description of GeoLocation
 *
 * @author deepakysapkal
 */
class Common
{

    public function get_visitor_ip()
    {
        $ip_keys = array( 'HTTP_CF_CONNECTING_IP', 'HTTP_X_REAL_IP', 'HTTP_CLIENT_IP', 'HTTP_X_FORWARDED_FOR', 'HTTP_X_FORWARDED', 'HTTP_X_CLUSTER_CLIENT_IP', 'HTTP_FORWARDED_FOR', 'HTTP_FORWARDED', 'REMOTE_ADDR' );

        foreach ( $ip_keys as $ip_key )
        {
            if ( array_key_exists( $ip_key, $_SERVER ) === true )
            {
                foreach ( explode( ',', $_SERVER[ $ip_key ] ) as $ip )
                {
                    $ip = trim( $ip );

                    if ( $this->validate_ip( $ip ) )
                    {
                        return $ip;
                    }
                }
            }
        }

        return isset( $_SERVER[ 'REMOTE_ADDR' ] ) ? $_SERVER[ 'REMOTE_ADDR' ] : false;
    }

    function validate_ip( $ip )
    {
        if ( filter_var( $ip, FILTER_VALIDATE_IP, FILTER_FLAG_IPV4 | FILTER_FLAG_IPV6 ) === false )
        {
            return false;
        }
        return true;
    }

    public function getCountryDetails( $ip )
    {
        $file_path = resource_path( 'assets/geo/geo.mmdb' );
        $reader = new Reader( $file_path );
        try
        {
            $record = $reader->city( $ip );
            $city = $record->city->names[ 'en' ];
            $country_name = $record->country->names[ 'en' ];
            $country[ 'city' ][ 'name' ] = $city != '' ? $city : 'unknown';
            $country[ 'country' ][ 'name' ] = $country_name != '' ? $country_name : 'unknown';
            $country[ 'country' ][ 'iso' ] = $record->country->isoCode;
            $country[ 'timezone' ] = $record->location->timeZone;
            $country[ 'state' ][ 'name' ] = isset( $record->subdivisions[ 0 ]->names[ 'en' ] ) ? $record->subdivisions[ 0 ]->names[ 'en' ] : "unknown";
            $country[ 'state' ][ 'iso' ] = isset( $record->mostSpecificSubdivision->isoCode ) ? $record->mostSpecificSubdivision->isoCode : "unknown";
            $country[ 'postal_code' ] = isset( $record->postal->code ) ? $record->postal->code : 'unknown';
            $country[ 'latitude' ] = isset( $record->location->latitude ) ? $record->location->latitude : '';
            $country[ 'longitude' ] = isset( $record->location->longitude ) ? $record->location->longitude : '';
        }
        catch ( \GeoIp2\Exception\AddressNotFoundException $e )
        {
            $country[ 'country' ][ 'name' ] = $country[ 'country' ][ 'iso' ] = $country[ 'timezone' ] = $country[ 'state' ][ 'name' ] = $country[ 'state' ][ 'iso' ] = $country[ 'city' ][ 'name' ] = $country[ 'postal_code' ] = 'unknown';
            $country[ 'latitude' ] = '';
            $country[ 'longitude' ] = '';
        }
        catch ( Exception $e )
        {
            $country[ 'country' ][ 'name' ] = $country[ 'country' ][ 'iso' ] = $country[ 'timezone' ] = $country[ 'state' ][ 'name' ] = $country[ 'state' ][ 'iso' ] = $country[ 'city' ][ 'name' ] = $country[ 'postal_code' ] = 'unknown';
            $country[ 'latitude' ] = '';
            $country[ 'longitude' ] = '';
        }
        return $country;
    }

    public function rest_api_curl_call( $rest_call_endpoint, $rest_call_args )
    {
        $curl_url = $rest_call_endpoint;
        $params = $rest_call_args[ 'body' ];
        $ch = curl_init();
        curl_setopt( $ch, CURLOPT_URL, $curl_url );
        curl_setopt( $ch, CURLOPT_POST, count( $params ) );
        curl_setopt( $ch, CURLOPT_POSTFIELDS, $params );
        curl_setopt( $ch, CURLOPT_RETURNTRANSFER, 1 );

        $response = curl_exec( $ch );
        $status_code = curl_getinfo( $ch, CURLINFO_HTTP_CODE );
        $errors = curl_error( $ch );
        curl_close( $ch );
        if ( $status_code == 200 )
        {
            return $response;
        }
        else
        {
            return json_encode( ['message' => 'Something went wrong.', 'flag' => 0, 'code' => $status_code, 'error' => $errors ], true );
        }
    }

}
