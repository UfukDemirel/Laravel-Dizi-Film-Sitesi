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
Route::get('/search',[App\Http\Controllers\Controller::class,"search"])->name('search');
Route::get('puan/{slug}',[App\Http\Controllers\Controller::class,"puan"])->name('puan');
Route::get('dizipuan/{slug}',[App\Http\Controllers\Controller::class,"dizipuan"])->name('dizipuan');
Route::post('dizipuanpost',[\App\Http\Controllers\Controller::class,"dizipuanpost"])->name('dizipuanpost');

Route::get('welcome',[\App\Http\Controllers\Controller::class,"welcome"])->name('welcome');

Route::get('filmler/{slug}',[\App\Http\Controllers\Controller::class,"movieCategory"])->name('film.kategori');
Route::get('diziler/{slug}',[\App\Http\Controllers\Controller::class,"serieCategory"])->name('dizi.kategori');
Route::get('izle/{movie_slug}',[\App\Http\Controllers\Controller::class,"izle"])->name('izle');
Route::post('puanpost',[\App\Http\Controllers\Controller::class,"puanpost"])->name('puanpost');
Route::get('dizizle/{series_slug}',[\App\Http\Controllers\Controller::class,"dizizle"])->name('dizizle');

Route::prefix('/')->middleware('isPeople')->group(function (){
    Route::get('/index',[App\Http\Controllers\PanelController::class,"index"])->name('index');
    Route::get('/logout',[App\Http\Controllers\LoginController::class,"logout"])->name('logout');
});

Route::prefix('/')->middleware('isLogout')->group(function (){
    Route::get('/login',[\App\Http\Controllers\LoginController::class,"login"])->name('login');
    Route::post('/loginpost',[App\Http\Controllers\LoginController::class,"loginpost"])->name('loginpost');
});

Route::get('filmler',[\App\Http\Controllers\PanelController::class,"filmler"])->name('filmler');
Route::get('filmler/edit/{id}',[\App\Http\Controllers\PanelController::class,"edit"])->name('filmler.edit');
Route::post('filmler/update/{id}',[\App\Http\Controllers\PanelController::class,"update"])->name('filmler.update');

Route::get('diziler',[\App\Http\Controllers\DiziController::class,"diziler"])->name('diziler');
Route::get('diziler/edit/{id}',[\App\Http\Controllers\DiziController::class,"edit"])->name('diziler.edit');
Route::post('diziler/update/{id}',[\App\Http\Controllers\DiziController::class,"update"])->name('diziler.update');
