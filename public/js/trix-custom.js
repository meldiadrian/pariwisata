/**
 * Trix Editor Customizations
 * =============================================================================
 * Dimuat di BODY_END sehingga DOM + Livewire sudah siap saat script berjalan.
 *
 * 1. PASTE SANITIZER
 *    Strip semua HTML formatting saat paste dari website lain.
 *    Pertahankan struktur paragraf/baris.
 *
 * 2. ENTER KEY → NEW PARAGRAPH
 *    Enter langsung membuat paragraf baru tanpa Shift+Enter.
 * =============================================================================
 */

(function () {
    'use strict';

    /* ─────────────────────────────────────────────────────────────────────────
       Utility: Ubah HTML clipboard menjadi plain text dengan paragraf terjaga
    ───────────────────────────────────────────────────────────────────────── */
    function htmlToCleanText(html) {
        return html
            .replace(/<h[1-6][^>]*>/gi, '')
            .replace(/<\/h[1-6]>/gi, '\n\n')
            .replace(/<p[^>]*>/gi, '')
            .replace(/<\/p>/gi, '\n\n')
            .replace(/<div[^>]*>/gi, '')
            .replace(/<\/div>/gi, '\n')
            .replace(/<li[^>]*>/gi, '• ')
            .replace(/<\/li>/gi, '\n')
            .replace(/<\/?[uo]l[^>]*>/gi, '\n')
            .replace(/<br\s*\/?>/gi, '\n')
            .replace(/<[^>]+>/g, '')
            .replace(/&nbsp;/g, ' ')
            .replace(/&amp;/g, '&')
            .replace(/&lt;/g, '<')
            .replace(/&gt;/g, '>')
            .replace(/&quot;/g, '"')
            .replace(/&#39;|&apos;/g, "'")
            .replace(/\n{3,}/g, '\n\n')
            .trim();
    }

    /* ─────────────────────────────────────────────────────────────────────────
       Pasang listener ke satu elemen trix-editor
    ───────────────────────────────────────────────────────────────────────── */
    function initTrixEditor(editorEl) {
        if (!editorEl || editorEl._trixCustom) return;
        editorEl._trixCustom = true;

        /* 1. Strip formatting on paste */
        editorEl.addEventListener('trix-before-paste', function (event) {
            var paste = event.paste;
            if (paste && paste.html) {
                var clean = htmlToCleanText(paste.html);
                paste.html    = undefined;
                paste.string  = clean;
            }
        });

        /* 2. Enter -> Single Line Break */
        editorEl.addEventListener('keydown', function (event) {
            if (event.key === 'Enter' && !event.shiftKey) {
                event.preventDefault();
                editorEl.editor.insertLineBreak();
            }
        });
    }

    /* ─────────────────────────────────────────────────────────────────────────
       Scan semua editor yang sudah ada di DOM
    ───────────────────────────────────────────────────────────────────────── */
    function attachToAll() {
        document.querySelectorAll('trix-editor').forEach(initTrixEditor);
    }

    /* Trix fires ini setiap kali satu editor selesai initialize */
    document.addEventListener('trix-initialize', function (e) {
        initTrixEditor(e.target);
    });

    /* Initial scan (script sudah di body-end, DOM pasti siap) */
    attachToAll();

    /* Livewire re-renders / navigates */
    document.addEventListener('livewire:navigated', attachToAll);
    document.addEventListener('livewire:load',      attachToAll);

})();
