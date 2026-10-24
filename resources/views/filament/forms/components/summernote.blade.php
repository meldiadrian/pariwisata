<x-dynamic-component
    :component="$getFieldWrapperView()"
    :field="$field"
>
    <div
        wire:ignore
        x-data="{
            state: $wire.$entangle(@js($getStatePath())),
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
        {{ $getExtraAttributeBag() }}
    >
        <div x-ref="editor"></div>
    </div>
</x-dynamic-component>
