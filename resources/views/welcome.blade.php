@extends('layouts.frontend')

@section('content')
    <!-- Hero Section -->
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-6 mb-12">
        <!-- Main Slider -->
        <div class="lg:col-span-2">
            <div class="swiper hero-swiper rounded-xl overflow-hidden shadow-lg h-[400px] md:h-[500px]">
                <div class="swiper-wrapper">
                    @foreach($headlines as $news)
                    <div class="swiper-slide relative">
                        <img src="{{ $news->thumbnail ? asset('storage/'.$news->thumbnail) : 'https://placehold.co/800x600?text=News+Thumbnail' }}" class="w-full h-full object-cover">
                        <div class="absolute bottom-0 left-0 right-0 bg-gradient-to-t from-black to-transparent p-8">
                            <span class="bg-red-700 text-white px-3 py-1 text-xs font-bold rounded mb-2 inline-block">{{ $news->category->name }}</span>
                            <h2 class="text-2xl md:text-4xl font-bold text-white mb-2">
                                <a href="{{ route('news.show', $news->slug) }}" class="hover:underline">{{ $news->title }}</a>
                            </h2>
                            <p class="text-gray-200 text-sm md:text-base line-clamp-2">{{ $news->summary }}</p>
                        </div>
                    </div>
                    @endforeach
                </div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-next text-white"></div>
                <div class="swiper-button-prev text-white"></div>
            </div>
        </div>

        <!-- Trending Sidebar -->
        <div class="lg:col-span-1">
            <h3 class="text-xl font-bold mb-4 border-l-4 border-red-700 pl-3">TERPOPULER</h3>
            <div class="space-y-4">
                @foreach($trending as $index => $news)
                <div class="flex items-start space-x-4 group border-b border-gray-100 pb-4">
                    <span class="text-3xl font-black text-gray-200 group-hover:text-red-700 transition">{{ $index + 1 }}</span>
                    <div>
                        <span class="text-red-700 text-xs font-bold uppercase">{{ $news->category->name }}</span>
                        <h4 class="font-bold leading-tight group-hover:text-red-700 transition">
                            <a href="{{ route('news.show', $news->slug) }}">{{ $news->title }}</a>
                        </h4>
                        <span class="text-gray-400 text-xs">{{ $news->published_at->diffForHumans() }}</span>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>

    <!-- Latest News Section -->
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
        <div class="lg:col-span-2">
            <h3 class="text-2xl font-black mb-6 border-b-2 border-red-700 inline-block pb-1">BERITA TERBARU</h3>
            <div class="space-y-8">
                @foreach($latestNews as $news)
                <div class="flex flex-col md:flex-row gap-6 group">
                    <div class="w-full md:w-1/3 shrink-0 overflow-hidden rounded-lg shadow-sm">
                        <img src="{{ $news->thumbnail ? asset('storage/'.$news->thumbnail) : 'https://placehold.co/400x300?text=News' }}" class="w-full h-48 object-cover group-hover:scale-105 transition duration-500">
                    </div>
                    <div class="flex-1">
                        <span class="text-red-700 text-xs font-bold uppercase">{{ $news->category->name }}</span>
                        <h3 class="text-xl font-bold mb-2 group-hover:text-red-700 transition">
                            <a href="{{ route('news.show', $news->slug) }}">{{ $news->title }}</a>
                        </h3>
                        <p class="text-gray-600 text-sm mb-4 line-clamp-3">{{ $news->summary }}</p>
                        <div class="flex items-center text-xs text-gray-400 space-x-4">
                            <span><i class="far fa-user mr-1"></i> {{ $news->user->name }}</span>
                            <span><i class="far fa-clock mr-1"></i> {{ $news->published_at->format('d M Y') }}</span>
                            <span><i class="far fa-eye mr-1"></i> {{ number_format($news->views) }}</span>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            
            <div class="mt-12">
                {{ $latestNews->links() }}
            </div>
        </div>

        <!-- Sidebar Widgets -->
        <div class="lg:col-span-1 space-y-12">
            <!-- Ad Widget -->
            <div class="bg-gray-200 h-64 flex items-center justify-center text-gray-400 text-xs rounded-lg border-2 border-dashed border-gray-300">
                IKLAN BANNER
            </div>

            <!-- Categories Widget -->
            <div class="bg-white p-6 rounded-xl shadow-sm border border-gray-100">
                <h3 class="font-bold mb-4 border-l-4 border-red-700 pl-3">KATEGORI</h3>
                <div class="space-y-2">
                    @foreach($categories as $cat)
                    <a href="{{ route('news.category', $cat->slug) }}" class="flex justify-between items-center py-2 text-sm hover:text-red-700 border-b border-gray-50 last:border-0 transition">
                        <span>{{ $cat->name }}</span>
                        <span class="bg-gray-100 text-gray-500 px-2 py-0.5 rounded-full text-[10px]">{{ $cat->news_count }}</span>
                    </a>
                    @endforeach
                </div>
            </div>

            <!-- Tags Widget -->
            <div class="bg-white p-6 rounded-xl shadow-sm border border-gray-100">
                <h3 class="font-bold mb-4 border-l-4 border-red-700 pl-3">TAG POPULER</h3>
                <div class="flex flex-wrap gap-2">
                    @foreach(\App\Models\Tag::take(10)->get() as $tag)
                    <a href="#" class="bg-gray-100 hover:bg-red-700 hover:text-white px-3 py-1 rounded-full text-xs text-gray-600 transition">
                        #{{ $tag->name }}
                    </a>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection