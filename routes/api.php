<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ApiController; 
use App\Http\Controllers\OperatorController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
// Route::get('/',function(){
//     return response()->json([
//         'status' =>false,
//         'message' =>'akses denied'

//     ],401);
// })->name('login');
// Route::get('/skm', [ApiController::class, 'skm'])->middleware('auth:sanctum');
// Route::get('/nonskm', [ApiController::class, 'nskm']);
// Route::get('/detailskm/{id}', [ApiController::class, 'detailskm']);
// //hasilsurvei
// Route::get('/hasilsurvei/{thn?}/{sem?}', [ApiController::class, 'hasilsurvei']);
// //api login 21 juli 2025
// Route::post('registerOP', [OperatorController::class,'registerOP']);
// Route::post('loginOP', [OperatorController::class,'loginOP']);