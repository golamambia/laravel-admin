<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('auth.login');
});
Route::get('/home', function () {
    return view('auth.login');
});
Route::get('/register', function () {
    return view('auth.login');
});
Auth::routes();
Route::get('/', 'admin\DashboardController@index');
Route::get('/home', 'admin\DashboardController@index');
//Route::get('/home', 'HomeController@index')->name('home');
Route::get('admin/home', 'admin\DashboardController@index');
Route::get('admin', 'admin\DashboardController@index');
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Route::get('admin/admin-setting', 'admin\DashboardController@admin_setting')->name('admin-setting');
Route::post('admin/update-admin-details', 'admin\DashboardController@update_admin_details');
Route::post('admin/update-admin-password', 'admin\DashboardController@update_admin_password');
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Route::get('admin/service-add', 'admin\ServiceController@index');
Route::post('admin/service-add-post', 'admin\ServiceController@service_add_post');
Route::get('admin/service-list', 'admin\ServiceController@service_list_view');
Route::get('admin/service-edit-view/{id}', 'admin\ServiceController@service_edit_view')->where('id', '[0-9]+');
Route::post('admin/service-update-post', 'admin\ServiceController@service_update_post');
Route::get('admin/service-remove/{id}', 'admin\ServiceController@service_destroy')->where('id', '[0-9]+');
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
