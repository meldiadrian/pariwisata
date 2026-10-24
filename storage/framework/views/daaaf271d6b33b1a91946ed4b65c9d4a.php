<?php $__env->startSection('title', $page->seo_title ?? $page->title . ' - ' . ($setting->site_name ?? 'Portal Berita')); ?>

<?php $__env->startSection('content'); ?>
<div class="max-w-4xl mx-auto bg-white p-4 sm:p-6 md:p-8 shadow-sm rounded-lg">
    <h1 class="text-2xl sm:text-3xl font-bold text-gray-900 mb-4 sm:mb-6"><?php echo e($page->title); ?></h1>
    
    <div class="prose prose-sm sm:prose max-w-none text-gray-700 leading-relaxed">
        <?php echo $page->content; ?>

    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.frontend', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH C:\laragon\www\pariwisatalive\resources\views\page.blade.php ENDPATH**/ ?>