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

use Illuminate\Support\Facades\Route;
use Modules\Services\Http\Controllers\ServicesController;

Route::prefix('services')->group(function() {
    Route::get('/', 'ServicesController@index')->name('frontend.services');
    Route::get('/details/{id}', 'ServicesController@details')->name('frontend.service-details');
});

Route::group([
    'prefix' => 'admin',
    'middleware' => ['auth.routes'],
], function () {
    Route::controller(ServicesController::class)->prefix('services')->group(function () {
        Route::get('/',                 'servicesList')->name('services.index');
        Route::get('/create',           'create')->name('services.create');
        Route::post('/store',           'store')->name('services.store');
        Route::get('/edit/{id}',        'edit')->name('services.edit');
        Route::put('/update/{id}',      'update')->name('services.update');
        Route::get('/delete/{id}',      'destroy')->name('services.destroy');
    });
});
