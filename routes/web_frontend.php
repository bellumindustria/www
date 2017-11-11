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

Route::group(['as' => 'frontend.', 'namespace' => 'Frontend'], function ()
{

	/**
	 * Home
	 */
	Route::get('/', ['as' => 'home', 'uses' => 'HomeController@index']);

	/**
	 * Contacts
	 */
	Route::resource('contact', 'ContactController');
});
