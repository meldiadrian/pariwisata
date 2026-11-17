<x-dynamic-component
    :component="$getFieldWrapperView()"
    :field="$field"
>
    <script>
        if (typeof window.summernoteEditorComponent === 'undefined') {
            window.summernoteEditorComponent = function (config) {
                return {
                    state: config.state,
                    uploadUrl: config.uploadUrl,
                    csrfToken: config.csrfToken,
                    isLoaded: false,

                    init() {
                        this.ensureDependencies(() => {
                            this.initEditor();
                        });
                    },

                    ensureDependencies(callback) {
                        if (typeof jQuery === 'undefined') {
                            if (!document.getElementById('jquery-script')) {
                                const script = document.createElement('script');
                                script.id = 'jquery-script';
                                script.src = 'https://code.jquery.com/jquery-3.7.1.min.js';
                                document.head.appendChild(script);
                            }

                            const checkJquery = setInterval(() => {
                                if (typeof jQuery !== 'undefined') {
                                    clearInterval(checkJquery);
                                    this.ensureSummernote(callback);
                                }
                            }, 50);
                        } else {
                            this.ensureSummernote(callback);
                        }
                    },

                    ensureSummernote(callback) {
                        if (!document.getElementById('summernote-css')) {
                            const css = document.createElement('link');
                            css.id = 'summernote-css';
                            css.href = 'https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css';
                            css.rel = 'stylesheet';
                            document.head.appendChild(css);
                        }

                        if (typeof jQuery.fn === 'undefined' || typeof jQuery.fn.summernote === 'undefined') {
                            if (!document.getElementById('summernote-js')) {
                                const script = document.createElement('script');
                                script.id = 'summernote-js';
                                script.src = 'https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.js';
                                document.head.appendChild(script);
                            }

                            const checkSummernote = setInterval(() => {
                                if (typeof jQuery !== 'undefined' && typeof jQuery.fn !== 'undefined' && typeof jQuery.fn.summernote !== 'undefined') {
                                    clearInterval(checkSummernote);
                                    callback();
                                }
                            }, 50);
                        } else {
                            callback();
                        }
                    },

                    initEditor() {
                        if (this.isLoaded || !this.$refs.editor) return;
                        this.isLoaded = true;

                        const $editor = jQuery(this.$refs.editor);

                        $editor.summernote({
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
                                        $editor.summernote('code', this.state);
                                    }
                                },
                                onImageUpload: (files) => {
                                    Array.from(files).forEach((file) => {
                                        const formData = new FormData();
                                        formData.append('image', file);

                                        const metaToken = document.querySelector('meta[name="csrf-token"]');
                                        const inputToken = document.querySelector('input[name="_token"]');
                                        const csrf = (metaToken && metaToken.content)
                                            || (inputToken && inputToken.value)
                                            || this.csrfToken;

                                        fetch(this.uploadUrl, {
                                            method: 'POST',
                                            headers: {
                                                'X-CSRF-TOKEN': csrf,
                                                'Accept': 'application/json',
                                            },
                                            credentials: 'same-origin',
                                            body: formData,
                                        })
                                            .then((res) => {
                                                if (!res.ok) {
                                                    throw new Error('Upload gagal (' + res.status + ')');
                                                }
                                                return res.json();
                                            })
                                            .then((data) => {
                                                if (data.url) {
                                                    $editor.summernote('insertImage', data.url);
                                                    this.state = $editor.summernote('code');
                                                }
                                            })
                                            .catch((err) => {
                                                alert(err.message || 'Gagal mengunggah gambar.');
                                            });
                                    });
                                }
                            }
                        });

                        this.$watch('state', (value) => {
                            if (value !== $editor.summernote('code')) {
                                $editor.summernote('code', value || '');
                            }
                        });
                    },

                    destroy() {
                        if (typeof jQuery !== 'undefined' && this.$refs.editor) {
                            try {
                                jQuery(this.$refs.editor).summernote('destroy');
                            } catch (e) {}
                        }
                    }
                };
            };
        }
    </script>

    <div
        wire:ignore
        x-data="summernoteEditorComponent({
            state: $wire.$entangle(@js($getStatePath())),
            uploadUrl: @js(route('admin.editor-image-upload')),
            csrfToken: @js(csrf_token()),
        })"
        {{ $getExtraAttributeBag() }}
    >
        <div x-ref="editor"></div>
    </div>
</x-dynamic-component>
