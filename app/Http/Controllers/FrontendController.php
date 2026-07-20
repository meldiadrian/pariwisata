<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\News;
use App\Models\Category;
use App\Models\Setting;
use App\Models\Advertisement;

class FrontendController extends Controller
{
    /**
     * Ambil iklan sidebar yang aktif (dipakai di semua halaman).
     */
    private function sidebarAds()
    {
        return Advertisement::where('position', 'sidebar')
            ->where('is_active', true)
            ->get();
    }

    public function index()
    {
        $setting = Setting::first();
        $categories = Category::withCount('news')->get();
        $headlines = News::where('is_headline', true)->where('status', 'publish')->latest()->take(5)->get();
        $trending = News::where('is_trending', true)->where('status', 'publish')->latest()->take(5)->get();
        $breaking = News::where('is_breaking', true)->where('status', 'publish')->latest()->first();
        $latestNews = News::where('status', 'publish')->latest()->paginate(10);
        $sidebarAds = $this->sidebarAds();
        $photoGalleries = \App\Models\PhotoGallery::latest()->take(8)->get();
        $videoGalleries = \App\Models\Video::latest()->take(8)->get();
        
        $galleries = collect();
        foreach($photoGalleries as $photo) {
            $galleries->push((object)[
                'title' => $photo->title,
                'image' => $photo->image,
                'video_url' => $photo->video_url ?? null, // Use the one we added if it exists
                'created_at' => $photo->created_at,
            ]);
        }
        foreach($videoGalleries as $video) {
            $galleries->push((object)[
                'title' => $video->title,
                'image' => $video->thumbnail ?? null,
                'video_url' => $video->youtube_url,
                'created_at' => $video->created_at,
            ]);
        }
        $galleries = $galleries->sortByDesc('created_at')->take(8);

        return view('welcome', compact('setting', 'categories', 'headlines', 'trending', 'breaking', 'latestNews', 'sidebarAds', 'galleries'));
    }

    public function show($slug)
    {
        $setting = Setting::first();
        $categories = Category::withCount('news')->get();
        $breaking = News::where('is_breaking', true)->where('status', 'publish')->latest()->first();
        $news = News::where('slug', $slug)->firstOrFail();
        $news->increment('views');
        $related = News::where('category_id', $news->category_id)->where('id', '!=', $news->id)->take(3)->get();
        $sidebarAds = $this->sidebarAds();

        return view('news.show', compact('setting', 'categories', 'breaking', 'news', 'related', 'sidebarAds'));
    }

    public function category($slug)
    {
        $setting = Setting::first();
        $categories = Category::withCount('news')->get();
        $breaking = News::where('is_breaking', true)->where('status', 'publish')->latest()->first();
        $category = Category::where('slug', $slug)->firstOrFail();
        $news = News::where('category_id', $category->id)->where('status', 'publish')->latest()->paginate(10);
        $sidebarAds = $this->sidebarAds();

        return view('news.category', compact('setting', 'categories', 'breaking', 'category', 'news', 'sidebarAds'));
    }

    public function page($slug)
    {
        $setting = Setting::first();
        $categories = Category::withCount('news')->get();
        $breaking = News::where('is_breaking', true)->where('status', 'publish')->latest()->first();
        $page = \App\Models\Page::where('slug', $slug)->firstOrFail();

        return view('page', compact('setting', 'categories', 'breaking', 'page'));
    }
}
