<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use App\Models\News;
use App\Models\Category;

class DashboardController extends Controller
{
    /**
     * Tampilkan halaman dashboard user.
     */
    public function index()
    {
        // Cache statistik ringkas (5 menit) agar tidak melakukan full table scan pada setiap request
        $stats = Cache::remember('dashboard:stats', 300, fn () => [
            'total_news' => News::count(),
            'published_news' => News::where('status', 'publish')->count(),
            'total_categories' => Category::count(),
        ]);
        
        // Pilih kolom yang diperlukan saja dan eager load category untuk mencegah query N+1 & pemborosan memori (content)
        $recentNews = News::select('id', 'title', 'category_id', 'status', 'created_at')
            ->with('category:id,name')
            ->latest()
            ->take(5)
            ->get();

        return view('dashboard', compact('stats', 'recentNews'));
    }
}
