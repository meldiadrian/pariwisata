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
                        <x-responsive-image 
                            :src="$news->thumbnail" 
                            :alt="$news->title"
                            class="w-full h-full object-cover"
                            :lazy="false"
                            :sizes="['large' => 1200, 'medium' => 800]"
                        />
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


 <!-- Tourism Menu Section -->
    @if($destinationCategories->count() > 0)
    <div x-data="{
            activeTab: null,
            search: '',
            sortBy: 'name-asc',
            lightbox: false,
            lightboxImg: '',
            lightboxTitle: '',
            lightboxDesc: '',
            lightboxCat: '',
            matchSearch(el) {
                if (!this.search.trim()) return true;
                const q = this.search.toLowerCase().trim();
                const text = (el.dataset.searchtext || '').toLowerCase();
                return text.includes(q);
            },
            sortCards(container) {
                const cards = Array.from(container.querySelectorAll('[data-card]'));
                const grid = container.querySelector('[data-grid]');
                if (!grid) return;
                
                cards.sort((a, b) => {
                    const nameA = (a.dataset.name || '').toLowerCase();
                    const nameB = (b.dataset.name || '').toLowerCase();
                    
                    if (this.sortBy === 'name-asc') {
                        return nameA.localeCompare(nameB);
                    } else if (this.sortBy === 'name-desc') {
                        return nameB.localeCompare(nameA);
                    }
                    return 0;
                });
                
                cards.forEach(card => grid.appendChild(card));
            },
            openLightbox(img, title, desc, cat) {
                this.lightboxImg = img;
                this.lightboxTitle = title;
                this.lightboxDesc = desc;
                this.lightboxCat = cat;
                this.lightbox = true;
                document.body.style.overflow = 'hidden';
            },
            closeLightbox() {
                this.lightbox = false;
                document.body.style.overflow = '';
            }
        }"
         @keydown.escape.window="closeLightbox()"
         class="container mx-auto mb-12 bg-gray-100 py-8 rounded-xl">

        

        <!-- Icon Category Menu -->
        <div class="flex flex-nowrap md:flex-wrap justify-start md:justify-center overflow-x-auto gap-4 md:gap-8 pb-4 scrollbar-hide mb-8">
            @foreach($destinationCategories as $destCat)
            <button
                @click="activeTab = (activeTab === '{{ $destCat->slug }}' ? null : '{{ $destCat->slug }}')"
                class="flex flex-col items-center min-w-[90px] pt-3 group focus:outline-none shrink-0">
                <div
                    :class="activeTab === '{{ $destCat->slug }}'
                        ? 'bg-red-100 text-red-700 ring-2 ring-red-500 scale-110'
                        : 'bg-red-50 text-red-600 group-hover:bg-red-100 group-hover:scale-110'"
                    class="flex items-center justify-center rounded-full mb-3 transition-all duration-300 flex-shrink-0"
                    style="width: 64px; height: 64px; min-width: 64px; min-height: 64px;">
                    <i class="{{ $destCat->icon_class }} text-2xl"></i>
                </div>
                <span
                    :class="activeTab === '{{ $destCat->slug }}' ? 'text-red-700 font-semibold' : 'text-gray-700'"
                    class="text-sm font-medium text-center leading-tight transition-colors duration-200">
                    {{ $destCat->name }}
                </span>
            </button>
            @endforeach
        </div>

        <!-- Destination Cards per Category ----->

        <!-- Placeholder: tampil saat belum ada kategori dipilih -->
        <!-- <div x-show="activeTab === null"
             x-transition:enter="transition ease-out duration-300"
             x-transition:enter-start="opacity-0 translate-y-2"
             x-transition:enter-end="opacity-100 translate-y-0"
             class="text-center py-14 select-none">
            <div class="inline-flex items-center justify-center rounded-full bg-red-50 mb-5"
                 style="width: 80px; height: 80px;">
                <i class="fas fa-hand-pointer text-3xl text-red-300"></i>
            </div>
            <p class="text-gray-400 text-base font-medium">Pilih kategori di atas</p>
            <p class="text-gray-300 text-sm mt-1">untuk melihat daftar destinasi wisata</p>
        </div> -->

        @foreach($destinationCategories as $destCat)
        <div
            x-show="activeTab === '{{ $destCat->slug }}'"
            x-transition:enter="transition ease-out duration-300"
            x-transition:enter-start="opacity-0 translate-y-4"
            x-transition:enter-end="opacity-100 translate-y-0"
            x-transition:leave="transition ease-in duration-150"
            x-transition:leave-start="opacity-100 translate-y-0"
            x-transition:leave-end="opacity-0 translate-y-4"
            style="display: none;"
            x-init="$watch('search', () => {
                const cards = $el.querySelectorAll('[data-card]');
                let visible = 0;
                cards.forEach(card => {
                    const matches = matchSearch(card);
                    card.style.display = matches ? '' : 'none';
                    if (matches) visible++;
                });
                const noResult = $el.querySelector('[data-noresult]');
                if (noResult) noResult.style.display = visible === 0 && search.trim() !== '' ? '' : 'none';
            }); $watch('sortBy', () => { sortCards($el); })">

            @if($destCat->slug === 'eksplor-bengkalis')
            {{-- Search & Sort Controls - Only for Eksplor Bengkalis --}}
            <div class="mb-6 space-y-4">
                {{-- Search Bar --}}
                <div class="relative max-w-2xl mx-auto">
                    <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
                        <i class="fas fa-search text-gray-400"></i>
                    </div>
                    <input 
                        type="text" 
                        x-model="search"
                        placeholder="Cari destinasi berdasarkan nama..."
                        class="w-full pl-12 pr-12 py-3 rounded-xl border-2 border-gray-200 focus:border-red-500 focus:ring-2 focus:ring-red-200 transition-all duration-200 outline-none text-sm"
                    >
                    <button 
                        x-show="search.length > 0"
                        @click="search = ''"
                        class="absolute inset-y-0 right-0 pr-4 flex items-center text-gray-400 hover:text-red-600 transition-colors"
                        style="display: none;">
                        <i class="fas fa-times-circle"></i>
                    </button>
                </div>

                {{-- Sort Dropdown --}}
                <div class="flex items-center justify-center gap-3">
                    <span class="text-sm text-gray-600 font-medium flex items-center gap-2">
                        <i class="fas fa-sort-amount-down text-red-600"></i>
                        Urutkan:
                    </span>
                    <select 
                        x-model="sortBy"
                        class="px-4 py-2 rounded-lg border-2 border-gray-200 focus:border-red-500 focus:ring-2 focus:ring-red-200 transition-all duration-200 outline-none text-sm font-medium text-gray-700 cursor-pointer bg-white hover:border-red-300">
                        <option value="name-asc">Nama A → Z</option>
                        <option value="name-desc">Nama Z → A</option>
                    </select>
                </div>

                {{-- Search Info --}}
                <div x-show="search.length > 0" 
                     class="text-center text-sm text-gray-500"
                     style="display: none;">
                    <span>Mencari: </span>
                    <span class="font-semibold text-red-600" x-text="search"></span>
                </div>
            </div>
            @endif

            @if($destCat->destinations->count() > 0)
            <div data-grid class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6" id="grid-{{ $destCat->slug }}">
                @foreach($destCat->destinations as $destination)
                <div data-card
                     data-name="{{ strtolower($destination->name) }}"
                     data-searchtext="{{ strtolower($destination->name . ' ' . ($destination->address ?? '') . ' ' . ($destination->description ?? '') . ' ' . $destCat->name) }}"
                     class="bg-white rounded-xl shadow-sm hover:shadow-lg transition-all duration-300 border border-gray-100 overflow-hidden flex flex-col group hover:-translate-y-1"
                     style="transition: opacity 0.2s, transform 0.2s;">

                    {{-- Destination Image (clickable lightbox) --}}
                    <div class="relative h-48 overflow-hidden bg-gray-100">
                        @if($destination->image)
                            <button type="button"
                                    @click="openLightbox(
                                        '{{ asset('storage/' . $destination->image) }}',
                                        '{{ addslashes($destination->name) }}',
                                        '{{ addslashes($destination->description ?? '') }}',
                                        '{{ addslashes($destCat->name) }}'
                                    )"
                                    class="w-full h-full block cursor-zoom-in focus:outline-none">
                                <img src="{{ asset('storage/' . $destination->image) }}"
                                     alt="{{ $destination->name }}"
                                     class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500">
                                {{-- Hover zoom hint --}}
                                <div class="absolute inset-0 bg-black/0 group-hover:bg-black/25 transition-all duration-300 flex items-center justify-center">
                                    <span class="opacity-0 group-hover:opacity-100 transition-opacity duration-300 bg-white/90 rounded-full w-10 h-10 flex items-center justify-center shadow">
                                        <i class="fas fa-search-plus text-red-600 text-sm"></i>
                                    </span>
                                </div>
                            </button>
                        @else
                            <div class="w-full h-full flex items-center justify-center bg-gradient-to-br from-red-50 to-red-100">
                                <i class="fas fa-image text-5xl text-red-200"></i>
                            </div>
                        @endif
                        {{-- Disparbudpora badge --}}
                        <div class="absolute top-2 left-2 bg-white/90 backdrop-blur-sm px-2 py-1 rounded text-[10px] font-bold text-red-700 flex items-center gap-1 shadow-sm z-10">
                            @if(!empty($setting->logo))
                                <img src="{{ asset('storage/' . $setting->logo) }}"
                                     class="h-3.5 w-3.5 object-contain"
                                     onerror="this.style.display='none'">
                            @endif
                            Disparbudpora
                        </div>
                    </div>

                    {{-- Card Body --}}
                    <div class="p-4 flex-1 flex flex-col">
                        <span class="inline-block bg-red-100 text-red-700 px-3 py-1 rounded-full text-xs font-bold mb-3 self-start">
                            {{ $destCat->name }}
                        </span>

                        {{-- Clickable area: title + address + description --}}
                        @if($destination->image)
                        <button type="button"
                                @click="openLightbox(
                                    '{{ asset('storage/' . $destination->image) }}',
                                    '{{ addslashes($destination->name) }}',
                                    '{{ addslashes($destination->description ?? '') }}',
                                    '{{ addslashes($destCat->name) }}'
                                )"
                                class="text-left focus:outline-none group/btn">
                            <h4 class="font-bold text-gray-800 text-base leading-snug mb-1 group-hover:text-red-700 group-hover/btn:text-red-700 transition-colors duration-200 flex items-start gap-1">
                                {{ $destination->name }}
                                <i class="fas fa-expand-alt text-[10px] text-gray-300 group-hover/btn:text-red-400 transition-colors mt-1 shrink-0"></i>
                            </h4>
                            @if($destination->address)
                                <p class="text-xs text-gray-400 mb-2 flex items-center gap-1">
                                    <i class="fas fa-map-marker-alt text-red-400 shrink-0"></i>
                                    {{ $destination->address }}
                                </p>
                            @endif
                            @if($destination->description)
                                <p class="text-xs text-gray-500 line-clamp-2 mb-3 group-hover/btn:text-gray-700 transition-colors duration-200">{{ $destination->description }}</p>
                            @endif
                        </button>
                        @else
                        <h4 class="font-bold text-gray-800 text-base leading-snug mb-1 group-hover:text-red-700 transition-colors duration-200">
                            {{ $destination->name }}
                        </h4>
                        @if($destination->address)
                            <p class="text-xs text-gray-400 mb-2 flex items-center gap-1">
                                <i class="fas fa-map-marker-alt text-red-400 shrink-0"></i>
                                {{ $destination->address }}
                            </p>
                        @endif
                        @if($destination->description)
                            <p class="text-xs text-gray-500 line-clamp-2 mb-3">{{ $destination->description }}</p>
                        @endif
                        @endif


                        {{-- Social Media Links --}}
                        <div class="mt-auto border-t border-gray-100 pt-3 flex gap-2">
                            @if($destination->facebook_url)
                                <a href="{{ $destination->facebook_url }}" target="_blank" rel="noopener"
                                   class="w-8 h-8 rounded-full border border-gray-200 flex items-center justify-center text-gray-400 hover:text-blue-600 hover:border-blue-600 transition-all duration-200">
                                    <i class="fab fa-facebook-f text-xs"></i>
                                </a>
                            @else
                                <span class="w-8 h-8 rounded-full border border-gray-100 flex items-center justify-center text-gray-200 cursor-default">
                                    <i class="fab fa-facebook-f text-xs"></i>
                                </span>
                            @endif

                            @if($destination->instagram_url)
                                <a href="{{ $destination->instagram_url }}" target="_blank" rel="noopener"
                                   class="w-8 h-8 rounded-full border border-gray-200 flex items-center justify-center text-gray-400 hover:text-pink-600 hover:border-pink-600 transition-all duration-200">
                                    <i class="fab fa-instagram text-xs"></i>
                                </a>
                            @else
                                <span class="w-8 h-8 rounded-full border border-gray-100 flex items-center justify-center text-gray-200 cursor-default">
                                    <i class="fab fa-instagram text-xs"></i>
                                </span>
                            @endif

                            @if($destination->youtube_url)
                                <a href="{{ $destination->youtube_url }}" target="_blank" rel="noopener"
                                   class="w-8 h-8 rounded-full border border-gray-200 flex items-center justify-center text-gray-400 hover:text-red-600 hover:border-red-600 transition-all duration-200">
                                    <i class="fab fa-youtube text-xs"></i>
                                </a>
                            @else
                                <span class="w-8 h-8 rounded-full border border-gray-100 flex items-center justify-center text-gray-200 cursor-default">
                                    <i class="fab fa-youtube text-xs"></i>
                                </span>
                            @endif
                        </div>
                    </div>
                </div>
                @endforeach
            </div>

            {{-- No search result within this category --}}
            <div data-noresult
                 class="text-center py-10 bg-gray-50 rounded-xl border border-dashed border-gray-200 mt-2"
                 style="display:none;">
                <i class="fas fa-search text-3xl text-gray-200 mb-3"></i>
                <p class="text-gray-400 text-sm">Tidak ada destinasi yang cocok dengan pencarian Anda.</p>
                <button @click="search = ''" class="mt-3 text-xs text-red-400 hover:text-red-600 underline">Hapus pencarian</button>
            </div>

            @else
            {{-- Empty state --}}
            <div class="text-center py-12 bg-red-50 rounded-xl border border-red-100">
                <div class="inline-flex items-center justify-center rounded-full bg-red-100 mb-4"
                     style="width: 72px; height: 72px;">
                    <i class="{{ $destCat->icon_class }} text-3xl text-red-300"></i>
                </div>
                <p class="text-gray-400 text-sm">Belum ada destinasi untuk kategori <strong>{{ $destCat->name }}</strong>.</p>
                <p class="text-gray-300 text-xs mt-1">Tambahkan melalui panel admin.</p>
            </div>
            @endif
        </div>
        @endforeach

        <!-- Lightbox Modal -->
        <div
            x-show="lightbox"
            x-transition:enter="transition ease-out duration-200"
            x-transition:enter-start="opacity-0"
            x-transition:enter-end="opacity-100"
            x-transition:leave="transition ease-in duration-150"
            x-transition:leave-start="opacity-100"
            x-transition:leave-end="opacity-0"
            @click.self="closeLightbox()"
            class="fixed inset-0 z-[999] bg-black/80 backdrop-blur-sm flex items-center justify-center p-4"
            style="display:none;">

            <div
                x-show="lightbox"
                x-transition:enter="transition ease-out duration-250"
                x-transition:enter-start="opacity-0 scale-90"
                x-transition:enter-end="opacity-100 scale-100"
                x-transition:leave="transition ease-in duration-150"
                x-transition:leave-start="opacity-100 scale-100"
                x-transition:leave-end="opacity-0 scale-90"
                class="relative bg-white rounded-2xl shadow-2xl overflow-hidden max-w-2xl w-full mx-auto">

                {{-- Close Button --}}
                <button @click="closeLightbox()"
                        class="absolute top-3 right-3 z-10 w-8 h-8 bg-black/50 hover:bg-black/70 text-white rounded-full flex items-center justify-center transition-colors duration-200">
                    <i class="fas fa-times text-sm"></i>
                </button>

                {{-- Image --}}
                <div class="bg-gray-100">
                    <img :src="lightboxImg"
                         :alt="lightboxTitle"
                         class="w-full max-h-[60vh] object-contain">
                </div>

                {{-- Info --}}
                <div class="p-5">
                    <span class="inline-block bg-red-100 text-red-700 px-3 py-1 rounded-full text-xs font-bold mb-2" x-text="lightboxCat"></span>
                    <h3 class="font-bold text-gray-900 text-lg mb-1" x-text="lightboxTitle"></h3>
                    <p class="text-gray-500 text-sm line-clamp-3" x-text="lightboxDesc" x-show="lightboxDesc"></p>
                </div>
            </div>
        </div>

        <style>
            .scrollbar-hide::-webkit-scrollbar { display: none; }
            .scrollbar-hide { -ms-overflow-style: none; scrollbar-width: none; }
        </style>
    </div>
    @endif

    <!-- Banner Sliders -->
    @if($sliders->count() > 0)
    <div class="mb-12 rounded-xl overflow-hidden shadow-sm relative group">
        <div class="swiper banner-swiper">
            <div class="swiper-wrapper">
                @foreach($sliders as $slider)
                <div class="swiper-slide">
                    @if($slider->url)
                        <a href="{{ $slider->url }}" target="_blank" class="block w-full">
                            <img src="{{ asset('storage/' . $slider->image) }}" alt="{{ $slider->title }}" class="w-full h-auto">
                        </a>
                    @else
                        <img src="{{ asset('storage/' . $slider->image) }}" alt="{{ $slider->title }}" class="w-full h-auto">
                    @endif
                </div>
                @endforeach
            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination"></div>
            <!-- Add Navigation -->
            <div class="swiper-button-next text-white opacity-0 group-hover:opacity-100 transition-opacity"></div>
            <div class="swiper-button-prev text-white opacity-0 group-hover:opacity-100 transition-opacity"></div>
        </div>
    </div>

    <!-- Initialize Banner Swiper -->
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            if (typeof Swiper !== 'undefined') {
                new Swiper('.banner-swiper', {
                    loop: true,
                    autoHeight: true,
                    autoplay: {
                        delay: 5000,
                        disableOnInteraction: false,
                    },
                    pagination: {
                        el: '.swiper-pagination',
                        clickable: true,
                    },
                    navigation: {
                        nextEl: '.banner-swiper .swiper-button-next',
                        prevEl: '.banner-swiper .swiper-button-prev',
                    },
                });
            }
        });
    </script>
    @endif

   

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
            <!--<div class="bg-white p-6 rounded-xl shadow-sm border border-gray-100">
                <h3 class="font-bold mb-4 border-l-4 border-red-700 pl-3">TAG POPULER</h3>
                <div class="flex flex-wrap gap-2">
                    @foreach(\App\Models\Tag::take(10)->get() as $tag)
                    <a href="#" class="bg-gray-100 hover:bg-red-700 hover:text-white px-3 py-1 rounded-full text-xs text-gray-600 transition">
                        #{{ $tag->name }}
                    </a>
                    @endforeach
                </div>
            </div>-->
        </div>
    </div>

    <!-- Festival Section -->
    <!-- @if($festivals->count() > 0)
    <div id="festival" class="mt-16 mb-12" x-data="{ lightboxOpen: false, lightboxImage: '', lightboxTitle: '' }">
        <div class="text-center mb-10">
            <h3 class="text-4xl font-bold text-slate-900 mb-2">Festival & Kegiatan</h3>
            <p class="text-slate-500 text-lg">Event dan kegiatan terbaru kami</p>
        </div>

        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
            @foreach($festivals as $festival)
            <div class="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden
                        hover:shadow-lg hover:-translate-y-1 transition-all duration-300 group">
                {{-- Poster Image --}}
                <div class="relative overflow-hidden aspect-square bg-gray-100 cursor-pointer"
                     @click="lightboxOpen = true; lightboxImage = '{{ asset('storage/' . $festival->image) }}'; lightboxTitle = '{{ addslashes($festival->title) }}'">
                    @if($festival->image)
                        <img src="{{ asset('storage/' . $festival->image) }}"
                             alt="{{ $festival->title }}"
                             class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500">
                        <div class="absolute inset-0 bg-black/0 group-hover:bg-black/20 transition-colors duration-300 flex items-center justify-center">
                            <i class="fas fa-search-plus text-white text-3xl opacity-0 group-hover:opacity-100 transition-opacity duration-300"></i>
                        </div>
                    @else
                        <div class="w-full h-full flex items-center justify-center bg-gradient-to-br from-red-50 to-red-100">
                            <i class="fas fa-image text-5xl text-red-200"></i>
                        </div>
                    @endif
                </div>

                {{-- Card Info --}}
                <div class="p-5 text-center">
                    <h4 class="font-bold text-gray-800 text-lg leading-snug mb-2">
                        {{ $festival->title }}
                    </h4>
                    @if($festival->event_date)
                        <p class="text-sm font-medium text-blue-400">
                            {{ $festival->event_date->translatedFormat('d M Y') }}
                        </p>
                    @endif
                    @if($festival->description)
                        <p class="text-xs text-gray-400 mt-2 line-clamp-2">{{ $festival->description }}</p>
                    @endif
                </div>
            </div>
            @endforeach
        </div>

        {{-- Lightbox Modal --}}
        <div x-show="lightboxOpen" style="display: none;"
             class="fixed inset-0 z-[100] flex items-center justify-center bg-black/90 p-4"
             x-transition:enter="transition ease-out duration-300"
             x-transition:enter-start="opacity-0"
             x-transition:enter-end="opacity-100"
             x-transition:leave="transition ease-in duration-200"
             x-transition:leave-start="opacity-100"
             x-transition:leave-end="opacity-0">
            
            <div class="relative max-w-5xl w-full h-full flex flex-col items-center justify-center" @click.away="lightboxOpen = false">
                {{-- Close Button --}}
                <button @click="lightboxOpen = false" class="absolute top-4 right-4 text-white/70 hover:text-white z-10 focus:outline-none">
                    <i class="fas fa-times text-4xl"></i>
                </button>
                
                {{-- Full Image --}}
                <img :src="lightboxImage" :alt="lightboxTitle" class="max-h-[85vh] max-w-full object-contain shadow-2xl rounded-sm">
                
                {{-- Title --}}
                <h4 x-text="lightboxTitle" class="text-white text-xl font-bold mt-4 text-center"></h4>
            </div>
        </div>
    </div>
    @endif -->

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