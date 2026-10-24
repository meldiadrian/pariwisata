<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

use App\Models\News;
use App\Models\Category;
use App\Models\Setting;
use App\Models\Advertisement;
use App\Models\Festival;
use App\Models\Slider;
use App\Models\DestinationCategory;

class FrontendController extends Controller
{
    // TTL dalam detik
    const TTL_SHORT  = 300;   // 5 menit  — konten dinamis (berita)
    const TTL_MEDIUM = 600;   // 10 menit — konten semi-statis
    const TTL_LONG   = 3600;  // 60 menit — konten sangat statis (settings, slider, kategori)

    /**
     * Ambil settings (sangat statis, cache 60 menit).
     */
    private function getSetting()
    {
        return Cache::remember('setting:first', self::TTL_LONG, fn () => Setting::first());
    }

    /**
     * Ambil semua kategori dengan jumlah berita (cache 60 menit).
     */
    private function getCategories()
    {
        return Cache::remember('categories:with_count', self::TTL_LONG, fn () =>
            Category::withCount('news')->get()
        );
    }

    /**
     * Ambil berita breaking news terbaru (cache 5 menit).
     */
    private function getBreaking()
    {
        return Cache::remember('news:breaking', self::TTL_SHORT, fn () =>
            News::where('is_breaking', true)->where('status', 'publish')->latest()->first()
        );
    }

    /**
     * Ambil iklan sidebar yang aktif (cache 10 menit).
     */
    private function sidebarAds()
    {
        return Cache::remember('ads:sidebar', self::TTL_MEDIUM, fn () =>
            Advertisement::where('position', 'sidebar')->where('is_active', true)->get()
        );
    }

    public function index()
    {
        $setting    = $this->getSetting();
        $categories = $this->getCategories();

        $headlines = Cache::remember('news:headlines', self::TTL_SHORT, fn () =>
            News::where('is_headline', true)->where('status', 'publish')->latest()->take(5)->get()
        );

        $trending = Cache::remember('news:trending', self::TTL_SHORT, fn () =>
            News::where('is_trending', true)->where('status', 'publish')->latest()->take(3)->get()
        );

        $breaking    = $this->getBreaking();
        $latestNews  = News::where('status', 'publish')->latest()->paginate(10);
        $sidebarAds  = $this->sidebarAds();

        // Galleries: photo + video digabung, cache 10 menit
        $galleries = Cache::remember('galleries:home', self::TTL_MEDIUM, function () {
            $photoGalleries = \App\Models\PhotoGallery::latest()->take(8)->get();
            $videoGalleries = \App\Models\Video::latest()->take(8)->get();

            $items = collect();
            foreach ($photoGalleries as $photo) {
                $items->push((object)[
                    'title'     => $photo->title,
                    'image'     => $photo->image,
                    'video_url' => $photo->video_url ?? null,
                    'created_at'=> $photo->created_at,
                ]);
            }
            foreach ($videoGalleries as $video) {
                $items->push((object)[
                    'title'     => $video->title,
                    'image'     => $video->thumbnail ?? null,
                    'video_url' => $video->youtube_url,
                    'created_at'=> $video->created_at,
                ]);
            }
            return $items->sortByDesc('created_at')->take(8)->values();
        });

        $festivals = Cache::remember('festivals:active', self::TTL_LONG, fn () =>
            Festival::where('is_active', true)->orderBy('order')->latest()->get()
        );

        $sliders = Cache::remember('sliders:active', self::TTL_LONG, fn () =>
            Slider::where('is_active', true)->orderBy('order')->get()
        );

        $destinationCategories = Cache::remember('destination_categories:active', self::TTL_LONG, fn () =>
            DestinationCategory::where('is_active', true)
                ->orderBy('order')
                ->with(['destinations' => function ($q) {
                    $q->where('is_active', true)->orderBy('order');
                }])
                ->get()
        );

        return view('welcome', compact(
            'setting', 'categories', 'headlines', 'trending', 'breaking',
            'latestNews', 'sidebarAds', 'galleries', 'festivals', 'sliders',
            'destinationCategories'
        ));
    }

    public function show($slug)
    {
        $setting    = $this->getSetting();
        $categories = $this->getCategories();
        $breaking   = $this->getBreaking();

        // Berita individual: cache per slug (5 menit)
        $news = Cache::remember("news:slug:{$slug}", self::TTL_SHORT, fn () =>
            News::where('slug', $slug)->firstOrFail()
        );

        // Increment views — operasi ini tidak perlu di-cache, tapi jangan sampai double-count
        // Gunakan throttle: 1 view per IP per berita per 10 menit
        $viewKey = 'news:viewed:' . $slug . ':' . request()->ip();
        if (!Cache::has($viewKey)) {
            $news->increment('views');
            Cache::put($viewKey, true, 600);
        }

        $related = Cache::remember("news:related:{$news->category_id}:{$news->id}", self::TTL_SHORT, fn () =>
            News::where('category_id', $news->category_id)->where('id', '!=', $news->id)->take(3)->get()
        );

        $sidebarAds = $this->sidebarAds();

        return view('news.show', compact('setting', 'categories', 'breaking', 'news', 'related', 'sidebarAds'));
    }

    public function category($slug)
    {
        $setting    = $this->getSetting();
        $categories = $this->getCategories();
        $breaking   = $this->getBreaking();

        $category = Cache::remember("category:slug:{$slug}", self::TTL_LONG, fn () =>
            Category::where('slug', $slug)->firstOrFail()
        );

        // Paginated news tidak di-cache karena tergantung query param page
        $news       = News::where('category_id', $category->id)->where('status', 'publish')->latest()->paginate(10);
        $sidebarAds = $this->sidebarAds();

        return view('news.category', compact('setting', 'categories', 'breaking', 'category', 'news', 'sidebarAds'));
    }

    public function page($slug)
    {
        $setting    = $this->getSetting();
        $categories = $this->getCategories();
        $breaking   = $this->getBreaking();

        $page = Cache::remember("page:slug:{$slug}", self::TTL_LONG, fn () =>
            \App\Models\Page::where('slug', $slug)->firstOrFail()
        );

        return view('page', compact('setting', 'categories', 'breaking', 'page'));
    }
}
