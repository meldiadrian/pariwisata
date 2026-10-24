<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', $setting->site_name ?? 'Portal Berita')</title>

    <meta name="description" content="@yield('description', $setting->tagline ?? 'Portal Berita')">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="{{ $setting->site_name ?? 'Portal Berita' }}">
    <meta property="og:title" content="@yield('title', $setting->site_name ?? 'Portal Berita')">
    <meta property="og:description" content="@yield('description', $setting->tagline ?? 'Portal Berita')">
    <meta property="og:url" content="{{ url()->current() }}">
    <meta property="og:image"
        content="{{ !empty($setting->logo) ? asset('storage/' . $setting->logo) : asset('storage/lg-wisata.png') }}">
    <meta name="twitter:card" content="summary_large_image">
    <link rel="canonical" href="{{ url()->current() }}">
    <meta name="theme-color" content="#b91c1c">

    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');

        body {
            font-family: 'Inter', sans-serif;
        }
    </style>
</head>

<body class="bg-gray-50 text-gray-900" x-data="{ scrolled: false }"
    @scroll.window="scrolled = (window.pageYOffset > 300) ? true : false">

    <!-- Preloader -->
    <div id="site-preloader"
        class="fixed inset-0 z-[9999] bg-white flex items-center justify-center transition-opacity duration-5000000">
        <div class="relative flex items-center justify-center">
            <!-- Donut Spinner -->
            <div class="w-24 h-24 border-4 border-gray-200 border-t-red-700 rounded-full animate-spin"></div>
            <!-- Logo in Center -->
            <div class="absolute inset-0 flex items-center justify-center">
                @if(!empty($setting->logo))
                    <img src="{{ asset('storage/' . $setting->logo) }}" alt="Logo"
                        class="h-10 w-auto max-w-full max-h-full object-contain animate-pulse">
                @else
                    <div
                        class="h-10 w-10 rounded-full bg-gradient-to-br from-red-600 to-red-800 flex items-center justify-center flex-shrink-0 animate-pulse">
                        <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5" />
                        </svg>
                    </div>
                @endif
            </div>
        </div>
    </div>

    <!-- Topbar -->
    <div class="bg-red-700 text-white py-2 text-sm">
        <div class="container mx-auto px-4 flex justify-between items-center">
            <div>
                <i class="far fa-calendar-alt mr-2"></i> {{ now()->translatedFormat('l, d F Y') }}
            </div>
            @if($breaking)
                <div class="hidden md:block flex-1 mx-8 overflow-hidden">
                    <span class="font-bold mr-2 text-yellow-300">BREAKING NEWS:</span>
                    <a href="{{ route('news.show', $breaking->slug) }}" class="hover:underline">{{ $breaking->title }}</a>
                </div>
            @endif
            <div class="flex space-x-4">
                <a href="https://www.facebook.com/profile.php?id=100083774987735"><i class="fab fa-facebook"></i></a>
                <a href="#"><i class="fab fa-youtube"></i></a>
                <a href="https://www.instagram.com/pariwisatabks_official/"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </div>

    <!-- Header -->
    <header class="bg-white shadow-sm sticky top-0 z-50" x-data="{ mobileOpen: false }">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center py-3">
                {{-- ── Logo & Site Identity ────────────────────────── --}}
                <a href="{{ route('home') }}" class="flex items-center gap-3 group flex-shrink-0">
                    @if(!empty($setting->logo))
                        <x-responsive-image :src="$setting->logo" :alt="$setting->site_name ?? 'Logo'"
                            class="h-14 w-32 object-contain flex-shrink-0 drop-shadow-sm group-hover:scale-105 transition-transform duration-200"
                            :lazy="false" />
                    @else
                        {{-- Fallback emblem when no logo is set --}}
                        <div class="h-14 w-14 rounded-full bg-gradient-to-br from-red-600 to-red-800
                                                    flex items-center justify-center flex-shrink-0 shadow
                                                    group-hover:scale-105 transition-transform duration-200">
                            <svg class="w-8 h-8 text-white" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5" />
                            </svg>
                        </div>
                    @endif

                    <div class="leading-tight">
                        <div class="text-l font-extrabold tracking-wide text-red-700  leading-none">
                            {{ $setting->site_name ?? 'PORTAL BERITA' }}
                        </div>
                        @if(!empty($setting->tagline ?? $setting->address))
                            <div class="text-xs font-medium text-gray-500 mt-0.5 leading-snug">
                                {{ $setting->tagline ?? \Illuminate\Support\Str::words($setting->address ?? '', 4, '') }}
                            </div>
                        @else
                            <div class="text-xs font-medium text-gray-500 mt-0.5">Portal Berita Terpercaya</div>
                        @endif
                    </div>
                </a>

                {{-- ── Desktop Navigation ─────────────────────────────── --}}
                <nav class="hidden lg:flex items-center space-x-1 font-semibold uppercase text-sm">
                    @php
                        /**
                         * Helper closure: resolve a menu item's URL based on its type.
                         */
                        $resolveUrl = function (array $item) use (&$resolveUrl): ?string {
                            return match ($item['type'] ?? null) {
                                'page' => ($p = \App\Models\Page::find($item['page_id'] ?? null))
                                ? route('page.show', $p->slug) : null,
                                'category' => ($c = \App\Models\Category::find($item['category_id'] ?? null))
                                ? route('news.category', $c->slug) : null,
                                'festival' => url('/') . '#festival',
                                'url' => $item['url'] ?? '#',
                                default => '#',
                            };
                        };
                    @endphp

                    @if(!empty($setting->main_menu) && is_array($setting->main_menu))
                        @foreach($setting->main_menu as $menuItem)
                            @php
                                $hasChildren = !empty($menuItem['children']) && is_array($menuItem['children']);
                                $level1Url = $resolveUrl($menuItem);
                            @endphp

                            @if($hasChildren)
                                {{-- Level 1 with Dropdown --}}
                                <div class="relative" x-data="{ open: false }" @mouseenter="open = true" @mouseleave="open = false">

                                    <button @click="open = !open"
                                        class="flex items-center gap-1 px-3 py-2 rounded hover:text-red-700 transition focus:outline-none">
                                        {{ $menuItem['label'] }}
                                        <svg class="w-3 h-3 transition-transform duration-200" :class="{ 'rotate-180': open }"
                                            fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2.5">
                                            <path stroke-linecap="round" stroke-linejoin="round" d="M19 9l-7 7-7-7" />
                                        </svg>
                                    </button>

                                    {{-- Level 2 Dropdown --}}
                                    <div x-show="open" x-transition:enter="transition ease-out duration-150"
                                        x-transition:enter-start="opacity-0 translate-y-1"
                                        x-transition:enter-end="opacity-100 translate-y-0"
                                        x-transition:leave="transition ease-in duration-100"
                                        x-transition:leave-start="opacity-100 translate-y-0"
                                        x-transition:leave-end="opacity-0 translate-y-1"
                                        class="absolute top-full left-0 mt-1 w-52 bg-white rounded-lg shadow-xl border border-gray-100 py-1 z-50"
                                        style="display:none;">
                                        @foreach($menuItem['children'] as $subItem)
                                            @php
                                                $hasSubChildren = !empty($subItem['children']) && is_array($subItem['children']);
                                                $level2Url = $resolveUrl($subItem);
                                            @endphp

                                            @if($hasSubChildren)
                                                {{-- Level 2 item with flyout --}}
                                                <div class="relative group/sub" x-data="{ subOpen: false }" @mouseenter="subOpen = true"
                                                    @mouseleave="subOpen = false">

                                                    <button @click="subOpen = !subOpen"
                                                        class="w-full flex items-center justify-between px-4 py-2 text-sm normal-case font-medium text-gray-700 hover:bg-red-50 hover:text-red-700 transition">
                                                        {{ $subItem['label'] }}
                                                        <svg class="w-3 h-3 -rotate-90" fill="none" viewBox="0 0 24 24"
                                                            stroke="currentColor" stroke-width="2.5">
                                                            <path stroke-linecap="round" stroke-linejoin="round" d="M19 9l-7 7-7-7" />
                                                        </svg>
                                                    </button>

                                                    {{-- Level 3 Flyout --}}
                                                    <div x-show="subOpen" x-transition:enter="transition ease-out duration-150"
                                                        x-transition:enter-start="opacity-0 -translate-x-1"
                                                        x-transition:enter-end="opacity-100 translate-x-0"
                                                        x-transition:leave="transition ease-in duration-100"
                                                        x-transition:leave-start="opacity-100 translate-x-0"
                                                        x-transition:leave-end="opacity-0 -translate-x-1"
                                                        class="absolute top-0 left-full ml-1 w-52 bg-white rounded-lg shadow-xl border border-gray-100 py-1 z-50"
                                                        style="display:none;">
                                                        @foreach($subItem['children'] as $subSubItem)
                                                            @php $level3Url = $resolveUrl($subSubItem); @endphp
                                                            @if($level3Url)
                                                                <a href="{{ $level3Url }}"
                                                                    class="block px-4 py-2 text-sm normal-case font-medium text-gray-700 hover:bg-red-50 hover:text-red-700 transition">
                                                                    {{ $subSubItem['label'] }}
                                                                </a>
                                                            @endif
                                                        @endforeach
                                                    </div>
                                                </div>
                                            @else
                                                {{-- Level 2 plain link --}}
                                                @if($level2Url)
                                                    <a href="{{ $level2Url }}"
                                                        class="block px-4 py-2 text-sm normal-case font-medium text-gray-700 hover:bg-red-50 hover:text-red-700 transition">
                                                        {{ $subItem['label'] }}
                                                    </a>
                                                @endif
                                            @endif
                                        @endforeach
                                    </div>
                                </div>
                            @else
                                {{-- Level 1 plain link --}}
                                @if($level1Url)
                                    <a href="{{ $level1Url }}" class="px-3 py-2 rounded hover:text-red-700 transition">
                                        {{ $menuItem['label'] }}
                                    </a>
                                @endif
                            @endif
                        @endforeach
                    @else
                        @foreach($categories as $category)
                            <a href="{{ route('news.category', $category->slug) }}"
                                class="px-3 py-2 rounded hover:text-red-700 transition">
                                {{ $category->name }}
                            </a>
                        @endforeach
                    @endif

                    <a href="{{ url('/') }}#galeri" class="px-3 py-2 rounded hover:text-red-700 transition">Galeri</a>
                </nav>

                <div class="flex items-center space-x-4">
                    <button class="text-gray-600 hover:text-red-700"><i class="x-search"></i></button>

                    {{-- Mobile hamburger --}}
                    <button @click="mobileOpen = !mobileOpen"
                        class="lg:hidden text-gray-600 hover:text-red-700 focus:outline-none">
                        <svg class="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                            <path x-show="!mobileOpen" stroke-linecap="round" stroke-linejoin="round"
                                d="M4 6h16M4 12h16M4 18h16" />
                            <path x-show="mobileOpen" stroke-linecap="round" stroke-linejoin="round"
                                d="M6 18L18 6M6 6l12 12" style="display:none;" />
                        </svg>
                    </button>
                </div>
            </div>

            {{-- ── Mobile Navigation ─────────────────────────────────── --}}
            <nav x-show="mobileOpen" x-transition:enter="transition ease-out duration-200"
                x-transition:enter-start="opacity-0 -translate-y-2" x-transition:enter-end="opacity-100 translate-y-0"
                x-transition:leave="transition ease-in duration-150"
                x-transition:leave-start="opacity-100 translate-y-0" x-transition:leave-end="opacity-0 -translate-y-2"
                class="lg:hidden border-t border-gray-100 py-3 space-y-1" style="display:none;">

                @if(!empty($setting->main_menu) && is_array($setting->main_menu))
                    @foreach($setting->main_menu as $menuItem)
                        @php
                            $hasChildren = !empty($menuItem['children']) && is_array($menuItem['children']);
                            $level1Url = $resolveUrl($menuItem);
                        @endphp

                        @if($hasChildren)
                            <div x-data="{ open: false }">
                                <button @click="open = !open"
                                    class="w-full flex justify-between items-center px-4 py-2 font-semibold uppercase text-sm text-gray-700 hover:text-red-700 transition">
                                    {{ $menuItem['label'] }}
                                    <svg class="w-4 h-4 transition-transform" :class="{ 'rotate-180': open }" fill="none"
                                        viewBox="0 0 24 24" stroke="currentColor" stroke-width="2.5">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M19 9l-7 7-7-7" />
                                    </svg>
                                </button>
                                <div x-show="open" class="pl-4 space-y-1" style="display:none;">
                                    @foreach($menuItem['children'] as $subItem)
                                        @php
                                            $hasSubChildren = !empty($subItem['children']) && is_array($subItem['children']);
                                            $level2Url = $resolveUrl($subItem);
                                        @endphp

                                        @if($hasSubChildren)
                                            <div x-data="{ subOpen: false }">
                                                <button @click="subOpen = !subOpen"
                                                    class="w-full flex justify-between items-center px-4 py-2 text-sm text-gray-600 hover:text-red-700 transition">
                                                    {{ $subItem['label'] }}
                                                    <svg class="w-3 h-3 transition-transform" :class="{ 'rotate-180': subOpen }" fill="none"
                                                        viewBox="0 0 24 24" stroke="currentColor" stroke-width="2.5">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="M19 9l-7 7-7-7" />
                                                    </svg>
                                                </button>
                                                <div x-show="subOpen" class="pl-4 space-y-1" style="display:none;">
                                                    @foreach($subItem['children'] as $subSubItem)
                                                        @php $level3Url = $resolveUrl($subSubItem); @endphp
                                                        @if($level3Url)
                                                            <a href="{{ $level3Url }}"
                                                                class="block px-4 py-2 text-xs text-gray-500 hover:text-red-700 transition">
                                                                {{ $subSubItem['label'] }}
                                                            </a>
                                                        @endif
                                                    @endforeach
                                                </div>
                                            </div>
                                        @else
                                            @if($level2Url)
                                                <a href="{{ $level2Url }}"
                                                    class="block px-4 py-2 text-sm text-gray-600 hover:text-red-700 transition">
                                                    {{ $subItem['label'] }}
                                                </a>
                                            @endif
                                        @endif
                                    @endforeach
                                </div>
                            </div>
                        @else
                            @if($level1Url)
                                <a href="{{ $level1Url }}"
                                    class="block px-4 py-2 font-semibold uppercase text-sm text-gray-700 hover:text-red-700 transition">
                                    {{ $menuItem['label'] }}
                                </a>
                            @endif
                        @endif
                    @endforeach
                @else
                    @foreach($categories as $category)
                        <a href="{{ route('news.category', $category->slug) }}"
                            class="block px-4 py-2 font-semibold uppercase text-sm text-gray-700 hover:text-red-700 transition">
                            {{ $category->name }}
                        </a>
                    @endforeach
                @endif

                <a href="{{ url('/') }}#galeri"
                    class="block px-4 py-2 font-semibold uppercase text-sm text-gray-700 hover:text-red-700 transition">
                    Galeri
                </a>
            </nav>
        </div>
    </header>



    <main class="container mx-auto px-4 py-8">
        @yield('content')
    </main>

    <!-- Footer -->
    <footer class="bg-gray-900 text-white pt-12 pb-6">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-8 mb-8 border-b border-gray-800 pb-8">
                <div class="col-span-1 md:col-span-1">
                    <h2 class="text-sm font-bold mb-4 text-red-500">{{ $setting->site_name ?? 'NEWS PORTAL' }}</h2>
                    <!------<p class="text-gray-400 text-sm mb-4">{{ 'Jl. Arief Rahman No.24, Bengkalis Kota, Kec. Bengkalis
' }}</p> -->

                    <img src="{{ asset('storage/lg-wisata.png') }}" alt="Logo" class="mb-4 w-32 h-auto rounded-xl">

                    <div class="flex space-x-4">
                        <a href="https://www.facebook.com/profile.php?id=100083774987735"><i
                                class="fab fa-facebook"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                        <a href="https://www.instagram.com/pariwisatabks_official/"><i class="fab fa-instagram"></i></a>
                    </div>

                </div>
                <div>
                    <h3 class="font-bold mb-4 uppercase">Kategori</h3>
                    <ul class="text-gray-400 text-sm space-y-2">
                        @foreach($categories->take(6) as $category)
                            <li><a href="{{ route('news.category', $category->slug) }}"
                                    class="hover:text-white">{{ $category->name }}</a></li>
                        @endforeach
                    </ul>
                </div>
                <div>
                    <h3 class="font-bold mb-4 uppercase">Lokasi</h3>
                    <div class="rounded-m overflow-hidden shadow-xl">
                        <iframe class="rounded-xl w-full h-[150px]"
                            src="https://www.google.com/maps?q=Jl.+Arif+Rahman+No.24,+Bengkalis+Kota,+Kec.+Bengkalis,+Kabupaten+Bengkalis,+Riau+28713&output=embed"
                            loading="lazy" allowfullscreen>
                        </iframe>
                    </div>
                </div>
                <div>
                    <h3 class="font-bold mb-4 uppercase">Kontak</h3>
                    <ul class="text-gray-400 text-sm space-y-2">
                        <li>Jl. Arif Rahman No.24, Bengkalis Kota,<br></li>
                        <li>Kabupaten Bengkalis,Riau 28713<br></li>
                        <li>Telp : 076622720</li>
                    </ul>



                </div>
            </div>
        </div>
        <div class="text-center text-gray-500 text-xs">
            &copy; {{ date('Y') }} {{ $setting->site_name ?? 'News Portal' }}. All rights reserved.
            <br>Dikembangkan oleh TIM IT Diskominfotik Kab. Bengkalis
        </div>
        </div>
    </footer>

    <!-- Go Up Button -->
    <button x-show="scrolled" x-transition @click="window.scrollTo({top: 0, behavior: 'smooth'})"
        class="fixed bottom-8 right-8 bg-red-700 text-white w-12 h-12 rounded-full shadow-lg flex items-center justify-center hover:bg-red-800 transition-colors z-50">
        <i class="fas fa-arrow-up"></i>
    </button>

    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script>
        const swiper = new Swiper('.hero-swiper', {
            loop: true,
            autoplay: {
                delay: 5000
            },
            pagination: {
                el: '.swiper-pagination',
                clickable: true
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
        });

        // Preloader Script
        window.addEventListener('load', function () {
            const preloader = document.getElementById('site-preloader');
            if (preloader) {
                preloader.style.opacity = '0';
                setTimeout(() => {
                    preloader.style.display = 'none';
                }, 500); // Wait for transition to complete
            }
        });
    </script>
</body>

</html>