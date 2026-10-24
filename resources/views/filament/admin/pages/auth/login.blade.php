<div class="lc-root">

    {{-- ============================================================
    STYLES — Capsule Login · Portal Wisata
    Senior UI/UX approach: typography scale, spacing rhythm,
    colour system, glassmorphism, micro-interactions
    ============================================================ --}}
    <style>
        /* ── Google Font ── */
        @import url('https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap');

        /* ────────────────────────────────────────────
       1. FILAMENT SHELL RESET
       Strip the default white card/panel that wraps
       every Filament auth page.
    ──────────────────────────────────────────── */
        html,
        body,
        body.fi-body,
        .fi-body .fi-layout,
        .fi-simple-layout,
        .fi-simple-page,
        .fi-simple-main,
        section.fi-simple-page,
        main.fi-simple-main,
        .fi-simple-page>* {
            background: transparent !important;
            background-color: transparent !important;
            box-shadow: none !important;
            border: none !important;
            border-radius: 0 !important;
            padding: 0 !important;
            min-height: 0 !important;
            max-width: 100% !important;
            width: auto !important;
        }

        /* Label form */
        .fi-fo-field-label-content {
            color: #ffffff !important;
        }

        /* Tanda wajib (*) */
        .fi-fo-field-label-required-mark {
            color: #ffffff !important;
        }



        /* ────────────────────────────────────────────
       2. DESIGN TOKENS - GREEN EMERALD THEME
    ──────────────────────────────────────────── */
        :root {
            /* Emerald/Teal Palette */
            --clr-green-primary: #10b981;
            --clr-green-secondary: #059669;
            --clr-green-accent: #34d399;
            --clr-green-light: #6ee7b7;
            --clr-green-dark: #047857;

            --clr-bg: #14b8a6;
            --clr-surface: rgba(255, 255, 255, 0.055);
            --clr-border: rgba(16, 185, 129, 0.22);
            --clr-border-glow: rgba(52, 211, 153, 0.60);
            --clr-violet: #10b981;
            --clr-indigo: #059669;
            --clr-cyan: #14b8a6;
            --clr-pink: #34d399;
            --clr-text: #ffffff;
            --clr-muted: rgba(255, 255, 255, 0.42);
            --clr-faint: rgba(255, 255, 255, 0.18);

            /* Radius */
            --r-card: 2.25rem;
            --r-input: 9999px;
            --r-btn: 9999px;

            ;

            /* Transition */
            --tr: 0.25s ease;
        }

        /* ────────────────────────────────────────────
       3. PAGE SHELL
    ──────────────────────────────────────────── */
        *,
        *::before,
        *::after {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        /* ── Background: green theme matching capsule accent ── */
        body.fi-body,
        html {
            background:
                /* Emerald glow — kiri atas */
                radial-gradient(ellipse 75% 65% at 5% 8%, rgba(16, 185, 129, 0.30) 0%, transparent 68%),
                /* Teal bloom — kanan bawah */
                radial-gradient(ellipse 70% 60% at 95% 92%, rgba(5, 150, 105, 0.25) 0%, transparent 68%),
                /* Lime shimmer — tengah kiri */
                radial-gradient(ellipse 55% 48% at 20% 55%, rgba(74, 222, 128, 0.12) 0%, transparent 65%),
                /* Cyan accent — kanan atas */
                radial-gradient(ellipse 50% 42% at 88% 5%, rgba(20, 184, 166, 0.18) 0%, transparent 62%),
                /* Dark forest base */
                #030f08 !important;
            background-attachment: fixed !important;
        }

        .lc-root {
            font-family: 'Plus Jakarta Sans', system-ui, sans-serif;
            -webkit-font-smoothing: antialiased;
            min-height: 100vh;
            width: 100%;
            display: grid;
            place-items: center;
            background: transparent;
            position: relative;
            overflow: hidden;
        }

        /* Noise texture + subtle vignette */
        .lc-root::before {
            content: '';
            position: fixed;
            inset: 0;
            background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 256 256' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noise'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noise)' opacity='1'/%3E%3C/svg%3E");
            opacity: 0.028;
            pointer-events: none;
            z-index: 1;
        }

        /* Slow colour-shift animation on background */
        @keyframes bgShift {
            0% {
                background-position: 0% 0%, 100% 100%, 50% 50%, 100% 0%;
            }

            50% {
                background-position: 8% 12%, 90% 85%, 52% 55%, 92% 8%;
            }

            100% {
                background-position: 0% 0%, 100% 100%, 50% 50%, 100% 0%;
            }
        }

        /* ────────────────────────────────────────────
       4. CAPSULE CARD
    ──────────────────────────────────────────── */
        .lc-card {
            position: relative;
            z-index: 10;
            width: min(440px, calc(100vw - 2rem));
            background: var(--clr-surface);
            backdrop-filter: blur(48px) saturate(1.6);
            -webkit-backdrop-filter: blur(48px) saturate(1.6);
            border: 1px solid var(--clr-border);
            border-radius: var(--r-card);
            padding: 2.75rem 2.5rem 2.5rem;
            box-shadow: var(--shadow-card);
            animation: cardRise 0.65s cubic-bezier(0.34, 1.42, 0.64, 1) both;
        }

        /* Gradient border ring on hover - Green */
        .lc-card::before {
            content: '';
            position: absolute;
            inset: -1px;
            border-radius: calc(var(--r-card) + 1px);
            background: linear-gradient(135deg, rgba(16, 185, 129, 0.55), rgba(20, 184, 166, 0.40), rgba(52, 211, 153, 0.30));
            z-index: -1;
            opacity: 0;
            transition: opacity 0.4s ease;
        }

        .lc-card:hover::before {
            opacity: 1;
        }

        @keyframes cardRise {
            from {
                opacity: 0;
                transform: translateY(36px) scale(0.96);
            }

            to {
                opacity: 1;
                transform: translateY(0) scale(1);
            }
        }

        /* ────────────────────────────────────────────
       5. CARD HEADER
    ──────────────────────────────────────────── */
        .lc-header {
            text-align: center;
            margin-bottom: 2rem;
        }

        /* Logo pill */
        .lc-logo-pill {
            display: inline-flex;
            align-items: center;
            gap: 0.6rem;
            background: rgba(255, 255, 255, 0.07);
            border: 1px solid rgba(255, 255, 255, 0.12);
            border-radius: 9999px;
            padding: 0.4rem 1rem 0.4rem 0.45rem;
            margin-bottom: 1.5rem;
            animation: pillFade 0.5s ease 0.2s both;
        }

        @keyframes pillFade {
            from {
                opacity: 0;
                transform: scale(0.9);
            }

            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        .lc-logo-icon {
            width: 32px;
            height: 32px;
            border-radius: 50%;
            background: linear-gradient(135deg, var(--clr-green-primary), var(--clr-green-accent));
            display: grid;
            place-items: center;
            font-size: 1rem;
            box-shadow: 0 4px 14px rgba(16, 185, 129, 0.5);
            flex-shrink: 0;
        }

        .lc-logo-text {
            font-size: 0.78rem;
            font-weight: 700;
            color: rgba(255, 255, 255, 0.8);
            letter-spacing: 0.04em;
            text-transform: uppercase;
        }

        /* Heading */
        .lc-heading {
            font-size: clamp(1.35rem, 4vw, 1.6rem);
            font-weight: 800;
            color: var(--clr-text);
            letter-spacing: -0.03em;
            line-height: 1.15;
            margin-bottom: 0.4rem;
        }

        .lc-subheading {
            font-size: 0.82rem;
            color: var(--clr-muted);
            font-weight: 400;
            line-height: 1.5;
        }

        /* Accent line */
        .lc-accent {
            width: 48px;
            height: 3px;
            background: linear-gradient(90deg, var(--clr-green-primary), var(--clr-green-accent));
            border-radius: 9999px;
            margin: 1rem auto 0;
            box-shadow: 0 0 12px rgba(16, 185, 129, 0.55);
            animation: accentGrow 0.6s ease 0.35s both;
        }

        @keyframes accentGrow {
            from {
                transform: scaleX(0);
                opacity: 0;
            }

            to {
                transform: scaleX(1);
                opacity: 1;
            }
        }

        /* ────────────────────────────────────────────
       6. FORM — FILAMENT OVERRIDES
    ──────────────────────────────────────────── */
        .lc-form {
            display: flex;
            flex-direction: column;
            gap: 1.1rem;
        }

        /* Field label */
        .lc-form label,
        .lc-form .fi-fo-field-wrp label {
            display: block !important;
            text-decoration-color: #ffffff !important;
            font-size: 0.7rem !important;
            font-weight: 700 !important;
            letter-spacing: 0.09em !important;
            margin-bottom: 0.45rem !important;
            padding-left: 0.1rem !important;
        }

        /* Extra force untuk label putih */
        .lc-form .fi-fo-field-wrp-label,
        .lc-form .fi-fo-field-wrp>label,
        .lc-form label.fi-fo-field-wrp-label,
        .fi-simple-page .lc-form label {
            color: #ffffff !important;
        }

        /* Required asterisk */
        .lc-form .fi-fo-field-label-required-mark {
            color: #ffffff !important;
            margin-left: 2px !important;
        }

        /* Input wrapper — capsule pill shape */
        .lc-form .fi-input-wrapper,
        .lc-form .fi-input-wrp {
            background: rgba(255, 255, 255, 0.06) !important;
            border: 1px solid var(--clr-border) !important;
            border-radius: var(--r-input) !important;
            box-shadow: none !important;
            transition: border-color var(--tr), box-shadow var(--tr), background var(--tr) !important;
            overflow: hidden !important;
        }

        .lc-form .fi-input-wrapper:focus-within,
        .lc-form .fi-input-wrp:focus-within {
            background: rgba(255, 255, 255, 0.10) !important;
            border-color: var(--clr-border-glow) !important;
            box-shadow:
                0 0 0 3px rgba(16, 185, 129, 0.18),
                0 0 24px rgba(16, 185, 129, 0.12) !important;
        }

        /* Input text */
        .lc-form input[type="email"],
        .lc-form input[type="text"],
        .lc-form input[type="password"] {
            background: transparent !important;
            color: var(--clr-text) !important;
            font-family: 'Plus Jakarta Sans', sans-serif !important;
            font-size: 0.875rem !important;
            font-weight: 500 !important;
            padding: 0.875rem 1.3rem !important;
            border: none !important;
            outline: none !important;
            box-shadow: none !important;
            width: 100% !important;
            border-radius: var(--r-input) !important;
        }

        .lc-form input::placeholder {
            color: var(--clr-faint) !important;
            font-weight: 400 !important;
        }

        /* Password eye icon */
        .lc-form .fi-input-suffix-item,
        .lc-form .fi-input-prefix-item {
            color: var(--clr-muted) !important;
            padding-right: 1.1rem !important;
            cursor: pointer !important;
            transition: color var(--tr) !important;
        }

        .lc-form .fi-input-suffix-item:hover {
            color: var(--clr-text) !important;
        }

        /* Hide remember-me */
        .lc-form .fi-checkbox-wrapper,
        .lc-form [data-id="remember"],
        .lc-form [wire\:key*="remember"] {
            display: none !important;
        }

        /* Validation error */
        .lc-form .fi-fo-field-wrp-validation-error p,
        .lc-form [data-validation-error] {
            color: #fb7185 !important;
            font-size: 0.72rem !important;
            margin-top: 0.35rem !important;
            padding-left: 1.1rem !important;
            font-weight: 500 !important;
        }

        /* ────────────────────────────────────────────
       7. DIVIDER
    ──────────────────────────────────────────── */
        .lc-divider {
            display: flex;
            align-items: center;
            gap: 0.8rem;
            margin: 1.4rem 0 0;
        }

        .lc-divider-line {
            flex: 1;
            height: 1px;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.08), transparent);
        }

        .lc-divider-label {
            font-size: 0.65rem;
            font-weight: 700;
            letter-spacing: 0.14em;
            color: rgba(255, 255, 255, 0.22);
            text-transform: uppercase;
            white-space: nowrap;
        }

        /* ────────────────────────────────────────────
       8. SUBMIT BUTTON — Capsule Pill
    ──────────────────────────────────────────── */
        .lc-btn-wrap {
            margin-top: 1.1rem;
        }

        .lc-btn {
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
            width: 100%;
            padding: 0.9rem 1.5rem;
            border-radius: var(--r-btn);
            border: none;
            cursor: pointer;
            overflow: hidden;
            /* Gradient Emerald */
            background: linear-gradient(110deg, #059669 0%, #10b981 40%, #14b8a6 80%, #34d399 100%);
            background-size: 220% 100%;
            background-position: 0% center;
            /* Typography */
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-size: 0.78rem;
            font-weight: 800;
            letter-spacing: 0.14em;
            text-transform: uppercase;
            color: #fff;
            /* Shadow */
            box-shadow:
                0 8px 28px rgba(16, 185, 129, 0.45),
                0 2px 8px rgba(16, 185, 129, 0.45),
                /* Transition */
                transition: background-position 0.5s ease,
                transform 0.25s ease,
                box-shadow 0.25s ease;
        }

        /* Shine sweep */
        .lc-btn::before {
            content: '';
            position: absolute;
            top: -40%;
            left: -55%;
            width: 35%;
            height: 180%;
            background: rgba(255, 255, 255, 0.14);
            transform: skewX(-22deg);
            transition: left 0.7s ease;
            pointer-events: none;
        }

        .lc-btn:hover::before {
            left: 120%;
        }

        .lc-btn:hover {
            background-position: 100% center;
            transform: translateY(-2px);
            box-shadow:
                0 14px 40px rgba(16, 185, 129, 0.52),
                0 4px 14px rgba(0, 0, 0, 0.28);
        }

        .lc-btn:active {
            transform: translateY(0);
            box-shadow: 0 6px 18px rgba(16, 185, 129, 0.32);
        }

        /* ────────────────────────────────────────────
       9. FOOTER
    ──────────────────────────────────────────── */
        .lc-footer {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.45rem;
            margin-top: 1.65rem;
            padding-top: 1.35rem;
            border-top: 1px solid rgba(255, 255, 255, 0.06);
        }

        .lc-footer-badge {
            display: inline-flex;
            align-items: center;
            gap: 0.35rem;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.08);
            border-radius: 9999px;
            padding: 0.3rem 0.75rem;
            font-size: 0.68rem;
            font-weight: 600;
            color: rgba(255, 255, 255, 0.30);
            letter-spacing: 0.04em;
        }

        .lc-footer-dot {
            width: 5px;
            height: 5px;
            border-radius: 50%;
            background: #22c55e;
            box-shadow: 0 0 6px #22c55e;
            animation: pulse 2s infinite;
            flex-shrink: 0;
        }

        @keyframes pulse {

            0%,
            100% {
                opacity: 1;
                transform: scale(1);
            }

            50% {
                opacity: 0.5;
                transform: scale(1.3);
            }
        }
    </style>

    {{-- ========================== MARKUP ========================== --}}
    <div class="lc-card">

        {{-- ── Header ── --}}
        <div class="lc-header">

            {{-- Logo Pill --}}
            <div class="lc-logo-pill">
                <div class="lc-logo-icon">🌏</div>
                <span class="lc-logo-text">Portal Wisata</span>
            </div>

            <h1 class="lc-heading">Selamat Datang</h1>
            <p class="lc-subheading">Masuk ke panel administrator</p>
            <div class="lc-accent"></div>
        </div>

        {{-- ── Render Hook Before ── --}}
        {{ \Filament\Support\Facades\FilamentView::renderHook(\Filament\View\PanelsRenderHook::AUTH_LOGIN_FORM_BEFORE, scopes: $this->getRenderHookScopes()) }}

        {{-- ── Form ── --}}
        <form wire:submit="authenticate">
            <div class="lc-form" id="lc-form">
                {{ $this->form }}
            </div>

            {{-- Divider --}}
            <div class="lc-divider">
                <div class="lc-divider-line"></div>
                <span class="lc-divider-label">Akses Aman</span>
                <div class="lc-divider-line"></div>
            </div>

            {{-- Submit --}}
            <div class="lc-btn-wrap">
                <button type="submit" class="lc-btn" id="lc-submit-btn">
                    <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="none" viewBox="0 0 24 24"
                        stroke="currentColor" stroke-width="2.8" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M15.75 9V5.25A2.25 2.25 0 0013.5 3h-6a2.25 2.25 0 00-2.25 2.25v13.5A2.25 2.25 0 007.5 21h6a2.25 2.25 0 002.25-2.25V15m3 0l3-3m0 0l-3-3m3 3H9" />
                    </svg>
                    Masuk Sekarang
                </button>
            </div>
        </form>

        {{-- ── Render Hook After ── --}}
        {{ \Filament\Support\Facades\FilamentView::renderHook(\Filament\View\PanelsRenderHook::AUTH_LOGIN_FORM_AFTER, scopes: $this->getRenderHookScopes()) }}

        {{-- Footer --}}
        <div class="lc-footer">
            <div class="lc-footer-badge">
                <span class="lc-footer-dot"></span>
                Terenkripsi &amp; aman
            </div>
        </div>

    </div>

    {{-- ========================== JS ========================== --}}
    <script>
        (function () {
            function patchForm() {
                // Placeholder text
                const em = document.querySelector('.lc-form input[type="email"], .lc-form input[name="data.email"]');
                const pw = document.querySelector('.lc-form input[type="password"]');
                if (em) em.placeholder = 'admin@portal-wisata.id';
                if (pw) pw.placeholder = '••••••••••••';

                // Force capsule border-radius after Livewire re-render
                document.querySelectorAll('.lc-form .fi-input-wrapper, .lc-form .fi-input-wrp').forEach(el => {
                    el.style.borderRadius = '9999px';
                    el.style.overflow = 'hidden';
                });
            }

            document.addEventListener('DOMContentLoaded', patchForm);
            document.addEventListener('livewire:navigated', patchForm);
            document.addEventListener('livewire:load', patchForm);
            if (typeof Livewire !== 'undefined') {
                Livewire.hook('element.updated', patchForm);
            }
        })();
    </script>

    {{-- Filament Modals --}}
    <x-filament-actions::modals />

</div>
