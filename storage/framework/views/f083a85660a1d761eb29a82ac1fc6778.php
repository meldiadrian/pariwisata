<?php $__env->startSection('title', $news->title . ' - ' . ($setting->site_name ?? 'Portal Berita')); ?>

<?php $__env->startSection('content'); ?>
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
        <div class="lg:col-span-2">
            <!-- Breadcrumb -->
            <nav class="flex mb-4 text-gray-500 text-xs uppercase font-bold" aria-label="Breadcrumb">
                <ol class="inline-flex items-center space-x-1 md:space-x-3">
                    <li class="inline-flex items-center">
                        <a href="<?php echo e(route('home')); ?>" class="hover:text-red-700">Home</a>
                    </li>
                    <li>
                        <div class="flex items-center">
                            <i class="fas fa-chevron-right text-[10px] mx-2"></i>
                            <a href="<?php echo e(route('news.category', $news->category->slug)); ?>"
                                class="hover:text-red-700"><?php echo e($news->category->name); ?></a>
                        </div>
                    </li>
                </ol>
            </nav>

            <h1 class="text-xl sm:text-2xl md:text-4xl lg:text-5xl font-black mb-4 leading-tight"><?php echo e($news->title); ?></h1>

            <div class="flex flex-wrap items-center text-xs sm:text-sm text-gray-500 mb-6 pb-4 border-b border-gray-100 gap-x-4 gap-y-2">
                <div class="flex items-center">
                    <img src="https://ui-avatars.com/api/?name=<?php echo e(urlencode($news->user->name)); ?>&color=7F9CF5&background=EBF4FF"
                        class="w-7 h-7 rounded-full mr-2 flex-shrink-0" style="width:28px;height:28px;max-width:28px;">
                    <span>Oleh <span class="font-bold text-gray-900"><?php echo e($news->user->name); ?></span></span>
                </div>
                <span><i class="far fa-clock mr-1"></i> <?php echo e(optional($news->published_at)->translatedFormat('d M Y')); ?></span>
                <span><i class="far fa-eye mr-1"></i> <?php echo e(number_format($news->views)); ?> views</span>
            </div>

            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($news->thumbnail): ?>
                <div class="mb-8 rounded-xl overflow-hidden shadow-lg">
                    <?php if (isset($component)) { $__componentOriginale75524dba4ffced2baa5b8fd1d6ea996 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginale75524dba4ffced2baa5b8fd1d6ea996 = $attributes; } ?>
<?php $component = App\View\Components\ResponsiveImage::resolve(['src' => $news->thumbnail,'alt' => $news->title,'class' => 'w-full h-auto','sizes' => ['medium' => 800, 'large' => 1200]] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
            <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>

            <div class="prose prose-sm sm:prose lg:prose-lg max-w-none mb-12 text-gray-800 leading-relaxed">
                <?php echo $news->content; ?>

            </div>

            <!-- Tags -->
            <div class="mb-12">
                <h4 class="font-bold mb-4">TAGS:</h4>
                <div class="flex flex-wrap gap-2">
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $news->tags; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tag): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                        <a href="#"
                            class="bg-gray-100 hover:bg-red-700 hover:text-white px-4 py-1.5 rounded-full text-sm text-gray-600 transition font-medium">
                            #<?php echo e($tag->name); ?>

                        </a>
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
                </div>
            </div>

            <!-- Share Section -->
            <div
                class="bg-gray-50 p-6 rounded-xl border border-gray-100 flex flex-col md:flex-row justify-between items-center mb-12">
                <span class="font-bold mb-4 md:mb-0">BAGIKAN ARTIKEL INI:</span>
                <div class="flex space-x-2">
                    <a href="#"
                        class="bg-[#1877F2] text-white w-10 h-10 flex items-center justify-center rounded-full hover:opacity-80 transition"><i
                            class="fab fa-facebook-f"></i></a>
                    <a href="#"
                        class="bg-[#1DA1F2] text-white w-10 h-10 flex items-center justify-center rounded-full hover:opacity-80 transition"><i
                            class="fab fa-twitter"></i></a>
                    <a href="#"
                        class="bg-[#25D366] text-white w-10 h-10 flex items-center justify-center rounded-full hover:opacity-80 transition"><i
                            class="fab fa-whatsapp"></i></a>
                    <a href="#"
                        class="bg-gray-800 text-white w-10 h-10 flex items-center justify-center rounded-full hover:opacity-80 transition"><i
                            class="fas fa-link"></i></a>
                </div>
            </div>

            <!-- Related News -->
            <div class="mb-12">
                <h3 class="text-2xl font-black mb-6 border-l-4 border-red-700 pl-4">BERITA TERKAIT</h3>
                <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $related; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
                        <div class="group">
                            <div class="rounded-lg overflow-hidden mb-3 aspect-video">
                                <?php if (isset($component)) { $__componentOriginale75524dba4ffced2baa5b8fd1d6ea996 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginale75524dba4ffced2baa5b8fd1d6ea996 = $attributes; } ?>
<?php $component = App\View\Components\ResponsiveImage::resolve(['src' => $item->thumbnail,'alt' => $item->title,'class' => 'w-full h-full object-cover group-hover:scale-110 transition duration-500','sizes' => ['thumbnail' => 300, 'small' => 400]] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
                            <h4 class="font-bold text-sm leading-snug group-hover:text-red-700 transition">
                                <a href="<?php echo e(route('news.show', $item->slug)); ?>"><?php echo e($item->title); ?></a>
                            </h4>
                        </div>
                    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
                </div>
            </div>
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

        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.frontend', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH C:\laragon\www\pariwisatalive\resources\views\news\show.blade.php ENDPATH**/ ?>