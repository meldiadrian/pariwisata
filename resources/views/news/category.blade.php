@extends('layouts.frontend')

@section('title', $category->name . ' - ' . ($setting->site_name ?? 'Portal Berita'))

@section('content')
    <!-- Breadcrumb -->
    <nav class="flex mb-6 text-gray-500 text-xs uppercase font-bold" aria-label="Breadcrumb">
        <ol class="inline-flex items-center space-x-1 md:space-x-3">
            <li class="inline-flex items-center">
                <a href="{{ route('home') }}" class="hover:text-red-700">Home</a>
            </li>
            <li>
                <div class="flex items-center">
                    <i class="fas fa-chevron-right text-[10px] mx-2"></i>
                    <span class="text-red-700">{{ $category->name }}</span>
                </div>
            </li>
        </ol>
    </nav>

    <!-- Category Header -->
    <div class="bg-white p-6 rounded-xl shadow-sm border border-gray-100 mb-8">
        <h1 class="text-3xl font-black text-gray-900">{{ $category->name }}</h1>
        <p class="text-gray-500 mt-2">{{ $news->total() }} berita dalam kategori ini</p>
    </div>

    <!-- News Grid -->
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
        <div class="lg:col-span-2">
            @if($news->count() > 0)
            <div class="space-y-8">
                @foreach($news as $item)
                <div class="flex flex-col md:flex-row gap-6 group bg-white p-4 rounded-xl shadow-sm border border-gray-100 hover:shadow-md transition">
                    <div class="w-full md:w-1/3 shrink-0 overflow-hidden rounded-lg">
                        <x-responsive-image 
                            :src="$item->thumbnail" 
                            :alt="$item->title"
                            class="w-full h-48 object-cover group-hover:scale-105 transition duration-500"
                            :sizes="['thumbnail' => 300, 'small' => 400]"
                        />
                    </div>
                    <div class="flex-1">
                        <span class="text-red-700 text-xs font-bold uppercase">{{ $item->category->name }}</span>
                        <h3 class="text-xl font-bold mb-2 group-hover:text-red-700 transition">
                            <a href="{{ route('news.show', $item->slug) }}">{{ $item->title }}</a>
                        </h3>
                        <p class="text-gray-600 text-sm mb-4 line-clamp-3">{{ $item->summary }}</p>
                        <div class="flex items-center text-xs text-gray-400 space-x-4">
                            <span><i class="far fa-user mr-1"></i> {{ $item->user->name }}</span>
                            <span><i class="far fa-clock mr-1"></i> {{ optional($item->published_at)->format('d M Y') }}</span>
                            <span><i class="far fa-eye mr-1"></i> {{ number_format($item->views) }}</span>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>

            <div class="mt-12">
                {{ $news->links() }}
            </div>
            @else
            <div class="bg-white p-12 rounded-xl shadow-sm border border-gray-100 text-center">
                <i class="far fa-newspaper text-6xl text-gray-300 mb-4"></i>
                <h3 class="text-xl font-bold text-gray-700 mb-2">Belum Ada Berita</h3>
                <p class="text-gray-500">Tidak ada berita dalam kategori ini saat ini.</p>
            </div>
            @endif
        </div>

        <!-- Sidebar -->
        <div class="lg:col-span-1 space-y-12">
            <!-- Popular Widget -->
            <div class="bg-white p-6 rounded-xl shadow-sm border border-gray-100 w-[276px] mx-auto">
                <h3 class="font-bold mb-6 border-l-4 border-red-700 pl-3 uppercase">Paling Populer</h3>
                <div class="space-y-6">
                    @foreach(\App\Models\News::where('status', 'publish')->orderBy('views', 'desc')->take(5)->get() as $index => $popular)
                    <div class="flex space-x-4 items-start group">
                        <span class="text-2xl font-black text-gray-200 group-hover:text-red-700 transition">{{ $index + 1 }}</span>
                        <h4 class="text-sm font-bold group-hover:text-red-700 transition leading-snug">
                            <a href="{{ route('news.show', $popular->slug) }}">{{ $popular->title }}</a>
                        </h4>
                    </div>
                    @endforeach
                </div>
            </div>

            <!-- Ad Widget -->
            @include('partials._sidebar_ads')

            <!-- Categories Widget -->
            <div class="bg-white p-6 rounded-xl shadow-sm border border-gray-100 w-[276px] mx-auto">
                <h3 class="font-bold mb-4 border-l-4 border-red-700 pl-3">KATEGORI</h3>
                <div class="space-y-2">
                    @foreach($categories as $cat)
                    <a href="{{ route('news.category', $cat->slug) }}" class="flex justify-between items-center py-2 text-sm hover:text-red-700 border-b border-gray-50 last:border-0 transition {{ $cat->id == $category->id ? 'text-red-700' : '' }}">
                        <span>{{ $cat->name }}</span>
                        <span class="bg-gray-100 text-gray-500 px-2 py-0.5 rounded-full text-[10px]">{{ $cat->news_count }}</span>
                    </a>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection