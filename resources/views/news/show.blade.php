@extends('layouts.frontend')

@section('title', $news->title . ' - ' . ($setting->site_name ?? 'Portal Berita'))

@section('content')
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
        <div class="lg:col-span-2">
            <!-- Breadcrumb -->
            <nav class="flex mb-4 text-gray-500 text-xs uppercase font-bold" aria-label="Breadcrumb">
                <ol class="inline-flex items-center space-x-1 md:space-x-3">
                    <li class="inline-flex items-center">
                        <a href="{{ route('home') }}" class="hover:text-red-700">Home</a>
                    </li>
                    @if($news->category)
                    <li>
                        <div class="flex items-center">
                            <i class="fas fa-chevron-right text-[10px] mx-2"></i>
                            <a href="{{ route('news.category', $news->category->slug) }}"
                                class="hover:text-red-700">{{ $news->category->name }}</a>
                        </div>
                    </li>
                    @endif
                </ol>
            </nav>

            <h1 class="text-s sm:text-s md:text-s lg:text-s font-black mb-4 leading-tight">{{ $news->title }}</h1>

            <div class="flex flex-wrap items-center text-xs sm:text-sm text-gray-500 mb-6 pb-4 border-b border-gray-100 gap-x-4 gap-y-2">
                <div class="flex items-center">
                    <img src="https://ui-avatars.com/api/?name={{ urlencode($news->user?->name ?? 'Admin') }}&color=7F9CF5&background=EBF4FF"
                        class="w-7 h-7 rounded-full mr-2 flex-shrink-0" style="width:28px;height:28px;max-width:28px;">
                    <span>Oleh <span class="font-bold text-gray-900">{{ $news->user?->name ?? 'Admin' }}</span></span>
                </div>
                <span><i class="far fa-clock mr-1"></i> {{ optional($news->published_at)->translatedFormat('d M Y') }}</span>
                <span><i class="far fa-eye mr-1"></i> {{ number_format($news->views) }} views</span>
            </div>

            @if($news->thumbnail)
                <div class="mb-8 rounded-xl overflow-hidden shadow-lg">
                    <x-responsive-image :src="$news->thumbnail" :alt="$news->title" class="w-full h-auto" :sizes="['medium' => 800, 'large' => 1200]" />
                </div>
            @endif

            <div class="prose prose-sm sm:prose lg:prose-lg max-w-none mb-12 text-gray-800 leading-relaxed">
                {!! app(\App\Services\ContentImageService::class)->optimizeHtmlImages($news->content) !!}
            </div>

            <!-- Tags -->
            <div class="mb-12">
                <h4 class="font-bold mb-4">TAGS:</h4>
                <div class="flex flex-wrap gap-2">
                    @foreach($news->tags as $tag)
                        <a href="#"
                            class="bg-gray-100 hover:bg-red-700 hover:text-white px-4 py-1.5 rounded-full text-sm text-gray-600 transition font-medium">
                            #{{ $tag->name }}
                        </a>
                    @endforeach
                </div>
            </div>

            <!-- Share Section -->
            @php
                $shareUrl = urlencode(url()->current());
                $shareText = urlencode($news->title);
            @endphp
            <div x-data="{ copied: false }"
                class="bg-gray-50 p-6 rounded-xl border border-gray-100 flex flex-col md:flex-row justify-between items-center mb-12">
                <span class="font-bold mb-4 md:mb-0">BAGIKAN ARTIKEL INI:</span>
                <div class="flex items-center space-x-2">
                    <a href="https://www.facebook.com/sharer/sharer.php?u={{ $shareUrl }}" target="_blank" rel="noopener noreferrer" aria-label="Bagikan ke Facebook"
                        class="bg-[#1877F2] text-white w-10 h-10 flex items-center justify-center rounded-full hover:opacity-80 transition"><i
                            class="fab fa-facebook-f"></i></a>
                    <a href="https://twitter.com/intent/tweet?url={{ $shareUrl }}&text={{ $shareText }}" target="_blank" rel="noopener noreferrer" aria-label="Bagikan ke Twitter"
                        class="bg-[#1DA1F2] text-white w-10 h-10 flex items-center justify-center rounded-full hover:opacity-80 transition"><i
                            class="fab fa-twitter"></i></a>
                    <a href="https://wa.me/?text={{ $shareText }}%20{{ $shareUrl }}" target="_blank" rel="noopener noreferrer" aria-label="Bagikan ke WhatsApp"
                        class="bg-[#25D366] text-white w-10 h-10 flex items-center justify-center rounded-full hover:opacity-80 transition"><i
                            class="fab fa-whatsapp"></i></a>
                    <button type="button" aria-label="Salin tautan artikel"
                        @click="navigator.clipboard?.writeText(@js(url()->current())); copied = true; setTimeout(() => copied = false, 2000)"
                        class="bg-gray-800 text-white w-10 h-10 flex items-center justify-center rounded-full hover:opacity-80 transition"><i
                            class="fas fa-link"></i></button>
                    <span x-show="copied" x-transition class="text-xs font-semibold text-green-700" style="display:none;">Tersalin!</span>
                </div>
            </div>

            <!-- Related News -->
            <div class="mb-12">
                <h3 class="text-2xl font-black mb-6 border-l-4 border-red-700 pl-4">BERITA TERKAIT</h3>
                <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
                    @foreach($related as $item)
                        <div class="group">
                            <div class="rounded-lg overflow-hidden mb-3 aspect-video">
                                <x-responsive-image :src="$item->thumbnail" :alt="$item->title"
                                    class="w-full h-full object-cover group-hover:scale-110 transition duration-500"
                                    :sizes="['thumbnail' => 300, 'small' => 400]" />
                            </div>
                            <h4 class="font-bold text-sm leading-snug group-hover:text-red-700 transition">
                                <a href="{{ route('news.show', $item->slug) }}">{{ $item->title }}</a>
                            </h4>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>

        <!-- Sidebar -->
        <div class="lg:col-span-1 space-y-12">
            <!-- Popular Widget -->
            <div class="bg-white p-6 rounded-xl shadow-sm border border-gray-100 w-full max-w-[275px] mx-auto">
                <h3 class="font-bold mb-6 border-l-4 border-red-700 pl-3 uppercase">Paling Populer</h3>
                <div class="space-y-6">
                    @foreach(($popularNews ?? collect()) as $index => $popular)
                        <div class="flex space-x-4 items-start group">
                            <span
                                class="text-2xl font-black text-gray-200 group-hover:text-red-700 transition">{{ $index + 1 }}</span>
                            <h4 class="text-sm font-bold group-hover:text-red-700 transition leading-snug">
                                <a href="{{ route('news.show', $popular->slug) }}">{{ $popular->title }}</a>
                            </h4>
                        </div>
                    @endforeach
                </div>
            </div>

            <!-- Ad Widget -->
            @include('partials._sidebar_ads')

        </div>
    </div>
@endsection