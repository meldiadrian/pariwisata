<?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($src): ?>
    <picture>
        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($useWebP && $webpSrc): ?>
            <source 
                type="image/webp" 
                <?php if($srcset): ?>
                    srcset="<?php echo e($srcset); ?>"
                <?php else: ?>
                    srcset="<?php echo e($webpSrc); ?>"
                <?php endif; ?>
            >
        <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
        
        <img 
            src="<?php echo e($src); ?>" 
            alt="<?php echo e($alt); ?>"
            <?php if($class): ?> class="<?php echo e($class); ?>" <?php endif; ?>
            <?php if($width): ?> width="<?php echo e($width); ?>" <?php endif; ?>
            <?php if($height): ?> height="<?php echo e($height); ?>" <?php endif; ?>
            <?php if($lazy): ?> loading="lazy" <?php endif; ?>
        >
    </picture>
<?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
<?php /**PATH C:\laragon\www\pariwisatalive\resources\views/components/responsive-image.blade.php ENDPATH**/ ?>