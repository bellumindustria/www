<?php

//Route::group(['middleware' => 'web', 'prefix' => 'themes', 'namespace' => 'Modules\Themes\Http\Controllers'], function()
//{
//	Route::get('/', 'ThemesController@index');
//});

Route::group(['middleware' => ['web', 'CMSInstalled', 'auth', 'role:admin'], 'prefix' => 'admin', 'namespace' => 'Modules\Themes\Http\Controllers'], function()
{
	Route::resource('themes', 'AdminThemesController');
});
