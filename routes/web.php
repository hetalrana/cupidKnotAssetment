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

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


//Auth::routes();

Route::post('/signup', [App\Http\Controllers\UserController::class, 'store'])->name('signup');
Route::post('/signin', [App\Http\Controllers\UserController::class, 'sign_in'])->name('signin');
Route::any('/signout', [App\Http\Controllers\UserController::class, 'logout'])->middleware(['auth'])->name('signout');
Route::any('/get/match/users',[App\Http\Controllers\UserController::class, 'matched_users'])->middleware(['auth'])->name('match_users');

Route::group(['prefix' => 'admin', 'namespace' => 'Admin'], function () {
    Route::get('/login', [App\Http\Controllers\Admin\AdminAuthController::class, 'getLogin'])->name('adminLogin');
    Route::post('/login', [App\Http\Controllers\Admin\AdminAuthController::class, 'postLogin'])->name('adminLoginPost');

    Route::group(['middleware' => 'adminauth'], function () {
        Route::get('/', function () {
            return view('admin.auth.dashboard');
        })->name('adminDashboard');
        Route::any('/logout', [App\Http\Controllers\Admin\AdminAuthController::class, 'adminLogout'])->name('adminLogout');
        Route::get('/users', [App\Http\Controllers\Admin\AdminAuthController::class, 'getUsers'])->name('getUsers');
        Route::post('/users',[App\Http\Controllers\Admin\AdminAuthController::class,'getUserList'])->name('getUserList');
    });
});