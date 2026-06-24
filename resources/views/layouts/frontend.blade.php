<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', $setting->site_name ?? 'Portal Berita')</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');
        body { font-family: 'Inter', sans-serif; }
    </style>
</head>
<body class="bg-gray-50 text-gray-900">

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
                <a href="#"><i class="fab fa-facebook"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </div>

    <!-- Header -->
    <header class="bg-white shadow-sm sticky top-0 z-50">
        <div class="container mx-auto px-4">
            <div class="flex justify-between items-center py-4">
                <a href="{{ route('home') }}" class="text-3xl font-black text-red-700 tracking-tighter">
                    {{ $setting->site_name ?? 'NEWS' }}<span class="text-gray-900">PORTAL</span>
                </a>
                
                <div class="hidden lg:flex space-x-6 font-semibold uppercase text-sm">
                    @foreach($categories as $category)
                        <a href="{{ route('news.category', $category->slug) }}" class="hover:text-red-700 transition">{{ $category->name }}</a>
                    @endforeach
                </div>

                <div class="flex items-center space-x-4">
                    <button class="text-gray-600 hover:text-red-700"><i class="fas fa-search"></i></button>
                    <a href="/admin" class="bg-gray-900 text-white px-4 py-2 rounded text-xs font-bold uppercase hover:bg-red-700 transition">Login</a>
                </div>
            </div>
        </div>
    </header>

    <main class="container mx-auto px-4 py-8">
        @yield('content')
    </main>

    <!-- Footer -->
    <footer class="bg-gray-900 text-white pt-12 pb-6">
        <div class="container mx-auto px-4">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-8 mb-8 border-b border-gray-800 pb-8">
                <div class="col-span-1 md:col-span-1">
                    <h2 class="text-2xl font-bold mb-4 text-red-500">{{ $setting->site_name ?? 'NEWS PORTAL' }}</h2>
                    <p class="text-gray-400 text-sm mb-4">{{ $setting->about_us ?? '' }}</p>
                    <div class="flex space-x-4">
                        <a href="#" class="text-gray-400 hover:text-white"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="text-gray-400 hover:text-white"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="text-gray-400 hover:text-white"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div>
                    <h3 class="font-bold mb-4 uppercase">Kategori</h3>
                    <ul class="text-gray-400 text-sm space-y-2">
                        @foreach($categories->take(6) as $category)
                            <li><a href="{{ route('news.category', $category->slug) }}" class="hover:text-white">{{ $category->name }}</a></li>
                        @endforeach
                    </ul>
                </div>
                <div>
                    <h3 class="font-bold mb-4 uppercase">Informasi</h3>
                    <ul class="text-gray-400 text-sm space-y-2">
                        <li><a href="#" class="hover:text-white">Tentang Kami</a></li>
                        <li><a href="#" class="hover:text-white">Kontak</a></li>
                        <li><a href="#" class="hover:text-white">Kebijakan Privasi</a></li>
                    </ul>
                </div>
                <div>
                    <h3 class="font-bold mb-4 uppercase">Newsletter</h3>
                    <p class="text-gray-400 text-xs mb-4">Dapatkan berita terbaru langsung di email Anda.</p>
                    <form class="flex">
                        <input type="email" placeholder="Email Anda" class="bg-gray-800 border-none rounded-l px-3 py-2 w-full text-sm">
                        <button class="bg-red-700 px-4 py-2 rounded-r hover:bg-red-600 transition">Daftar</button>
                    </form>
                </div>
            </div>
            <div class="text-center text-gray-500 text-xs">
                &copy; {{ date('Y') }} {{ $setting->site_name ?? 'News Portal' }}. All rights reserved.
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script>
        const swiper = new Swiper('.hero-swiper', {
            loop: true,
            autoplay: { delay: 5000 },
            pagination: { el: '.swiper-pagination', clickable: true },
            navigation: { nextEl: '.swiper-button-next', prevEl: '.swiper-button-prev' },
        });
    </script>
</body>
</html>