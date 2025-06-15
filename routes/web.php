<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SiteController;

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', [SiteController::class,'index']);
Route::get('/detail-news/{id}', [SiteController::class,'detailnews']);