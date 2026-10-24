<?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if(isset($sidebarAds) && $sidebarAds->isNotEmpty()): ?>
    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::openLoop(); ?><?php endif; ?><?php $__currentLoopData = $sidebarAds; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ad): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::startLoopIteration(); ?><?php endif; ?>
    <div class="bg-white p-4 rounded-xl shadow-sm border border-gray-100 w-full min-h-[240px] sm:min-h-[345px] mx-auto flex flex-col">
        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($ad->title): ?>
            <h3 class="font-bold mb-3 border-l-4 border-red-700 pl-3 uppercase text-sm shrink-0"><?php echo e($ad->title); ?></h3>
        <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
        <div class="rounded-lg overflow-hidden flex-1 relative">
            <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($ad->url): ?>
                <a href="<?php echo e($ad->url); ?>" target="_blank" rel="noopener noreferrer" title="<?php echo e($ad->title); ?>" class="block w-full h-full">
                    <?php if (isset($component)) { $__componentOriginale75524dba4ffced2baa5b8fd1d6ea996 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginale75524dba4ffced2baa5b8fd1d6ea996 = $attributes; } ?>
<?php $component = App\View\Components\ResponsiveImage::resolve(['src' => $ad->image,'alt' => $ad->title,'class' => 'absolute inset-0 w-full h-full object-cover hover:opacity-90 transition duration-300','sizes' => ['small' => 300, 'medium' => 600]] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
                </a>
            <?php else: ?>
                <?php if (isset($component)) { $__componentOriginale75524dba4ffced2baa5b8fd1d6ea996 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginale75524dba4ffced2baa5b8fd1d6ea996 = $attributes; } ?>
<?php $component = App\View\Components\ResponsiveImage::resolve(['src' => $ad->image,'alt' => $ad->title,'class' => 'absolute inset-0 w-full h-full object-cover','sizes' => ['small' => 300, 'medium' => 600]] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
            <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
        </div>
    </div>
    <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::endLoop(); ?><?php endif; ?><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::closeLoop(); ?><?php endif; ?>
<?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
<?php /**PATH C:\laragon\www\pariwisatalive\resources\views\partials\_sidebar_ads.blade.php ENDPATH**/ ?>