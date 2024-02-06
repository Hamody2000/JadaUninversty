<?php

use Illuminate\Support\Facades\Route;
use Modules\ZoomMeeting\Http\Controllers\ZoomMeetingController;

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

Route::prefix('admin')->middleware(['auth.routes'])->group(function () {

    Route::controller(ZoomMeetingController::class)->prefix('live-class-setting')->group(function () {
        Route::get('/zoom-meetings', 'index')->name('zoom_live_classes.index');//->middleware('PermissionCheck:zoom_live_class_settings_update');
        
        Route::get('/create-zoom-meeting', 'createZoomMeeting')->name('zoom_live_classes.create');//->middleware('PermissionCheck:zoom_live_class_settings_update');
        Route::post('/create-zoom-meeting', 'store')->name('zoom_live_classes.store');//->middleware('PermissionCheck:zoom_live_class_settings_update');
        
        Route::get('/zoom-update', 'zoomSettingsEdit')->name('zoom_live_classes_settings.edite')->middleware('PermissionCheck:zoom_live_class_settings_update');
        Route::post('/zoom-update', 'zoomUpdate')->name('zoom_live_class_settings.update')->middleware('PermissionCheck:zoom_live_class_settings_update');
    });
});
// instructor routes
Route::prefix('instructor')->middleware(['instructor', 'auth', 'verified'])->group(function () {
    Route::controller(ZoomMeetingController::class)->prefix('live-class-setting')->group(function () {
        Route::post('/zoom-update', 'zoomUpdate')->name('frontend_zoom_live_class_settings.update');
    });
});
// Instructor routes
// Organization routes
Route::prefix('organization')->middleware(['organization', 'auth', 'verified'])->group(function () {
    Route::controller(ZoomMeetingController::class)->prefix('live-class-setting')->group(function () {
        Route::post('/zoom-update', 'zoomUpdate')->name('organization.frontend_zoom_live_class_settings.update');
    });
});
// Organization routes
