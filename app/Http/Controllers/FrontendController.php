<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\News;
use App\Models\Category;
use App\Models\Setting;

class FrontendController extends Controller
{
    public function index()
    {
        $setting = Setting::first();
        $categories = Category::withCount('news')->get();
        $headlines = News::where('is_headline', true)->where('status', 'publish')->latest()->take(5)->get();
        $trending = News::where('is_trending', true)->where('status', 'publish')->latest()->take(5)->get();
        $breaking = News::where('is_breaking', true)->where('status', 'publish')->latest()->first();
        $latestNews = News::where('status', 'publish')->latest()->paginate(10);

        return view('welcome', compact('setting', 'categories', 'headlines', 'trending', 'breaking', 'latestNews'));
    }

    public function show($slug)
    {
        $setting = Setting::first();
        $categories = Category::withCount('news')->get();
        $breaking = News::where('is_breaking', true)->where('status', 'publish')->latest()->first();
        $news = News::where('slug', $slug)->firstOrFail();
        $news->increment('views');
        $related = News::where('category_id', $news->category_id)->where('id', '!=', $news->id)->take(3)->get();

        return view('news.show', compact('setting', 'categories', 'breaking', 'news', 'related'));
    }

    public function category($slug)
    {
        $setting = Setting::first();
        $categories = Category::withCount('news')->get();
        $breaking = News::where('is_breaking', true)->where('status', 'publish')->latest()->first();
        $category = Category::where('slug', $slug)->firstOrFail();
        $news = News::where('category_id', $category->id)->where('status', 'publish')->latest()->paginate(10);

        return view('news.category', compact('setting', 'categories', 'breaking', 'category', 'news'));
    }
}
