<x-dynamic-component
    :component="$getFieldWrapperView()"
    :field="$field"
>
    <div
        wire:ignore
        x-data="{
            widgetId: null,
            siteKey: @js(config('services.recaptcha.site_key') ?: env('RECAPTCHA_SITE_KEY')),
            statePath: @js($getStatePath()),
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
</x-dynamic-component>
