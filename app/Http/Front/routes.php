<?php

/*
|--------------------------------------------------------------------------
| Routes File
|--------------------------------------------------------------------------
|
| Here is where you will register all of the routes in an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::group(['middleware' => ['web', 'CMSInstalled']], function () {

    Route::get('/', function () {
        return view('welcome');
    });

    Route::get('/home', '\App\Http\Front\Controllers\HomeController@index');
});
