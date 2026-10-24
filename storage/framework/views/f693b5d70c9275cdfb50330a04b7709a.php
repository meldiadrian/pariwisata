<?php $__env->startSection('content'); ?>
    

    <!-- Hero Section -->
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-4 sm:gap-6 mb-8 sm:mb-12">
        <!-- Main Slider -->
        <div class="lg:col-span-2">
            <div class="swiper hero-swiper rounded-xl overflow-hidden shadow-lg h-[260px] sm:h-[380px] md:h-[450px] lg:h-[500px]">
                <div class="swiper-wrapper">
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $headlines; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $news): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                    <div class="swiper-slide relative">
                        <?php if (isset($component)) { $__componentOriginale75524dba4ffced2baa5b8fd1d6ea996 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginale75524dba4ffced2baa5b8fd1d6ea996 = $attributes; } ?>
<?php $component = App\View\Components\ResponsiveImage::resolve(['src' => asset('storage/' . $news->thumbnail),'alt' => $news->title,'class' => 'w-full h-full object-cover','lazy' => false,'sizes' => ['large' => 1200, 'medium' => 800]] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
                        <div class="absolute bottom-0 left-0 right-0 bg-gradient-to-t from-black to-transparent p-8">
                            <span class="bg-red-700 text-white px-3 py-1 text-xs font-bold rounded mb-2 inline-block"><?php echo e($news->category->name); ?></span>
                            <h2 class="text-2xl md:text-4xl font-bold text-white mb-2">
                                <a href="<?php echo e(route('news.show', $news->slug)); ?>" class="hover:underline"><?php echo e($news->title); ?></a>
                            </h2>
                            <p class="text-gray-200 text-sm md:text-base line-clamp-2"><?php echo e($news->summary); ?></p>
                        </div>
                    </div>
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
                </div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-next text-white"></div>
                <div class="swiper-button-prev text-white"></div>
            </div>
        </div>

        <!-- Trending Sidebar -->
        <div class="lg:col-span-1">
            <h3 class="text-xl font-bold mb-4 border-l-4 border-red-700 pl-3">TERPOPULER</h3>
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-1 gap-3">
                <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $trending; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $news): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                <div class="flex items-start space-x-3 group border-b border-gray-100 pb-3">
                    <span class="text-3xl font-black text-gray-200 group-hover:text-red-700 transition"><?php echo e($index + 1); ?></span>
                    <div>
                        <span class="text-red-700 text-xs font-bold uppercase"><?php echo e($news->category->name); ?></span>
                        <h4 class="font-bold leading-tight group-hover:text-red-700 transition">
                            <a href="<?php echo e(route('news.show', $news->slug)); ?>"><?php echo e($news->title); ?></a>
                        </h4>
                        <span class="text-gray-400 text-xs"><?php echo e(optional($news->published_at)->diffForHumans()); ?></span>
                    </div>
                </div>
                <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
            </div>
        </div>
    </div>


 <!-- Tourism Menu Section -->
    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($destinationCategories->count() > 0): ?>
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
         class="container mx-auto mb-8 sm:mb-12 bg-gray-100 py-6 sm:py-8 px-3 sm:px-6 rounded-xl">




          
    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($setting && ($setting->sambutan_nama_kepala || $setting->sambutan_isi)): ?>
    <div class="mb-8 sm:mb-12 mx-1 sm:mx-0">
        <div class="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
            <div class="flex flex-col md:flex-row items-stretch">

                
                <div class="w-full md:w-56 lg:w-72 shrink-0 relative">
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($setting->sambutan_foto_kepala): ?>
                        <img
                            src="<?php echo e(asset('storage/' . $setting->sambutan_foto_kepala)); ?>"
                            alt="<?php echo e($setting->sambutan_nama_kepala ?? 'Kepala Dinas'); ?>"
                            class="w-full h-56 sm:h-64 md:h-full object-cover object-top"
                        >
                    <?php else: ?>
                        
                        <div class="w-full h-48 sm:h-64 md:h-full bg-gradient-to-br from-green-50 to-green-100 flex items-center justify-center">
                            <i class="fas fa-user-tie text-6xl text-green-300"></i>
                        </div>
                    <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                    
                    <div class="absolute bottom-0 right-0 w-16 h-16 bg-green-600/10 rounded-tl-3xl pointer-events-none"></div>
                </div>

                
                <div class="flex-1 p-4 sm:p-6 md:p-8 lg:p-10 flex flex-col justify-center relative">
                    
                    <div class="absolute top-4 right-6 text-green-100 text-9xl font-serif leading-none select-none pointer-events-none" aria-hidden="true">"</div>

                    
                    <div class="inline-flex items-center gap-1.5 bg-green-50 border border-green-200 text-green-700 text-xs font-semibold px-3 py-1.5 rounded-full mb-4 w-fit">
                        <svg class="w-3.5 h-3.5" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                            <path d="M14.017 21v-7.391c0-5.704 3.731-9.57 8.983-10.609l.995 2.151c-2.432.917-3.995 3.638-3.995 5.849h4v10h-9.983zm-14.017 0v-7.391c0-5.704 3.748-9.57 9-10.609l.996 2.151c-2.433.917-3.996 3.638-3.996 5.849h3.983v10h-9.983z"/>
                        </svg>
                        Sambutan Kepala Dinas
                    </div>

                    
                    <h2 class="text-xl sm:text-2xl md:text-3xl font-black text-gray-900 mb-2 leading-tight">
                        Selamat Datang di <?php echo e($setting->site_name ?? config('app.name')); ?>

                    </h2>

                    
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($setting->sambutan_nama_kepala): ?>
                    <p class="text-green-600 font-semibold text-base mb-4">
                        <?php echo e($setting->sambutan_nama_kepala); ?>

                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($setting->sambutan_jabatan_kepala): ?>
                            <span class="text-gray-400 font-normal text-sm"> &mdash; <?php echo e($setting->sambutan_jabatan_kepala); ?></span>
                        <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                    </p>
                    <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>

                    
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($setting->sambutan_isi): ?>
                    <p class="text-gray-500 text-sm md:text-base leading-relaxed mb-6 line-clamp-3 relative z-10">
                        <?php echo e($setting->sambutan_isi); ?>

                    </p>
                    <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>

                    
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($setting->sambutan_link_selengkapnya): ?>
                    <div>
                        <a href="<?php echo e($setting->sambutan_link_selengkapnya); ?>"
                           class="inline-flex items-center gap-2 text-gray-800 font-bold text-sm hover:text-green-600 transition-colors duration-200 group/link">
                            Baca Selengkapnya
                            <svg class="w-4 h-4 transform group-hover/link:translate-x-1 transition-transform duration-200" fill="none" stroke="currentColor" stroke-width="2.5" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"/>
                            </svg>
                        </a>
                    </div>
                    <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                </div>

            </div>
        </div>
    </div>
    <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
          

        <!-- Icon Category Menu -->
        <div class="flex flex-nowrap md:flex-wrap justify-start md:justify-center overflow-x-auto gap-3 md:gap-6 pb-4 scrollbar-hide mb-6 sm:mb-8 px-1">
            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $destinationCategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $destCat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
            <button
                @click="activeTab = (activeTab === '<?php echo e($destCat->slug); ?>' ? null : '<?php echo e($destCat->slug); ?>')"
                class="flex flex-col items-center min-w-[76px] sm:min-w-[90px] pt-2 sm:pt-3 group focus:outline-none shrink-0">
                <div
                    :class="activeTab === '<?php echo e($destCat->slug); ?>'
                        ? 'bg-red-100 text-red-700 ring-2 ring-red-500 scale-110'
                        : 'bg-red-50 text-red-600 group-hover:bg-red-100 group-hover:scale-110'"
                    class="flex items-center justify-center rounded-full mb-2 transition-all duration-300 flex-shrink-0"
                    style="width: 54px; height: 54px; min-width: 54px; min-height: 54px;">
                    <i class="<?php echo e($destCat->icon_class); ?> text-xl"></i>
                </div>
                <span
                    :class="activeTab === '<?php echo e($destCat->slug); ?>' ? 'text-red-700 font-semibold' : 'text-gray-700'"
                    class="text-xs sm:text-sm font-medium text-center leading-tight transition-colors duration-200">
                    <?php echo e($destCat->name); ?>

                </span>
            </button>
            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
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

        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $destinationCategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $destCat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
        <div
            x-show="activeTab === '<?php echo e($destCat->slug); ?>'"
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

            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($destCat->slug === 'eksplor-bengkalis'): ?>
            
            <div class="mb-6 space-y-4">
                
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

                
                <div x-show="search.length > 0" 
                     class="text-center text-sm text-gray-500"
                     style="display: none;">
                    <span>Mencari: </span>
                    <span class="font-semibold text-red-600" x-text="search"></span>
                </div>
            </div>
            <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>

            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($destCat->destinations->count() > 0): ?>
            <div data-grid class="grid grid-cols-2 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-3 sm:gap-4 md:gap-6" id="grid-<?php echo e($destCat->slug); ?>">
                <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $destCat->destinations; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $destination): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                <div data-card
                     data-name="<?php echo e(strtolower($destination->name)); ?>"
                     data-searchtext="<?php echo e(strtolower($destination->name . ' ' . ($destination->address ?? '') . ' ' . ($destination->description ?? '') . ' ' . $destCat->name)); ?>"
                     class="bg-white rounded-xl shadow-sm hover:shadow-lg transition-all duration-300 border border-gray-100 overflow-hidden flex flex-col group hover:-translate-y-1"
                     style="transition: opacity 0.2s, transform 0.2s;">

                    
                    <div class="relative h-36 sm:h-44 md:h-48 overflow-hidden bg-gray-100">
                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($destination->image): ?>
                            <button type="button"
                                    @click="openLightbox(
                                        '<?php echo e(asset('storage/' . $destination->image)); ?>',
                                        '<?php echo e(addslashes($destination->name)); ?>',
                                        '<?php echo e(addslashes($destination->description ?? '')); ?>',
                                        '<?php echo e(addslashes($destCat->name)); ?>'
                                    )"
                                    class="w-full h-full block cursor-zoom-in focus:outline-none">
                                <img src="<?php echo e(asset('storage/' . $destination->image)); ?>"
                                     alt="<?php echo e($destination->name); ?>"
                                     class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500">
                                
                                <div class="absolute inset-0 bg-black/0 group-hover:bg-black/25 transition-all duration-300 flex items-center justify-center">
                                    <span class="opacity-0 group-hover:opacity-100 transition-opacity duration-300 bg-white/90 rounded-full w-10 h-10 flex items-center justify-center shadow">
                                        <i class="fas fa-search-plus text-red-600 text-sm"></i>
                                    </span>
                                </div>
                            </button>
                        <?php else: ?>
                            <div class="w-full h-full flex items-center justify-center bg-gradient-to-br from-red-50 to-red-100">
                                <i class="fas fa-image text-5xl text-red-200"></i>
                            </div>
                        <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                        
                        <div class="absolute top-2 left-2 bg-white/90 backdrop-blur-sm px-2 py-1 rounded text-[10px] font-bold text-red-700 flex items-center gap-1 shadow-sm z-10">
                            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if(!empty($setting->logo)): ?>
                                <img src="<?php echo e(asset('storage/' . $setting->logo)); ?>"
                                     class="h-3.5 w-3.5 object-contain"
                                     onerror="this.style.display='none'">
                            <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                            Disparbudpora
                        </div>
                    </div>

                    
                    <div class="p-4 flex-1 flex flex-col">
                        <span class="inline-block bg-red-100 text-red-700 px-3 py-1 rounded-full text-xs font-bold mb-3 self-start">
                            <?php echo e($destCat->name); ?>

                        </span>

                        
                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($destination->image): ?>
                        <button type="button"
                                @click="openLightbox(
                                    '<?php echo e(asset('storage/' . $destination->image)); ?>',
                                    '<?php echo e(addslashes($destination->name)); ?>',
                                    '<?php echo e(addslashes($destination->description ?? '')); ?>',
                                    '<?php echo e(addslashes($destCat->name)); ?>'
                                )"
                                class="text-left focus:outline-none group/btn">
                            <h4 class="font-bold text-gray-800 text-base leading-snug mb-1 group-hover:text-red-700 group-hover/btn:text-red-700 transition-colors duration-200 flex items-start gap-1">
                                <?php echo e($destination->name); ?>

                                <i class="fas fa-expand-alt text-[10px] text-gray-300 group-hover/btn:text-red-400 transition-colors mt-1 shrink-0"></i>
                            </h4>
                            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($destination->address): ?>
                                <p class="text-xs text-gray-400 mb-2 flex items-center gap-1">
                                    <i class="fas fa-map-marker-alt text-red-400 shrink-0"></i>
                                    <?php echo e($destination->address); ?>

                                </p>
                            <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($destination->description): ?>
                                <p class="text-xs text-gray-500 line-clamp-2 mb-3 group-hover/btn:text-gray-700 transition-colors duration-200"><?php echo e($destination->description); ?></p>
                            <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                        </button>
                        <?php else: ?>
                        <h4 class="font-bold text-gray-800 text-base leading-snug mb-1 group-hover:text-red-700 transition-colors duration-200">
                            <?php echo e($destination->name); ?>

                        </h4>
                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($destination->address): ?>
                            <p class="text-xs text-gray-400 mb-2 flex items-center gap-1">
                                <i class="fas fa-map-marker-alt text-red-400 shrink-0"></i>
                                <?php echo e($destination->address); ?>

                            </p>
                        <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($destination->description): ?>
                            <p class="text-xs text-gray-500 line-clamp-2 mb-3"><?php echo e($destination->description); ?></p>
                        <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                        <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>


                        
                        <div class="mt-auto border-t border-gray-100 pt-3 flex gap-2">
                            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($destination->facebook_url): ?>
                                <a href="<?php echo e($destination->facebook_url); ?>" target="_blank" rel="noopener"
                                   class="w-8 h-8 rounded-full border border-gray-200 flex items-center justify-center text-gray-400 hover:text-blue-600 hover:border-blue-600 transition-all duration-200">
                                    <i class="fab fa-facebook-f text-xs"></i>
                                </a>
                            <?php else: ?>
                                <span class="w-8 h-8 rounded-full border border-gray-100 flex items-center justify-center text-gray-200 cursor-default">
                                    <i class="fab fa-facebook-f text-xs"></i>
                                </span>
                            <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>

                            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($destination->instagram_url): ?>
                                <a href="<?php echo e($destination->instagram_url); ?>" target="_blank" rel="noopener"
                                   class="w-8 h-8 rounded-full border border-gray-200 flex items-center justify-center text-gray-400 hover:text-pink-600 hover:border-pink-600 transition-all duration-200">
                                    <i class="fab fa-instagram text-xs"></i>
                                </a>
                            <?php else: ?>
                                <span class="w-8 h-8 rounded-full border border-gray-100 flex items-center justify-center text-gray-200 cursor-default">
                                    <i class="fab fa-instagram text-xs"></i>
                                </span>
                            <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>

                            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($destination->youtube_url): ?>
                                <a href="<?php echo e($destination->youtube_url); ?>" target="_blank" rel="noopener"
                                   class="w-8 h-8 rounded-full border border-gray-200 flex items-center justify-center text-gray-400 hover:text-red-600 hover:border-red-600 transition-all duration-200">
                                    <i class="fab fa-youtube text-xs"></i>
                                </a>
                            <?php else: ?>
                                <span class="w-8 h-8 rounded-full border border-gray-100 flex items-center justify-center text-gray-200 cursor-default">
                                    <i class="fab fa-youtube text-xs"></i>
                                </span>
                            <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                        </div>
                    </div>
                </div>
                <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
            </div>

            
            <div data-noresult
                 class="text-center py-10 bg-gray-50 rounded-xl border border-dashed border-gray-200 mt-2"
                 style="display:none;">
                <i class="fas fa-search text-3xl text-gray-200 mb-3"></i>
                <p class="text-gray-400 text-sm">Tidak ada destinasi yang cocok dengan pencarian Anda.</p>
                <button @click="search = ''" class="mt-3 text-xs text-red-400 hover:text-red-600 underline">Hapus pencarian</button>
            </div>

            <?php else: ?>
            
            <div class="text-center py-12 bg-red-50 rounded-xl border border-red-100">
                <div class="inline-flex items-center justify-center rounded-full bg-red-100 mb-4"
                     style="width: 72px; height: 72px;">
                    <i class="<?php echo e($destCat->icon_class); ?> text-3xl text-red-300"></i>
                </div>
                <p class="text-gray-400 text-sm">Belum ada destinasi untuk kategori <strong><?php echo e($destCat->name); ?></strong>.</p>
                <p class="text-gray-300 text-xs mt-1">Tambahkan melalui panel admin.</p>
            </div>
            <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
        </div>
        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>

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

                
                <button @click="closeLightbox()"
                        class="absolute top-3 right-3 z-10 w-8 h-8 bg-black/50 hover:bg-black/70 text-white rounded-full flex items-center justify-center transition-colors duration-200">
                    <i class="fas fa-times text-sm"></i>
                </button>

                
                <div class="bg-gray-100">
                    <img :src="lightboxImg"
                         :alt="lightboxTitle"
                         class="w-full max-h-[60vh] object-contain">
                </div>

                
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
    <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>

    <!-- Banner Sliders -->
    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($sliders->count() > 0): ?>
    <div class="mb-12 rounded-xl overflow-hidden shadow-sm relative group">
        <div class="swiper banner-swiper">
            <div class="swiper-wrapper">
                <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $sliders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $slider): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                <div class="swiper-slide">
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($slider->url): ?>
                        <a href="<?php echo e($slider->url); ?>" target="_blank" class="block w-full">
                            <img src="<?php echo e(asset('storage/' . $slider->image)); ?>" alt="<?php echo e($slider->title); ?>" class="w-full h-auto">
                        </a>
                    <?php else: ?>
                        <img src="<?php echo e(asset('storage/' . $slider->image)); ?>" alt="<?php echo e($slider->title); ?>" class="w-full h-auto">
                    <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                </div>
                <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
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
    <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>

   

   

    <!-- Latest News Section -->
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-6 lg:gap-8">
        <div class="lg:col-span-2">
            <h3 class="text-xl sm:text-2xl font-black mb-4 sm:mb-6 border-b-2 border-red-700 inline-block pb-1">BERITA TERBARU</h3>
            <div class="space-y-5 sm:space-y-8">
                <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $latestNews; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $news): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                <div class="flex flex-col sm:flex-row gap-4 sm:gap-6 group">
                    <div class="w-full sm:w-2/5 md:w-1/3 shrink-0 overflow-hidden rounded-lg shadow-sm">
                        <img src="<?php echo e($news->thumbnail ? asset('storage/'.$news->thumbnail) : 'https://placehold.co/400x300?text=News'); ?>" class="w-full h-44 sm:h-48 object-cover group-hover:scale-105 transition duration-500">
                    </div>
                    <div class="flex-1">
                        <span class="text-red-700 text-xs font-bold uppercase"><?php echo e($news->category->name); ?></span>
                        <h3 class="text-base sm:text-xl font-bold mb-2 group-hover:text-red-700 transition">
                            <a href="<?php echo e(route('news.show', $news->slug)); ?>"><?php echo e($news->title); ?></a>
                        </h3>
                        <p class="text-gray-600 text-sm mb-4 line-clamp-3"><?php echo e($news->summary); ?></p>
                        <div class="flex items-center text-xs text-gray-400 space-x-4">
                            <span><i class="far fa-user mr-1"></i> <?php echo e($news->user->name); ?></span>
                            <span><i class="far fa-clock mr-1"></i> <?php echo e(optional($news->published_at)->format('d M Y')); ?></span>
                            <span><i class="far fa-eye mr-1"></i> <?php echo e(number_format($news->views)); ?></span>
                        </div>
                    </div>
                </div>
                <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
            </div>
            
            <div class="mt-12">
                <?php echo e($latestNews->links()); ?>

            </div>
        </div>

        <!-- Sidebar Widgets -->
        <div class="lg:col-span-1 space-y-8 sm:space-y-12">
            <!-- Ad Widget -->
            <?php echo $__env->make('partials._sidebar_ads', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>

            <!-- Categories Widget -->
            <div class="bg-white p-4 sm:p-6 rounded-xl shadow-sm border border-gray-100 w-full">
                <h3 class="font-bold mb-4 border-l-4 border-red-700 pl-3">KATEGORI</h3>
                <div class="space-y-2">
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                    <a href="<?php echo e(route('news.category', $cat->slug)); ?>" class="flex justify-between items-center py-2 text-sm hover:text-red-700 border-b border-gray-50 last:border-0 transition">
                        <span><?php echo e($cat->name); ?></span>
                        <span class="bg-gray-100 text-gray-500 px-2 py-0.5 rounded-full text-[10px]"><?php echo e($cat->news_count); ?></span>
                    </a>
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
                </div>
            </div>

            <!-- Tags Widget -->
            <!--<div class="bg-white p-6 rounded-xl shadow-sm border border-gray-100">
                <h3 class="font-bold mb-4 border-l-4 border-red-700 pl-3">TAG POPULER</h3>
                <div class="flex flex-wrap gap-2">
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = \App\Models\Tag::take(10)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tag): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                    <a href="#" class="bg-gray-100 hover:bg-red-700 hover:text-white px-3 py-1 rounded-full text-xs text-gray-600 transition">
                        #<?php echo e($tag->name); ?>

                    </a>
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
                </div>
            </div>-->
        </div>
    </div>

    <!-- Festival Section -->
    <!-- <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($festivals->count() > 0): ?>
    <div id="festival" class="mt-16 mb-12" x-data="{ lightboxOpen: false, lightboxImage: '', lightboxTitle: '' }">
        <div class="text-center mb-10">
            <h3 class="text-4xl font-bold text-slate-900 mb-2">Festival & Kegiatan</h3>
            <p class="text-slate-500 text-lg">Event dan kegiatan terbaru kami</p>
        </div>

        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $festivals; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $festival): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
            <div class="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden
                        hover:shadow-lg hover:-translate-y-1 transition-all duration-300 group">
                
                <div class="relative overflow-hidden aspect-square bg-gray-100 cursor-pointer"
                     @click="lightboxOpen = true; lightboxImage = '<?php echo e(asset('storage/' . $festival->image)); ?>'; lightboxTitle = '<?php echo e(addslashes($festival->title)); ?>'">
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($festival->image): ?>
                        <img src="<?php echo e(asset('storage/' . $festival->image)); ?>"
                             alt="<?php echo e($festival->title); ?>"
                             class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500">
                        <div class="absolute inset-0 bg-black/0 group-hover:bg-black/20 transition-colors duration-300 flex items-center justify-center">
                            <i class="fas fa-search-plus text-white text-3xl opacity-0 group-hover:opacity-100 transition-opacity duration-300"></i>
                        </div>
                    <?php else: ?>
                        <div class="w-full h-full flex items-center justify-center bg-gradient-to-br from-red-50 to-red-100">
                            <i class="fas fa-image text-5xl text-red-200"></i>
                        </div>
                    <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                </div>

                
                <div class="p-5 text-center">
                    <h4 class="font-bold text-gray-800 text-lg leading-snug mb-2">
                        <?php echo e($festival->title); ?>

                    </h4>
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($festival->event_date): ?>
                        <p class="text-sm font-medium text-blue-400">
                            <?php echo e($festival->event_date->translatedFormat('d M Y')); ?>

                        </p>
                    <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($festival->description): ?>
                        <p class="text-xs text-gray-400 mt-2 line-clamp-2"><?php echo e($festival->description); ?></p>
                    <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                </div>
            </div>
            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
        </div>

        
        <div x-show="lightboxOpen" style="display: none;"
             class="fixed inset-0 z-[100] flex items-center justify-center bg-black/90 p-4"
             x-transition:enter="transition ease-out duration-300"
             x-transition:enter-start="opacity-0"
             x-transition:enter-end="opacity-100"
             x-transition:leave="transition ease-in duration-200"
             x-transition:leave-start="opacity-100"
             x-transition:leave-end="opacity-0">
            
            <div class="relative max-w-5xl w-full h-full flex flex-col items-center justify-center" @click.away="lightboxOpen = false">
                
                <button @click="lightboxOpen = false" class="absolute top-4 right-4 text-white/70 hover:text-white z-10 focus:outline-none">
                    <i class="fas fa-times text-4xl"></i>
                </button>
                
                
                <img :src="lightboxImage" :alt="lightboxTitle" class="max-h-[85vh] max-w-full object-contain shadow-2xl rounded-sm">
                
                
                <h4 x-text="lightboxTitle" class="text-white text-xl font-bold mt-4 text-center"></h4>
            </div>
        </div>
    </div>
    <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?> -->

    <!-- Gallery Section------>
    <div id="galeri" class="mt-16 mb-8 flex flex-col items-center"
         x-data="{
            filter: 'all',
            videoModal: false,
            videoUrl: '',
            videoTitle: '',
            openVideo(url, title) {
                this.videoTitle = title;
                this.videoUrl = this.getEmbedUrl(url);
                this.videoModal = true;
            },
            closeVideo() {
                this.videoModal = false;
                this.videoUrl = '';
                this.videoTitle = '';
            },
            getEmbedUrl(url) {
                // YouTube: youtu.be/ID or youtube.com/watch?v=ID
                let ytMatch = url.match(/(?:youtu\.be\/|youtube\.com\/(?:watch\?(?:.*&)?v=|embed\/|shorts\/))([A-Za-z0-9_-]{11})/);
                if (ytMatch) return 'https://www.youtube.com/embed/' + ytMatch[1] + '?autoplay=1&rel=0';
                // Vimeo: vimeo.com/ID
                let vmMatch = url.match(/vimeo\.com\/(\d+)/);
                if (vmMatch) return 'https://player.vimeo.com/video/' + vmMatch[1] + '?autoplay=1';
                // Already an embed or other URL: return as-is
                return url;
            }
         }">
        <h3 class="text-2xl sm:text-3xl md:text-4xl font-bold text-slate-900 mb-2 text-center">Galeri Kegiatan</h3>
        <p class="text-slate-500 mb-6 sm:mb-8 text-base sm:text-lg text-center">Momen pelayanan dan kegiatan kami</p>
        
        <div class="inline-flex bg-slate-100 p-1 sm:p-1.5 rounded-full mb-6 sm:mb-10 shadow-sm">
            <button @click="filter = 'all'" :class="filter === 'all' ? 'bg-red-700 text-white shadow-md' : 'text-slate-600 hover:text-slate-900'" class="px-4 sm:px-8 py-1.5 sm:py-2 text-sm sm:text-base rounded-full font-medium transition-all duration-300">Semua</button>
            <button @click="filter = 'photo'" :class="filter === 'photo' ? 'bg-red-700 text-white shadow-md' : 'text-slate-600 hover:text-slate-900'" class="px-4 sm:px-8 py-1.5 sm:py-2 text-sm sm:text-base rounded-full font-medium transition-all duration-300">Foto</button>
            <button @click="filter = 'video'" :class="filter === 'video' ? 'bg-red-700 text-white shadow-md' : 'text-slate-600 hover:text-slate-900'" class="px-4 sm:px-8 py-1.5 sm:py-2 text-sm sm:text-base rounded-full font-medium transition-all duration-300">Video</button>
        </div>
        
        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($galleries->count() > 0): ?>
        <div class="grid grid-cols-2 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-2 sm:gap-3 md:gap-4 w-full">
            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $galleries; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $gallery): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
            <div x-show="filter === 'all' || filter === '<?php echo e($gallery->video_url ? 'video' : 'photo'); ?>'" class="group block relative overflow-hidden rounded-xl shadow-sm aspect-square bg-gray-100 transition-all duration-300">
                <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($gallery->video_url): ?>
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($gallery->image): ?>
                        
                        <img src="<?php echo e(asset('storage/' . $gallery->image)); ?>" alt="<?php echo e($gallery->title); ?>" class="w-full h-full object-cover group-hover:scale-110 transition duration-500">
                        <div class="absolute inset-0 bg-black/40 flex items-center justify-center pointer-events-none">
                            <i class="fas fa-play-circle text-4xl text-white opacity-80 group-hover:opacity-100 group-hover:scale-110 transition"></i>
                        </div>
                        <div class="absolute inset-0 bg-gradient-to-t from-black/90 via-black/30 to-transparent opacity-0 group-hover:opacity-100 transition duration-300 flex flex-col justify-end p-4 pointer-events-none">
                            <h4 class="text-white font-bold text-sm md:text-base transform translate-y-4 group-hover:translate-y-0 transition duration-300"><?php echo e($gallery->title); ?></h4>
                        </div>
                        <button @click="openVideo('<?php echo e($gallery->video_url); ?>', '<?php echo e(addslashes($gallery->title)); ?>')"
                                class="absolute inset-0 z-10 w-full h-full cursor-pointer" aria-label="Putar video <?php echo e($gallery->title); ?>"></button>
                    <?php else: ?>
                        
                        <iframe src="<?php echo e($gallery->video_url); ?>" class="w-full h-full object-cover" frameborder="0" allowfullscreen></iframe>
                        <div class="absolute inset-0 bg-gradient-to-t from-black/90 via-black/30 to-transparent opacity-0 group-hover:opacity-100 transition duration-300 flex flex-col justify-end p-4 pointer-events-none">
                            <h4 class="text-white font-bold text-sm md:text-base transform translate-y-4 group-hover:translate-y-0 transition duration-300"><?php echo e($gallery->title); ?></h4>
                        </div>
                    <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
                <?php else: ?>
                    <a href="<?php echo e(asset('storage/' . $gallery->image)); ?>" target="_blank" class="block w-full h-full">
                        <img src="<?php echo e(asset('storage/' . $gallery->image)); ?>" alt="<?php echo e($gallery->title); ?>" class="w-full h-full object-cover group-hover:scale-110 transition duration-500">
                        <div class="absolute inset-0 bg-gradient-to-t from-black/90 via-black/30 to-transparent opacity-0 group-hover:opacity-100 transition duration-300 flex flex-col justify-end p-4">
                            <h4 class="text-white font-bold text-sm md:text-base transform translate-y-4 group-hover:translate-y-0 transition duration-300"><?php echo e($gallery->title); ?></h4>
                        </div>
                    </a>
                <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
            </div>
            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
        </div>
        <?php else: ?>
        <div class="text-center py-8 text-gray-500 bg-gray-50 rounded-xl border border-gray-100 w-full">
            <i class="far fa-images text-4xl mb-3 text-gray-300"></i>
            <p>Belum ada foto/video galeri.</p>
        </div>
        <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>

        
        <div x-show="videoModal"
             x-transition:enter="transition ease-out duration-300"
             x-transition:enter-start="opacity-0"
             x-transition:enter-end="opacity-100"
             x-transition:leave="transition ease-in duration-200"
             x-transition:leave-start="opacity-100"
             x-transition:leave-end="opacity-0"
             style="display:none;"
             class="fixed inset-0 z-[200] flex items-center justify-center bg-black/85 p-4"
             @keydown.escape.window="closeVideo()"
             @click.self="closeVideo()">
            <div class="relative w-full max-w-4xl"
                 x-transition:enter="transition ease-out duration-300"
                 x-transition:enter-start="scale-90 opacity-0"
                 x-transition:enter-end="scale-100 opacity-100"
                 x-transition:leave="transition ease-in duration-200"
                 x-transition:leave-start="scale-100 opacity-100"
                 x-transition:leave-end="scale-90 opacity-0">
                
                <div class="flex items-center justify-between mb-3">
                    <p x-text="videoTitle" class="text-white font-semibold text-lg truncate pr-4"></p>
                    
                    <button @click="closeVideo()"
                            class="flex-shrink-0 text-white/80 hover:text-white bg-black/40 hover:bg-black/70 rounded-full w-9 h-9 flex items-center justify-center transition focus:outline-none"
                            aria-label="Tutup video">
                        <i class="fas fa-times text-base"></i>
                    </button>
                </div>
                
                <div class="relative w-full" style="padding-bottom: 56.25%;">
                    <iframe
                        :src="videoUrl"
                        class="absolute inset-0 w-full h-full rounded-xl shadow-2xl"
                        frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen>
                    </iframe>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?> 

<?php echo $__env->make('layouts.frontend', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH C:\laragon\www\pariwisatalive\resources\views\welcome.blade.php ENDPATH**/ ?>