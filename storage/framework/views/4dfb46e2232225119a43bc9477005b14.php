<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $__env->yieldContent('title', $setting->site_name ?? 'Portal Berita'); ?></title>

    <meta name="description" content="<?php echo $__env->yieldContent('description', $setting->tagline ?? 'Portal Berita'); ?>">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="<?php echo e($setting->site_name ?? 'Portal Berita'); ?>">
    <meta property="og:title" content="<?php echo $__env->yieldContent('title', $setting->site_name ?? 'Portal Berita'); ?>">
    <meta property="og:description" content="<?php echo $__env->yieldContent('description', $setting->tagline ?? 'Portal Berita'); ?>">
    <meta property="og:url" content="<?php echo e(url()->current()); ?>">
    <meta property="og:image"
        content="<?php echo e(!empty($setting->logo) ? asset('storage/' . $setting->logo) : asset('storage/lg-wisata.png')); ?>">
    <meta name="twitter:card" content="summary_large_image">
    <link rel="canonical" href="<?php echo e(url()->current()); ?>">
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

        /* ── Global: prevent horizontal overflow ── */
        html, body { overflow-x: hidden; }
        main { overflow-x: hidden; }

        /* ── Images: never overflow ── */
        img { max-width: 100%; height: auto; }
        img.object-cover { height: 100%; }

        /* ── Scrollbar hide utility ── */
        .scrollbar-hide::-webkit-scrollbar { display: none; }
        .scrollbar-hide { -ms-overflow-style: none; scrollbar-width: none; }

        /* ── Prose / rich content ── */
        .prose img  { max-width: 100%; height: auto; border-radius: 0.5rem; }
        .prose iframe { max-width: 100%; }
        .prose pre   { overflow-x: auto; -webkit-overflow-scrolling: touch; }
        .prose table { display: block; width: 100%; overflow-x: auto; -webkit-overflow-scrolling: touch; }
        .prose p, .prose li { word-break: break-word; overflow-wrap: break-word; }
        /* Responsive video embeds inside prose */
        .prose .video-wrapper, .prose figure { position: relative; width: 100%; padding-bottom: 56.25%; }
        .prose .video-wrapper iframe, .prose figure iframe {
            position: absolute; inset: 0; width: 100%; height: 100%;
        }

        /* ── Swiper: hide nav arrows on small screens ── */
        @media (max-width: 639px) {
            .swiper-button-next, .swiper-button-prev { display: none !important; }
        }

        /* ── Go-up button: compact on mobile ── */
        @media (max-width: 639px) {
            #go-up-btn {
                bottom: 1rem !important;
                right: 1rem !important;
                width: 2.5rem !important;
                height: 2.5rem !important;
            }
        }

        /* ── Footer iframe map ── */
        .footer-map-iframe {
            width: 100%;
            height: 150px;
            border-radius: 0.75rem;
            display: block;
        }

        /* ── Mobile nav smooth transition ── */
        .mobile-nav-item { transition: background-color 0.15s ease; }
        .mobile-nav-item:active { background-color: #fef2f2; }

    </style>

</head>

<body class="bg-gray-50 text-gray-900 overflow-x-hidden" x-data="{ scrolled: false }"
    @scroll.window="scrolled = (window.pageYOffset > 300) ? true : false">

    <!-- Preloader -->
    <div id="site-preloader"
        class="fixed inset-0 z-[9999] bg-white flex items-center justify-center transition-opacity duration-5000000">
        <div class="relative flex items-center justify-center">
            <!-- Donut Spinner -->
            <div class="w-24 h-24 border-4 border-gray-200 border-t-red-700 rounded-full animate-spin"></div>
            <!-- Logo in Center -->
            <div class="absolute inset-0 flex items-center justify-center">
                <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if(!empty($setting->logo)): ?>
                    <img src="<?php echo e(asset('storage/' . $setting->logo)); ?>" alt="Logo"
                        class="h-10 w-auto max-w-full max-h-full object-contain animate-pulse">
                <?php else: ?>
                    <div
                        class="h-10 w-10 rounded-full bg-gradient-to-br from-red-600 to-red-800 flex items-center justify-center flex-shrink-0 animate-pulse">
                        <svg class="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5" />
                        </svg>
                    </div>
                <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
            </div>
        </div>
    </div>

    <!-- Topbar -->
    <div class="bg-red-700 text-white py-2 text-sm">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 flex items-center gap-3 min-w-0">
            
            <div class="hidden sm:flex items-center shrink-0 whitespace-nowrap">
                <i class="far fa-calendar-alt mr-2"></i><?php echo e(now()->translatedFormat('l, d F Y')); ?>

            </div>
            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($breaking): ?>
                <div class="hidden md:flex flex-1 items-center overflow-hidden min-w-0">
                    <span class="font-bold mr-2 text-yellow-300 shrink-0 whitespace-nowrap">BREAKING:</span>
                    <a href="<?php echo e(route('news.show', $breaking->slug)); ?>"
                        class="hover:underline truncate block min-w-0"><?php echo e($breaking->title); ?></a>
                </div>
            <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
            <div class="flex items-center space-x-4 ml-auto shrink-0">
                <a href="https://www.facebook.com/profile.php?id=100083774987735"
                    class="hover:text-yellow-300 transition-colors"><i class="fab fa-facebook"></i></a>
                <a href="#" class="hover:text-yellow-300 transition-colors"><i class="fab fa-youtube"></i></a>
                <a href="https://www.instagram.com/pariwisatabks_official/"
                    class="hover:text-yellow-300 transition-colors"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </div>

    <!-- Header -->
    <header class="bg-white shadow-sm sticky top-0 z-50" x-data="{ mobileOpen: false }">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center py-3 gap-2 min-w-0">
                
                <a href="<?php echo e(route('home')); ?>" class="flex items-center gap-2 sm:gap-3 group shrink-0 min-w-0">
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if(!empty($setting->logo)): ?>
                        <?php if (isset($component)) { $__componentOriginale75524dba4ffced2baa5b8fd1d6ea996 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginale75524dba4ffced2baa5b8fd1d6ea996 = $attributes; } ?>
<?php $component = App\View\Components\ResponsiveImage::resolve(['src' => $setting->logo,'alt' => $setting->site_name ?? 'Logo','class' => 'h-10 sm:h-14 w-24 sm:w-32 object-contain flex-shrink-0 drop-shadow-sm group-hover:scale-105 transition-transform duration-200','lazy' => false] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('responsive-image'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\App\View\Components\ResponsiveImage::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::processComponentKey($component); ?>

<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginale75524dba4ffced2baa5b8fd1d6ea996)): ?>
<?php $attributes = $__attributesOriginale75524dba4ffced2baa5b8fd1d6ea996; ?>
<?php unset($__attributesOriginale75524dba4ffced2baa5b8fd1d6ea996); ?>
<?php endif; ?>
<?php if (isset($__componentOriginale75524dba4ffced2baa5b8fd1d6ea996)): ?>
<?php $component = $__componentOriginale75524dba4ffced2baa5b8fd1d6ea996; ?>
<?php unset($__componentOriginale75524dba4ffced2baa5b8fd1d6ea996); ?>
<?php endif; ?>
                    <?php else: ?>
                        
                        <div class="h-14 w-14 rounded-full bg-gradient-to-br from-red-600 to-red-800
                                                            flex items-center justify-center flex-shrink-0 shadow
                                                            group-hover:scale-105 transition-transform duration-200">
                            <svg class="w-8 h-8 text-white" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5" />
                            </svg>
                        </div>
                    <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>

                    <div class="leading-tight min-w-0">
                        <div
                            class="text-sm sm:text-base font-extrabold tracking-wide text-red-700 leading-none truncate">
                            <?php echo e($setting->site_name ?? 'PORTAL BERITA'); ?>

                        </div>
                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if(!empty($setting->tagline ?? $setting->address)): ?>
                            <div class="text-xs font-medium text-gray-500 mt-0.5 leading-snug truncate">
                                <?php echo e($setting->tagline ?? \Illuminate\Support\Str::words($setting->address ?? '', 4, '')); ?>

                            </div>
                        <?php else: ?>
                            <div class="text-xs font-medium text-gray-500 mt-0.5 truncate">Portal Berita Terpercaya</div>
                        <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                    </div>
                </a>

                
                <nav class="hidden lg:flex items-center space-x-1 font-semibold uppercase text-sm">
                    <?php
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
                    ?>

                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if(!empty($setting->main_menu) && is_array($setting->main_menu)): ?>
                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $setting->main_menu; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $menuItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                            <?php
                                $hasChildren = !empty($menuItem['children']) && is_array($menuItem['children']);
                                $level1Url = $resolveUrl($menuItem);
                            ?>

                            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($hasChildren): ?>
                                
                                <div class="relative" x-data="{ open: false }" @mouseenter="open = true" @mouseleave="open = false">

                                    <button @click="open = !open"
                                        class="flex items-center gap-1 px-3 py-2 rounded hover:text-red-700 transition focus:outline-none">
                                        <?php echo e($menuItem['label']); ?>

                                        <svg class="w-3 h-3 transition-transform duration-200" :class="{ 'rotate-180': open }"
                                            fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2.5">
                                            <path stroke-linecap="round" stroke-linejoin="round" d="M19 9l-7 7-7-7" />
                                        </svg>
                                    </button>

                                    
                                    <div x-show="open" x-transition:enter="transition ease-out duration-150"
                                        x-transition:enter-start="opacity-0 translate-y-1"
                                        x-transition:enter-end="opacity-100 translate-y-0"
                                        x-transition:leave="transition ease-in duration-100"
                                        x-transition:leave-start="opacity-100 translate-y-0"
                                        x-transition:leave-end="opacity-0 translate-y-1"
                                        class="absolute top-full left-0 mt-1 w-52 bg-white rounded-lg shadow-xl border border-gray-100 py-1 z-50"
                                        style="display:none;">
                                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $menuItem['children']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                                            <?php
                                                $hasSubChildren = !empty($subItem['children']) && is_array($subItem['children']);
                                                $level2Url = $resolveUrl($subItem);
                                            ?>

                                            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($hasSubChildren): ?>
                                                
                                                <div class="relative group/sub" x-data="{ subOpen: false }" @mouseenter="subOpen = true"
                                                    @mouseleave="subOpen = false">

                                                    <button @click="subOpen = !subOpen"
                                                        class="w-full flex items-center justify-between px-4 py-2 text-sm normal-case font-medium text-gray-700 hover:bg-red-50 hover:text-red-700 transition">
                                                        <?php echo e($subItem['label']); ?>

                                                        <svg class="w-3 h-3 -rotate-90" fill="none" viewBox="0 0 24 24"
                                                            stroke="currentColor" stroke-width="2.5">
                                                            <path stroke-linecap="round" stroke-linejoin="round" d="M19 9l-7 7-7-7" />
                                                        </svg>
                                                    </button>

                                                    
                                                    <div x-show="subOpen" x-transition:enter="transition ease-out duration-150"
                                                        x-transition:enter-start="opacity-0 -translate-x-1"
                                                        x-transition:enter-end="opacity-100 translate-x-0"
                                                        x-transition:leave="transition ease-in duration-100"
                                                        x-transition:leave-start="opacity-100 translate-x-0"
                                                        x-transition:leave-end="opacity-0 -translate-x-1"
                                                        class="absolute top-0 left-full ml-1 w-52 bg-white rounded-lg shadow-xl border border-gray-100 py-1 z-50"
                                                        style="display:none;">
                                                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $subItem['children']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subSubItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                                                            <?php $level3Url = $resolveUrl($subSubItem); ?>
                                                            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($level3Url): ?>
                                                                <a href="<?php echo e($level3Url); ?>"
                                                                    class="block px-4 py-2 text-sm normal-case font-medium text-gray-700 hover:bg-red-50 hover:text-red-700 transition">
                                                                    <?php echo e($subSubItem['label']); ?>

                                                                </a>
                                                            <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                                                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
                                                    </div>
                                                </div>
                                            <?php else: ?>
                                                
                                                <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($level2Url): ?>
                                                    <a href="<?php echo e($level2Url); ?>"
                                                        class="block px-4 py-2 text-sm normal-case font-medium text-gray-700 hover:bg-red-50 hover:text-red-700 transition">
                                                        <?php echo e($subItem['label']); ?>

                                                    </a>
                                                <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                                            <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
                                    </div>
                                </div>
                            <?php else: ?>
                                
                                <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($level1Url): ?>
                                    <a href="<?php echo e($level1Url); ?>" class="px-3 py-2 rounded hover:text-red-700 transition">
                                        <?php echo e($menuItem['label']); ?>

                                    </a>
                                <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                            <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
                    <?php else: ?>
                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                            <a href="<?php echo e(route('news.category', $category->slug)); ?>"
                                class="px-3 py-2 rounded hover:text-red-700 transition">
                                <?php echo e($category->name); ?>

                            </a>
                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
                    <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>

                    <a href="<?php echo e(url('/')); ?>#galeri" class="px-3 py-2 rounded hover:text-red-700 transition">Galeri</a>
                </nav>

                <div class="flex items-center space-x-4">
                    <button class="text-gray-600 hover:text-red-700"><i class="x-search"></i></button>

                    
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

            
            <nav x-show="mobileOpen" x-transition:enter="transition ease-out duration-200"
                x-transition:enter-start="opacity-0 -translate-y-2" x-transition:enter-end="opacity-100 translate-y-0"
                x-transition:leave="transition ease-in duration-150"
                x-transition:leave-start="opacity-100 translate-y-0" x-transition:leave-end="opacity-0 -translate-y-2"
                class="lg:hidden border-t border-gray-100 py-3 space-y-1" style="display:none;">

                <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if(!empty($setting->main_menu) && is_array($setting->main_menu)): ?>
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $setting->main_menu; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $menuItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                        <?php
                            $hasChildren = !empty($menuItem['children']) && is_array($menuItem['children']);
                            $level1Url = $resolveUrl($menuItem);
                        ?>

                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($hasChildren): ?>
                            <div x-data="{ open: false }">
                                <button @click="open = !open"
                                    class="w-full flex justify-between items-center px-4 py-2 font-semibold uppercase text-sm text-gray-700 hover:text-red-700 transition">
                                    <?php echo e($menuItem['label']); ?>

                                    <svg class="w-4 h-4 transition-transform" :class="{ 'rotate-180': open }" fill="none"
                                        viewBox="0 0 24 24" stroke="currentColor" stroke-width="2.5">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M19 9l-7 7-7-7" />
                                    </svg>
                                </button>
                                <div x-show="open" class="pl-4 space-y-1" style="display:none;">
                                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $menuItem['children']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                                        <?php
                                            $hasSubChildren = !empty($subItem['children']) && is_array($subItem['children']);
                                            $level2Url = $resolveUrl($subItem);
                                        ?>

                                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($hasSubChildren): ?>
                                            <div x-data="{ subOpen: false }">
                                                <button @click="subOpen = !subOpen"
                                                    class="w-full flex justify-between items-center px-4 py-2 text-sm text-gray-600 hover:text-red-700 transition">
                                                    <?php echo e($subItem['label']); ?>

                                                    <svg class="w-3 h-3 transition-transform" :class="{ 'rotate-180': subOpen }" fill="none"
                                                        viewBox="0 0 24 24" stroke="currentColor" stroke-width="2.5">
                                                        <path stroke-linecap="round" stroke-linejoin="round" d="M19 9l-7 7-7-7" />
                                                    </svg>
                                                </button>
                                                <div x-show="subOpen" class="pl-4 space-y-1" style="display:none;">
                                                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $subItem['children']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subSubItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                                                        <?php $level3Url = $resolveUrl($subSubItem); ?>
                                                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($level3Url): ?>
                                                            <a href="<?php echo e($level3Url); ?>"
                                                                class="block px-4 py-2 text-xs text-gray-500 hover:text-red-700 transition">
                                                                <?php echo e($subSubItem['label']); ?>

                                                            </a>
                                                        <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                                                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
                                                </div>
                                            </div>
                                        <?php else: ?>
                                            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($level2Url): ?>
                                                <a href="<?php echo e($level2Url); ?>"
                                                    class="block px-4 py-2 text-sm text-gray-600 hover:text-red-700 transition">
                                                    <?php echo e($subItem['label']); ?>

                                                </a>
                                            <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                                        <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
                                </div>
                            </div>
                        <?php else: ?>
                            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($level1Url): ?>
                                <a href="<?php echo e($level1Url); ?>"
                                    class="block px-4 py-2 font-semibold uppercase text-sm text-gray-700 hover:text-red-700 transition">
                                    <?php echo e($menuItem['label']); ?>

                                </a>
                            <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                        <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
                <?php else: ?>
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                        <a href="<?php echo e(route('news.category', $category->slug)); ?>"
                            class="block px-4 py-2 font-semibold uppercase text-sm text-gray-700 hover:text-red-700 transition">
                            <?php echo e($category->name); ?>

                        </a>
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
                <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>

                <a href="<?php echo e(url('/')); ?>#galeri"
                    class="block px-4 py-2 font-semibold uppercase text-sm text-gray-700 hover:text-red-700 transition">
                    Galeri
                </a>
            </nav>
        </div>
    </header>



    <main class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-6 sm:py-8">
        <?php echo $__env->yieldContent('content'); ?>
    </main>

    <!-- Footer -->
    <footer class="bg-gray-900 text-white pt-12 pb-6">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-8 mb-8 border-b border-gray-800 pb-8">
                <div class="col-span-1 md:col-span-1">
                    <h2 class="text-sm font-bold mb-4 text-red-500"><?php echo e($setting->site_name ?? 'NEWS PORTAL'); ?></h2>
                    <!------<p class="text-gray-400 text-sm mb-4"><?php echo e('Jl. Arief Rahman No.24, Bengkalis Kota, Kec. Bengkalis
'); ?></p> -->

                    <img src="<?php echo e(asset('storage/lg-wisata.png')); ?>" alt="Logo" class="mb-4 w-32 h-auto rounded-xl">

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
                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $categories->take(6); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                            <li><a href="<?php echo e(route('news.category', $category->slug)); ?>"
                                    class="hover:text-white"><?php echo e($category->name); ?></a></li>
                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
                    </ul>
                </div>
                <div>
                    <h3 class="font-bold mb-4 uppercase">Lokasi</h3>
                    <div class="overflow-hidden rounded-xl shadow-lg">
                        <iframe class="footer-map-iframe"
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
            &copy; <?php echo e(date('Y')); ?> <?php echo e($setting->site_name ?? 'News Portal'); ?>. All rights reserved.
            <br>Dikembangkan oleh TIM IT Diskominfotik Kab. Bengkalis
        </div>
        </div>
    </footer>

    <!-- Go Up Button -->
    <button id="go-up-btn" x-show="scrolled" x-transition @click="window.scrollTo({top: 0, behavior: 'smooth'})"
        class="fixed bottom-6 right-6 sm:bottom-8 sm:right-8 bg-red-700 text-white w-10 h-10 sm:w-12 sm:h-12 rounded-full shadow-lg flex items-center justify-center hover:bg-red-800 transition-colors z-50">
        <i class="fas fa-arrow-up text-sm sm:text-base"></i>
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

</html><?php /**PATH C:\laragon\www\pariwisatalive\resources\views/layouts/frontend.blade.php ENDPATH**/ ?>