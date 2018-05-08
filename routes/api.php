<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

 Route::middleware('auth:api')->get('/user', function (Request $request) {
     //return $request->user();
});
Route::get('test',function(){
	return response([1,2,3,4],200);   
});
Route::post('emailtracker/addnew','API\PixelTrackerController@save');
Route::post('pixeltracker/email_subject','API\PixelTrackerController@email_subject');
Route::post('pixeltracker/getUser','API\PixelTrackerController@get_user_using_email');
Route::get('loginCheck','API\PixelTrackerController@loginCheck');
Route::post('loginExtension','API\PixelTrackerController@loginExtension');



