<?php
    $statePath = $getStatePath();
?>

<?php if (isset($component)) { $__componentOriginal511d4862ff04963c3c16115c05a86a9d = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal511d4862ff04963c3c16115c05a86a9d = $attributes; } ?>
<?php $component = Illuminate\View\DynamicComponent::resolve(['component' => $getFieldWrapperView()] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('dynamic-component'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Illuminate\View\DynamicComponent::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes(['field' => $field,'class' => 'relative z-0']); ?>
<?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::processComponentKey($component); ?>

    <?php
        $textareaID = 'tiny-editor-' . str_replace(['.', '#', '$'], '-', $getId()) . '-' . rand();
    ?>

    <div wire:ignore x-ignore x-load
        x-load-src="<?php echo e(\Filament\Support\Facades\FilamentAsset::getAlpineComponentSrc('tinyeditor', 'amidesfahani/filament-tinyeditor')); ?>"
        x-load-css="[<?php echo \Illuminate\Support\Js::from(\Filament\Support\Facades\FilamentAsset::getStyleHref('tiny-css', package: 'amidesfahani/filament-tinyeditor'))->toHtml() ?>]"
        x-load-js="[<?php echo \Illuminate\Support\Js::from(\Filament\Support\Facades\FilamentAsset::getScriptSrc($getLanguageId(), package: 'amidesfahani/filament-tinyeditor'))->toHtml() ?>]"
        x-data="tinyeditor({
            state: $wire.<?php echo e($applyStateBindingModifiers("entangle('{$statePath}')", isOptimisticallyLive: false)); ?>,
            statePath: '<?php echo e($statePath); ?>',
            selector: '#<?php echo e($textareaID); ?>',
            plugins: '<?php echo e($getPlugins()); ?>',
            external_plugins: <?php echo e($getExternalPlugins()); ?>,
            toolbar: '<?php echo e($getToolbar()); ?>',
            content_style: '<?php echo e($contentStyle()); ?>',
            <?php if(!$getTextPattern()): ?>
                text_patterns: <?php echo \Illuminate\Support\Js::from($getTextPattern())->toHtml() ?>,
            <?php endif; ?>
            language: '<?php echo e($getInterfaceLanguage()); ?>',
            language_url: '<?php echo e($getLanguageURL($getInterfaceLanguage())); ?>',
            directionality: '<?php echo e($getDirection()); ?>',
            <?php if($getHeight()): ?>
            height: <?php echo \Illuminate\Support\Js::from($getHeight())->toHtml() ?>,
            <?php endif; ?>
            <?php if($getMaxHeight()): ?>
            max_height: <?php echo \Illuminate\Support\Js::from($getMaxHeight())->toHtml() ?>,
            <?php endif; ?>
            <?php if($getMinHeight()): ?>
            min_height: <?php echo \Illuminate\Support\Js::from($getMinHeight())->toHtml() ?>,
            <?php endif; ?>
            <?php if($getWidth()): ?>
            width: <?php echo \Illuminate\Support\Js::from($getWidth())->toHtml() ?>,
            <?php endif; ?>
            <?php if($getTinyMaxWidth()): ?>
            max_width: <?php echo \Illuminate\Support\Js::from($getTinyMaxWidth())->toHtml() ?>,
            <?php endif; ?>
            <?php if($getMinWidth()): ?>
            min_width: <?php echo \Illuminate\Support\Js::from($getMinWidth())->toHtml() ?>,
            <?php endif; ?>
            resize: <?php echo \Illuminate\Support\Js::from($getResize())->toHtml() ?>,
            <?php if(!filament()->hasDarkModeForced() && $darkMode() == 'media'): ?> skin: (window.matchMedia('(prefers-color-scheme: dark)').matches ? 'oxide-dark' : 'oxide'),
			content_css: (window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'default'),
			<?php elseif(!filament()->hasDarkModeForced() && $darkMode() == 'class'): ?>
			skin: (document.querySelector('html').getAttribute('class').includes('dark') ? 'oxide-dark' : 'oxide'),
			content_css: (document.querySelector('html').getAttribute('class').includes('dark') ? 'dark' : 'default'),
			<?php elseif(filament()->hasDarkModeForced() || $darkMode() == 'force'): ?>
			skin: 'oxide-dark',
			content_css: 'dark',
			<?php elseif(!filament()->hasDarkModeForced() && $darkMode() == false): ?>
			skin: 'oxide',
			content_css: 'default',
			<?php elseif(!filament()->hasDarkModeForced() && $darkMode() == 'custom'): ?>
			skin: '<?php echo e($skinsUI()); ?>',
			content_css: '<?php echo e($skinsContent()); ?>',
			<?php else: ?>
			skin: ((localStorage.getItem('theme') ?? 'system') == 'dark' || (localStorage.getItem('theme') === 'system' && window.matchMedia('(prefers-color-scheme: dark)').matches)) ? 'oxide-dark' : 'oxide',
			content_css: ((localStorage.getItem('theme') ?? 'system') == 'dark' || (localStorage.getItem('theme') === 'system' && window.matchMedia('(prefers-color-scheme: dark)').matches)) ? 'dark' : 'default',
            <?php endif; ?>
            toolbar_sticky: <?php echo e($getToolbarSticky() ? 'true' : 'false'); ?>,
            toolbar_sticky_offset: <?php echo e($getToolbarStickyOffset()); ?>,
            toolbar_mode: '<?php echo e($getToolbarMode()); ?>',
            toolbar_location: '<?php echo e($getToolbarLocation()); ?>',
            inline: <?php echo e($getInlineOption() ? 'true' : 'false'); ?>,
            toolbar_persist: <?php echo e($getToolbarPersist() ? 'true' : 'false'); ?>,
            menubar: <?php echo e($getShowMenuBar() ? 'true' : 'false'); ?>,
            relative_urls: <?php echo e($getRelativeUrls() ? 'true' : 'false'); ?>,
            remove_script_host: <?php echo e($getRemoveScriptHost() ? 'true' : 'false'); ?>,
            convert_urls: <?php echo e($getConvertUrls() ? 'true' : 'false'); ?>,
            font_size_formats: '<?php echo e($getFontSizes()); ?>',
            fontfamily: '<?php echo e($getFontFamilies()); ?>',
            setup: null,
            disabled: <?php echo \Illuminate\Support\Js::from($isDisabled)->toHtml() ?>,
            locale: '<?php echo e(app()->getLocale()); ?>',
            placeholder: <?php echo \Illuminate\Support\Js::from($getPlaceholder())->toHtml() ?>,
            image_list: <?php echo $getImageList(); ?>,
            <?php if($getImagesUploadUrl !== false): ?>
            images_upload_url: <?php echo \Illuminate\Support\Js::from($getImagesUploadUrl())->toHtml() ?>,
            <?php endif; ?>
            image_advtab: <?php echo \Illuminate\Support\Js::from($imageAdvtab())->toHtml() ?>,
            image_description: <?php echo \Illuminate\Support\Js::from($getImageDescription())->toHtml() ?>,
            image_class_list: <?php echo \Illuminate\Support\Js::from($getImageClassList())->toHtml() ?>,
            license_key: '<?php echo e($getLicenseKey()); ?>',
            custom_configs: <?php echo e($getCustomConfigs()); ?>,
            
        })">
        <?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if BLOCK]><![endif]--><?php endif; ?><?php if($isDisabled()): ?>
            <div x-html="state" style="<?php echo \Illuminate\Support\Arr::toCssStyles(['max-height: ' . $getPreviewMaxHeight() . 'px' => $getPreviewMaxHeight() > 0, 'min-height: ' . $getPreviewMinHeight() . 'px' => $getPreviewMinHeight() > 0]) ?>"
                class="block w-full p-3 overflow-y-auto prose transition duration-75 bg-white border border-gray-300 rounded-lg shadow-sm max-w-none opacity-70 dark:prose-invert dark:border-gray-600 dark:bg-gray-700 dark:text-white">
            </div>
        <?php else: ?>
            <input id="<?php echo e($textareaID); ?>" type="hidden" x-ref="tinymce" placeholder="<?php echo e($getPlaceholder()); ?>">
        <?php endif; ?><?php if(\Livewire\Mechanisms\ExtendBlade\ExtendBlade::isRenderingLivewireComponent()): ?><!--[if ENDBLOCK]><![endif]--><?php endif; ?>
    </div>
 <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal511d4862ff04963c3c16115c05a86a9d)): ?>
<?php $attributes = $__attributesOriginal511d4862ff04963c3c16115c05a86a9d; ?>
<?php unset($__attributesOriginal511d4862ff04963c3c16115c05a86a9d); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal511d4862ff04963c3c16115c05a86a9d)): ?>
<?php $component = $__componentOriginal511d4862ff04963c3c16115c05a86a9d; ?>
<?php unset($__componentOriginal511d4862ff04963c3c16115c05a86a9d); ?>
<?php endif; ?>

<?php if (! $__env->hasRenderedOnce('46b831a8-942a-4516-869b-118523d31bae')): $__env->markAsRenderedOnce('46b831a8-942a-4516-869b-118523d31bae');
$__env->startPush('scripts'); ?>
    <script>
        // window.addEventListener('beforeunload', (event) => {
        //     if (tinymce.activeEditor.isDirty()) {
        //         event.preventDefault();
        // 		// Included for legacy support, e.g. Chrome/Edge < 119
        // 		event.returnValue = '<?php echo e(__('Are you sure you want to leave?')); ?>';
        //     }
        // });
    </script>
<?php $__env->stopPush(); endif; ?>
<?php /**PATH C:\laragon\www\pariwisatalive\vendor\amidesfahani\filament-tinyeditor\resources\views\tiny-editor.blade.php ENDPATH**/ ?>