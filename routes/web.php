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
    return view('portfolio');
});

Auth::routes();

Route::get('/logout', 'App\Http\Controllers\Auth\LoginController::class@logout');


Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/portfolioupload', [App\Http\Controllers\PortfolioController::class, 'index'])->name('portfolioupload');
Route::get('/create', [App\Http\Controllers\PortfolioController::class, 'create'])->name('portfolio.create');
Route::post('/create', [App\Http\Controllers\PortfolioController::class, 'store'])->name('portfolio.store');
Route::get('/view', [App\Http\Controllers\PortfolioController::class, 'view'])->name('portfolio.view');