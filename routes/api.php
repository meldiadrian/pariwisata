<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Api\NewsController;

// Public API routes — dibatasi 60 request/menit per IP untuk mencegah scraping
Route::middleware(['throttle:60,1'])->group(function () {
    Route::get('/news', [NewsController::class, 'index']);
    Route::get('/categories', [NewsController::class, 'categories']);
    Route::get('/trending', [NewsController::class, 'trending']);
    Route::get('/headline', [NewsController::class, 'headline']);
    Route::get('/search', [NewsController::class, 'search']);
});

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');
