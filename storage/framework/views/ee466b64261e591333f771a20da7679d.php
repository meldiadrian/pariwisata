<?php $__env->startSection('title', $category->name . ' - ' . ($setting->site_name ?? 'Portal Berita')); ?>

<?php $__env->startSection('content'); ?>
    <!-- Breadcrumb -->
    <nav class="flex mb-6 text-gray-500 text-xs uppercase font-bold" aria-label="Breadcrumb">
        <ol class="inline-flex items-center space-x-1 md:space-x-3">
            <li class="inline-flex items-center">
                <a href="<?php echo e(route('home')); ?>" class="hover:text-red-700">Home</a>
            </li>
            <li>
                <div class="flex items-center">
                    <i class="fas fa-chevron-right text-[10px] mx-2"></i>
                    <span class="text-red-700"><?php echo e($category->name); ?></span>
                </div>
            </li>
        </ol>
    </nav>

    <!-- Category Header -->
    <div class="bg-white p-4 sm:p-6 rounded-xl shadow-sm border border-gray-100 mb-8">
        <h1 class="text-2xl sm:text-3xl font-black text-gray-900"><?php echo e($category->name); ?></h1>
        <p class="text-gray-500 mt-2"><?php echo e($news->total()); ?> berita dalam kategori ini</p>
    </div>

    <!-- News Grid -->
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
        <div class="lg:col-span-2">
            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($news->count() > 0): ?>
                <div class="space-y-8">
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $news; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                        <div
                            class="flex flex-col sm:flex-row gap-4 sm:gap-6 group bg-white p-4 rounded-xl shadow-sm border border-gray-100 hover:shadow-md transition">
                            <div class="w-full sm:w-1/3 shrink-0 overflow-hidden rounded-lg">
                                <?php if (isset($component)) { $__componentOriginale75524dba4ffced2baa5b8fd1d6ea996 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginale75524dba4ffced2baa5b8fd1d6ea996 = $attributes; } ?>
<?php $component = App\View\Components\ResponsiveImage::resolve(['src' => $item->thumbnail,'alt' => $item->title,'class' => 'w-full h-44 sm:h-48 object-cover group-hover:scale-105 transition duration-500','sizes' => ['thumbnail' => 300, 'small' => 400]] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
                            </div>
                            <div class="flex-1">
                                <span class="text-red-700 text-xs font-bold uppercase"><?php echo e($item->category->name); ?></span>
                                <h3 class="text-xl font-bold mb-2 group-hover:text-red-700 transition">
                                    <a href="<?php echo e(route('news.show', $item->slug)); ?>"><?php echo e($item->title); ?></a>
                                </h3>
                                <p class="text-gray-600 text-sm mb-4 line-clamp-3"><?php echo e($item->summary); ?></p>
                                <div class="flex items-center text-xs text-gray-400 space-x-4">
                                    <span><i class="far fa-user mr-1"></i> <?php echo e($item->user->name); ?></span>
                                    <span><i class="far fa-clock mr-1"></i>
                                        <?php echo e(optional($item->published_at)->format('d M Y')); ?></span>
                                    <span><i class="far fa-eye mr-1"></i> <?php echo e(number_format($item->views)); ?></span>
                                </div>
                            </div>
                        </div>
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
                </div>

                <div class="mt-12">
                    <?php echo e($news->links()); ?>

                </div>
            <?php else: ?>
                <div class="bg-white p-12 rounded-xl shadow-sm border border-gray-100 text-center">
                    <i class="far fa-newspaper text-6xl text-gray-300 mb-4"></i>
                    <h3 class="text-xl font-bold text-gray-700 mb-2">Belum Ada Berita</h3>
                    <p class="text-gray-500">Tidak ada berita dalam kategori ini saat ini.</p>
                </div>
            <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
        </div>

        <!-- Sidebar -->
        <div class="lg:col-span-1 space-y-12">
            <!-- Popular Widget -->
            <div class="bg-white p-6 rounded-xl shadow-sm border border-gray-100 w-full">
                <h3 class="font-bold mb-6 border-l-4 border-red-700 pl-3 uppercase">Paling Populer</h3>
                <div class="space-y-6">
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = \App\Models\News::where('status', 'publish')->orderBy('views', 'desc')->take(5)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $popular): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                        <div class="flex space-x-4 items-start group">
                            <span
                                class="text-2xl font-black text-gray-200 group-hover:text-red-700 transition"><?php echo e($index + 1); ?></span>
                            <h4 class="text-sm font-bold group-hover:text-red-700 transition leading-snug">
                                <a href="<?php echo e(route('news.show', $popular->slug)); ?>"><?php echo e($popular->title); ?></a>
                            </h4>
                        </div>
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
                </div>
            </div>

            <!-- Ad Widget -->
            <?php echo $__env->make('partials._sidebar_ads', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>

            <!-- Categories Widget -->
            <div class="bg-white p-6 rounded-xl shadow-sm border border-gray-100 w-full max-w-[275px] h-[345px] overflow-y-auto scrollbar-hide">
                <h3 class="font-bold mb-4 border-l-4 border-red-700 pl-3">KATEGORI</h3>
                <div class="space-y-2">
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                        <a href="<?php echo e(route('news.category', $cat->slug)); ?>"
                            class="flex justify-between items-center py-2 text-sm hover:text-red-700 border-b border-gray-50 last:border-0 transition <?php echo e($cat->id == $category->id ? 'text-red-700' : ''); ?>">
                            <span><?php echo e($cat->name); ?></span>
                            <span
                                class="bg-gray-100 text-gray-500 px-2 py-0.5 rounded-full text-[10px]"><?php echo e($cat->news_count); ?></span>
                        </a>
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.frontend', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH C:\laragon\www\pariwisatalive\resources\views\news\category.blade.php ENDPATH**/ ?>