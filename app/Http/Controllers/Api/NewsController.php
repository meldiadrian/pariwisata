<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\News;
use App\Models\Category;
use App\Http\Resources\NewsResource;
use App\Http\Resources\CategoryResource;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index()
    {
        $news = News::with(['category', 'user'])->where('status', 'publish')->latest()->paginate(10);
        return NewsResource::collection($news);
    }

    public function categories()
    {
        return CategoryResource::collection(Category::all());
    }

    public function trending()
    {
        $news = News::with(['category', 'user'])->where('is_trending', true)->where('status', 'publish')->latest()->take(5)->get();
        return NewsResource::collection($news);
    }

    public function headline()
    {
        $news = News::with(['category', 'user'])->where('is_headline', true)->where('status', 'publish')->latest()->take(5)->get();
        return NewsResource::collection($news);
    }

    public function search(Request $request)
    {
        $query = $request->get('q');
        $news = News::with(['category', 'user'])
            ->where('status', 'publish')
            ->where('title', 'LIKE', "%$query%")
            ->latest()
            ->paginate(10);
        return NewsResource::collection($news);
    }
}
