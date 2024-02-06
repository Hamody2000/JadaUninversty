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
use Modules\StartUps\Http\Controllers\StartUpsController;
use Modules\Startups\Http\Controllers\StartupDetailsController;

Route::prefix('startups')->group(function() {
    Route::get('/', 'StartUpsController@index')->name('frontend.startups');
    Route::get('/signup', 'StartUpsController@signup')->name('frontend.startups.signup');
    
    Route::post('/storeSignup', 'StartUpsController@store')->name('frontend.startups.storeSignup');
    
    Route::get('/student', 'StartUpsController@studentStartup')->name('student.startup');
    Route::get('/student/edit/{id}', 'StartUpsController@editStartup')->name('student.startup.edit');
    Route::put('/student/update/{id}', 'StartUpsController@update')->name('student.startup.update');

    // Startup Details Cruds
    Route::get('/details/{id}', 'StartupDetailsController@details')->name('frontend.startups-details');

    Route::get('/{id}/highlights/edit', 'StartupDetailsController@editHighLights')->name('startups.highlights.edit');
    Route::put('/{id}/highlights/update', 'StartupDetailsController@updateHighLights')->name('startups.highlights.update');

    Route::get('/{id}/problem/edit', 'StartupDetailsController@editProblem')->name('startups.problem.edit');
    Route::put('/{id}/problem/update', 'StartupDetailsController@updateProblem')->name('startups.problem.update');

    Route::get('/{id}/solution/edit', 'StartupDetailsController@editSolution')->name('startups.solution.edit');
    Route::put('/{id}/solution/update', 'StartupDetailsController@updateSolution')->name('startups.solution.update');

    Route::get('/{id}/howItWorks/edit', 'StartupDetailsController@editHowItWorks')->name('startups.howItWorks.edit');
    Route::put('/{id}/howItWorks/update', 'StartupDetailsController@updateHowItWorks')->name('startups.howItWorks.update');

    Route::get('/{id}/traction/edit', 'StartupDetailsController@editTraction')->name('startups.traction.edit');
    Route::put('/{id}/traction/update', 'StartupDetailsController@updateTraction')->name('startups.traction.update');

    // Pages That Contains a Separate Tables [listing] Pages
    Route::get('/{id}/impacts', 'StartupDetailsController@impacts')->name('startups.impacts.index');
    Route::post('/{id}/impacts/add', 'StartupDetailsController@addImpact')->name('startups.impacts.add');
    Route::delete('/{startup_id}/impacts/{impact_id}/delete', 'StartupDetailsController@deleteImpact')->name('startups.impacts.delete');

    // Pages That Contains a Separate Tables [listing] Pages
    Route::get('/{id}/partnerships', 'StartupDetailsController@partnerships')->name('startups.partnerships.index');
    Route::post('/{id}/partnerships/add', 'StartupDetailsController@addPartnership')->name('startups.partnerships.add');
    Route::delete('/{startup_id}/partnerships/{partnership_id}/delete', 'StartupDetailsController@deletePartnership')->name('startups.partnerships.delete');

    // Pages That Contains a Separate Tables [listing] Pages
    Route::get('/{id}/teamMembers', 'StartupDetailsController@teamMembers')->name('startups.teamMembers.index');
    Route::post('/{id}/teamMembers/add', 'StartupDetailsController@addTeamMember')->name('startups.teamMembers.add');
    Route::delete('/{startup_id}/teamMembers/{member_id}/delete', 'StartupDetailsController@deleteTeamMember')->name('startups.teamMember.delete');

    // Pages That Contains a Separate Tables [listing] Pages
    Route::get('/{id}/advisors', 'StartupDetailsController@advisors')->name('startups.advisors.index');
    Route::post('/{id}/advisors/add', 'StartupDetailsController@addAdvisor')->name('startups.advisors.add');
    Route::delete('/{startup_id}/advisors/{impact_id}/delete', 'StartupDetailsController@deleteAdvisor')->name('startups.advisor.delete');
});

Route::group([
    'prefix' => 'admin',
    'middleware' => ['auth.routes'],
], function () {
    Route::controller(StartUpsController::class)->prefix('startups')->group(function () {
        Route::get('/',                 'startupsList')->name('startups.index');
        Route::get('/create',           'create')->name('startups.create');
        Route::post('/store',           'store')->name('startups.store');
        Route::get('/edit/{id}',        'edit')->name('startups.edit');
        Route::put('/update/{id}',      'update')->name('startups.update');
        Route::get('/delete/{id}',      'destroy')->name('startups.destroy');
    });
});
