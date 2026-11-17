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
            widgetId: null,
            siteKey: <?php echo \Illuminate\Support\Js::from(config('services.recaptcha.site_key') ?: env('RECAPTCHA_SITE_KEY'))->toHtml() ?>,
            statePath: <?php echo \Illuminate\Support\Js::from($getStatePath())->toHtml() ?>,
            init() {
                const renderCaptcha = () => {
                    if (typeof grecaptcha !== 'undefined' && grecaptcha.render && this.widgetId === null) {
                        try {
                            this.widgetId = grecaptcha.render(this.$refs.recaptchaContainer, {
                                'sitekey': this.siteKey,
                                'theme': 'dark',
                                'callback': (token) => {
                                    $wire.set(this.statePath, token);
                                    window.dispatchEvent(new CustomEvent('recaptcha-verified', { detail: { token } }));
                                },
                                'expired-callback': () => {
                                    $wire.set(this.statePath, null);
                                    window.dispatchEvent(new CustomEvent('recaptcha-expired'));
                                },
                                'error-callback': () => {
                                    $wire.set(this.statePath, null);
                                    window.dispatchEvent(new CustomEvent('recaptcha-expired'));
                                }
                            });
                        } catch (err) {
                            console.error('reCAPTCHA render error:', err);
                        }
                    }
                };

                if (typeof grecaptcha === 'undefined' || typeof grecaptcha.render === 'undefined') {
                    if (!document.getElementById('google-recaptcha-script')) {
                        const script = document.createElement('script');
                        script.id = 'google-recaptcha-script';
                        script.src = 'https://www.google.com/recaptcha/api.js?render=explicit';
                        script.async = true;
                        script.defer = true;
                        document.head.appendChild(script);
                    }

                    const checkGrecaptcha = setInterval(() => {
                        if (typeof grecaptcha !== 'undefined' && grecaptcha.render) {
                            clearInterval(checkGrecaptcha);
                            renderCaptcha();
                        }
                    }, 200);
                } else {
                    renderCaptcha();
                }

                // Reset widget when Livewire clears token or validation fails
                $watch('$wire.' + this.statePath, (value) => {
                    if (!value) {
                        window.dispatchEvent(new CustomEvent('recaptcha-expired'));
                        if (this.widgetId !== null && typeof grecaptcha !== 'undefined') {
                            try {
                                grecaptcha.reset(this.widgetId);
                            } catch (e) {}
                        }
                    }
                });

                if (typeof Livewire !== 'undefined') {
                    Livewire.hook('commit', ({ succeed }) => {
                        succeed(() => {
                            if (!$wire.get(this.statePath)) {
                                window.dispatchEvent(new CustomEvent('recaptcha-expired'));
                                if (this.widgetId !== null && typeof grecaptcha !== 'undefined') {
                                    try {
                                        grecaptcha.reset(this.widgetId);
                                    } catch (e) {}
                                }
                            }
                        });
                    });
                }
            }
        }"
        style="display: flex; justify-content: center; align-items: center; margin: 0.75rem 0;"
    >
        <div x-ref="recaptchaContainer"></div>
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
<?php /**PATH C:\laragon\www\wisata-dispora\resources\views/filament/forms/components/recaptcha.blade.php ENDPATH**/ ?>