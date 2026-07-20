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
            @include('partials._sidebar_ads')

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

    <!-- Gallery Section -->
    <div id="galeri" class="mt-16 mb-8 flex flex-col items-center" x-data="{ filter: 'all' }">
        <h3 class="text-4xl font-bold text-slate-900 mb-2">Galeri Kegiatan</h3>
        <p class="text-slate-500 mb-8 text-lg">Momen pelayanan dan kegiatan kami</p>
        
        <div class="inline-flex bg-slate-100 p-1.5 rounded-full mb-10 shadow-sm">
            <button @click="filter = 'all'" :class="filter === 'all' ? 'bg-red-700 text-white shadow-md' : 'text-slate-600 hover:text-slate-900'" class="px-8 py-2 rounded-full font-medium transition-all duration-300">Semua</button>
            <button @click="filter = 'photo'" :class="filter === 'photo' ? 'bg-red-700 text-white shadow-md' : 'text-slate-600 hover:text-slate-900'" class="px-8 py-2 rounded-full font-medium transition-all duration-300">Foto</button>
            <button @click="filter = 'video'" :class="filter === 'video' ? 'bg-red-700 text-white shadow-md' : 'text-slate-600 hover:text-slate-900'" class="px-8 py-2 rounded-full font-medium transition-all duration-300">Video</button>
        </div>
        
        @if($galleries->count() > 0)
        <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4 w-full">
            @foreach($galleries as $gallery)
            <div x-show="filter === 'all' || filter === '{{ $gallery->video_url ? 'video' : 'photo' }}'" class="group block relative overflow-hidden rounded-xl shadow-sm aspect-square bg-gray-100 transition-all duration-300">
                @if($gallery->video_url)
                    @if($gallery->image)
                        <img src="{{ asset('storage/' . $gallery->image) }}" alt="{{ $gallery->title }}" class="w-full h-full object-cover group-hover:scale-110 transition duration-500">
                        <div class="absolute inset-0 bg-black/40 flex items-center justify-center pointer-events-none">
                            <i class="fas fa-play-circle text-4xl text-white opacity-80 group-hover:opacity-100 group-hover:scale-110 transition"></i>
                        </div>
                        <div class="absolute inset-0 bg-gradient-to-t from-black/90 via-black/30 to-transparent opacity-0 group-hover:opacity-100 transition duration-300 flex flex-col justify-end p-4 pointer-events-none">
                            <h4 class="text-white font-bold text-sm md:text-base transform translate-y-4 group-hover:translate-y-0 transition duration-300">{{ $gallery->title }}</h4>
                        </div>
                        <a href="{{ $gallery->video_url }}" target="_blank" class="absolute inset-0 z-10"></a>
                    @else
                        <iframe src="{{ $gallery->video_url }}" class="w-full h-full object-cover" frameborder="0" allowfullscreen></iframe>
                        <div class="absolute inset-0 bg-gradient-to-t from-black/90 via-black/30 to-transparent opacity-0 group-hover:opacity-100 transition duration-300 flex flex-col justify-end p-4 pointer-events-none">
                            <h4 class="text-white font-bold text-sm md:text-base transform translate-y-4 group-hover:translate-y-0 transition duration-300">{{ $gallery->title }}</h4>
                        </div>
                    @endif
                @else
                    <a href="{{ asset('storage/' . $gallery->image) }}" target="_blank" class="block w-full h-full">
                        <img src="{{ asset('storage/' . $gallery->image) }}" alt="{{ $gallery->title }}" class="w-full h-full object-cover group-hover:scale-110 transition duration-500">
                        <div class="absolute inset-0 bg-gradient-to-t from-black/90 via-black/30 to-transparent opacity-0 group-hover:opacity-100 transition duration-300 flex flex-col justify-end p-4">
                            <h4 class="text-white font-bold text-sm md:text-base transform translate-y-4 group-hover:translate-y-0 transition duration-300">{{ $gallery->title }}</h4>
                        </div>
                    </a>
                @endif
            </div>
            @endforeach
        </div>
        @else
        <div class="text-center py-8 text-gray-500 bg-gray-50 rounded-xl border border-gray-100 w-full">
            <i class="far fa-images text-4xl mb-3 text-gray-300"></i>
            <p>Belum ada foto/video galeri.</p>
        </div>
        @endif
    </div>
@endsection