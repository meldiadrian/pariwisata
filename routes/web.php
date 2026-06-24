<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\FrontendController;

use App\Models\News;

Route::get('/sitemap.xml', function () {
    $news = News::where('status', 'publish')->latest()->get();
    return response()->view('sitemap', compact('news'))->header('Content-Type', 'text/xml');
});

Route::get('/', [FrontendController::class, 'index'])->name('home');
Route::get('/news/{slug}', [FrontendController::class, 'show'])->name('news.show');
Route::get('/category/{slug}', [FrontendController::class, 'category'])->name('news.category');
