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



Route::get('/', [App\Http\Controllers\MainController::class, 'previewImgList'])->name('portfolio');

Auth::routes();

Route::get('/logout', 'App\Http\Controllers\Auth\LoginController::class@logout');

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/create', [App\Http\Controllers\PortfolioController::class, 'create'])->name('portfolio.create');
Route::post('/create', [App\Http\Controllers\PortfolioController::class, 'store']);
Route::get('list', [App\Http\Controllers\PortfolioController::class, 'show'])->name('portfolio.list');
Route::get('delete/{id}', [App\Http\Controllers\PortfolioController::class, 'delete']);
Route::get('edit/{id}', [App\Http\Controllers\PortfolioController::class, 'showData']);
Route::get('detail/{id}', [App\Http\Controllers\MainController::class, 'showData']);
Route::post('/edit', [App\Http\Controllers\PortfolioController::class, 'update']);

