<?php
#---------------------------------------------------🙏🔱देवा श्री गणेशा 🔱🙏---------------------------”
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserStores;
use App\Http\Controllers\PhonePeController;


Route::get('/user', function (Request $request) { return $request->user();})->middleware('auth:sanctum');


Route::controller(UserStores::class)->group(function() {
    Route::get('/getscheduledcam', 'getscheduledcam')->name('getscheduledcam');
});


Route::post('phonepe/response', [PhonePeController::class, 'response'])->name('response');

