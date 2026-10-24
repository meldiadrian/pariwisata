<?php if (isset($component)) { $__componentOriginal511d4862ff04963c3c16115c05a86a9d = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal511d4862ff04963c3c16115c05a86a9d = $attributes; } ?>
<?php $component = Illuminate\View\DynamicComponent::resolve(['component' => $getFieldWrapperView()] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('dynamic-component'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Illuminate\View\DynamicComponent::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes(['field' => $field]); ?>
<?php \Livewire\Features\SupportCompiledWireKeys\SupportCompiledWireKeys::processComponentKey($component); ?>

    <div
        wire:ignore
        x-data="{
            state: $wire.$entangle(<?php echo \Illuminate\Support\Js::from($getStatePath())->toHtml() ?>),
            init() {
                if (typeof jQuery === 'undefined') {
                    let script = document.createElement('script');
                    script.src = 'https://code.jquery.com/jquery-3.7.1.min.js';
                    document.head.appendChild(script);
                    script.onload = () => this.loadSummernote();
                } else {
                    this.loadSummernote();
                }
            },
            loadSummernote() {
                if (typeof jQuery.fn.summernote === 'undefined') {
                    let css = document.createElement('link');
                    css.href = 'https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css';
                    css.rel = 'stylesheet';
                    document.head.appendChild(css);

                    let script = document.createElement('script');
                    script.src = 'https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.js';
                    document.head.appendChild(script);
                    script.onload = () => this.initEditor();
                } else {
                    this.initEditor();
                }
            },
            initEditor() {
                let editor = jQuery(this.$refs.editor);
                
                editor.summernote({
                    height: 350,
                    toolbar: [
                        ['style', ['style']],
                        ['font', ['bold', 'underline', 'clear']],
                        ['color', ['color']],
                        ['para', ['ul', 'ol', 'paragraph']],
                        ['table', ['table']],
                        ['insert', ['link', 'picture', 'video']],
                        ['view', ['fullscreen', 'codeview', 'help']]
                    ],
                    callbacks: {
                        onChange: (contents) => {
                            this.state = contents;
                        },
                        onInit: () => {
                            if (this.state) {
                                editor.summernote('code', this.state);
                            }
                        }
                    }
                });

                this.$watch('state', (value) => {
                    if (value !== editor.summernote('code')) {
                        editor.summernote('code', value || '');
                    }
                });
            }
        }"
        <?php echo e($getExtraAttributeBag()); ?>

    >
        <div x-ref="editor"></div>
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
<?php /**PATH C:\laragon\www\pariwisatalive\resources\views\filament\forms\components\summernote.blade.php ENDPATH**/ ?>