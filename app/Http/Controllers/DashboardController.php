<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\News;
use App\Models\Category;

class DashboardController extends Controller
{
    /**
     * Tampilkan halaman dashboard user.
     */
    public function index()
    {
        // Contoh data dummy/statistik yang bisa ditampilkan di dashboard
        $stats = [
            'total_news' => News::count(),
            'published_news' => News::where('status', 'publish')->count(),
            'total_categories' => Category::count(),
        ];
        
        $recentNews = News::latest()->take(5)->get();

        return view('dashboard', compact('stats', 'recentNews'));
    }
}
