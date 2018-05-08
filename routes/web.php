<?php

/*
  |--------------------------------------------------------------------------
  | Web Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register web routes for your application. These
  | routes are loaded by the RouteServiceProvider within a group which
  | contains the "web" middleware group. Now create something great!
  |
 */

Route::get( '/', function ()
{
    return view( 'welcome' );
} );

Auth::routes();

Route::get( '/home', 'HomeController@index' )->name( 'home' );


Route::group( ['prefix' => 'admin' ], function ()
{
    Voyager::routes();
    Route::get( 'emailtracker/list', 'PixelTrackerController@index' )->name( 'list_pixel_trackers' );
    Route::post( 'pixeltracker/add', 'PixelTrackerController@add_pixel_tracker' );
    Route::post( 'pixeltracker/edit', 'PixelTrackerController@edit_pixel_tracker' );
    Route::get( 'pixeltracker/get/{id}/details', 'PixelTrackerController@get_details' );
    Route::get( 'pixeltracker/get/{id}/script', 'PixelTrackerController@get_tracking_script' );
    Route::patch( 'pixeltracker/toggle/{id}/{status}', 'PixelTrackerController@toggle_status' );
    Route::delete( 'pixeltracker/{id}/delete', 'PixelTrackerController@destory' );
   Route::get( 'pixeltracker/{id}/statistics', 'PixelTrackerController@show_statistics' )->name( 'statistics' );
    Route::get( 'track/{id}', 'TrackingController@track_now' );
});
