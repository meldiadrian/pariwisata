<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\FrontendController;
use App\Http\Controllers\DashboardController;

use App\Models\News;

Route::get('/sitemap.xml', function () {
    $news = News::where('status', 'publish')->latest()->get();
    return response()->view('sitemap', compact('news'))->header('Content-Type', 'text/xml');
})->middleware('page.cache:3600');

Route::middleware('page.cache')->group(function () {
    Route::get('/', [FrontendController::class, 'index'])->name('home')->middleware('page.cache:300');
    Route::get('/news/{slug}', [FrontendController::class, 'show'])->name('news.show')->middleware('page.cache:300');
    Route::get('/category/{slug}', [FrontendController::class, 'category'])->name('news.category')->middleware('page.cache:600');
    Route::get('/page/{slug}', [FrontendController::class, 'page'])->name('page.show')->middleware('page.cache:3600');
});

Route::get('/user/dashboard', [DashboardController::class, 'index'])->name('dashboard');

// Block direct access to livewire-tmp folder
Route::any('storage/livewire-tmp/{path?}', function () {
    abort(403, 'Access denied');
})->where('path', '.*');

// Fallback route so that web middleware (like maintenance mode) runs on 404s
Route::fallback(function () {
    abort(404);
});
