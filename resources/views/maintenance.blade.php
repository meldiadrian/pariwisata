<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $setting->maintenance_title ?? 'Website Under Maintenance' }}</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap');

        body {
            font-family: 'Inter', sans-serif;
        }

        @keyframes float {

            0%,
            100% {
                transform: translateY(0px);
            }

            50% {
                transform: translateY(-20px);
            }
        }

        @keyframes pulse-ring {
            0% {
                transform: scale(0.8);
                opacity: 1;
            }

            100% {
                transform: scale(1.4);
                opacity: 0;
            }
        }

        @keyframes spin-slow {
            from {
                transform: rotate(0deg);
            }

            to {
                transform: rotate(360deg);
            }
        }

        .animate-float {
            animation: float 3s ease-in-out infinite;
        }

        .animate-pulse-ring {
            animation: pulse-ring 2s cubic-bezier(0.4, 0, 0.6, 1) infinite;
        }

        .animate-spin-slow {
            animation: spin-slow 20s linear infinite;
        }

        .gradient-text {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .glass-effect {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.2);
        }
    </style>
</head>

<body
    class="bg-gradient-to-br from-indigo-500 via-purple-500 to-pink-500 min-h-screen flex items-center justify-center p-4 overflow-hidden relative">

    {{-- Animated Background Elements --}}
    <div class="absolute inset-0 overflow-hidden pointer-events-none">
        {{-- Floating circles --}}
        <div class="absolute top-20 left-10 w-72 h-72 bg-white/10 rounded-full blur-3xl animate-float"></div>
        <div class="absolute bottom-20 right-10 w-96 h-96 bg-purple-400/20 rounded-full blur-3xl animate-float"
            style="animation-delay: 1s;"></div>
        <div class="absolute top-1/2 left-1/3 w-64 h-64 bg-pink-400/20 rounded-full blur-3xl animate-float"
            style="animation-delay: 2s;"></div>

        {{-- Spinning gears (decorative) --}}
        <div class="absolute top-10 right-20 opacity-10">
            <i class="fas fa-cog text-white text-6xl animate-spin-slow"></i>
        </div>
        <div class="absolute bottom-10 left-20 opacity-10">
            <i class="fas fa-cog text-white text-8xl animate-spin-slow" style="animation-direction: reverse;"></i>
        </div>
    </div>

    {{-- Main Content --}}
    <div class="relative z-10 max-w-2xl w-full">
        <div class="text-center mb-6">
            {{-- Logo/Icon --}}
            <div class="relative inline-block mb-4">
                <div class="absolute inset-0 animate-pulse-ring">
                    <div class="w-24 h-24 rounded-full bg-white/30"></div>
                </div>

            </div>

            {{-- Main Message --}}
            <h1 class="text-s md:text-s font-extrabold text-white mb-3 drop-shadow-lg">
                {{ $setting->maintenance_title ?? 'Website Under Maintenance' }}
            </h1>

            <div class="inline-block glass-effect px-6 py-3 rounded-full mb-8">
                <div class="flex items-center gap-3 text-white">
                    <div class="flex gap-1">
                        <span class="w-3 h-3 bg-red-400 rounded-full animate-pulse"></span>
                        <span class="w-3 h-3 bg-yellow-400 rounded-full animate-pulse"
                            style="animation-delay: 0.2s;"></span>
                        <span class="w-3 h-3 bg-green-400 rounded-full animate-pulse"
                            style="animation-delay: 0.4s;"></span>
                    </div>
                    <span class="font-semibold">System Update in Progress</span>
                </div>
            </div>
        </div>

        {{-- Content Card --}}
        <div class="glass-effect rounded-3xl p-6 md:p-8 shadow-2xl mb-6">
            <div class="text-center mb-6">
                <p class="text-lg md:text-xl text-white/90 leading-relaxed">
                    {{ $setting->maintenance_message ?? 'We are currently performing scheduled maintenance to improve your experience. We\'ll be back shortly!' }}
                </p>
            </div>

            {{-- Features Grid --}}
            <div class="grid md:grid-cols-3 gap-4 mb-6">
                <div class="text-center">
                    <div class="w-12 h-12 bg-white/20 rounded-xl flex items-center justify-center mx-auto mb-3">
                        <i class="fas fa-server text-xl text-white"></i>
                    </div>
                    <h3 class="text-white font-bold text-base mb-1">Server Upgrade</h3>
                    <p class="text-white/70 text-xs">Optimizing performance</p>
                </div>

                <div class="text-center">
                    <div class="w-12 h-12 bg-white/20 rounded-xl flex items-center justify-center mx-auto mb-3">
                        <i class="fas fa-shield-alt text-xl text-white"></i>
                    </div>
                    <h3 class="text-white font-bold text-base mb-1">Security Update</h3>
                    <p class="text-white/70 text-xs">Enhancing protection</p>
                </div>

                <div class="text-center">
                    <div class="w-12 h-12 bg-white/20 rounded-xl flex items-center justify-center mx-auto mb-3">
                        <i class="fas fa-rocket text-xl text-white"></i>
                    </div>
                    <h3 class="text-white font-bold text-base mb-1">New Features</h3>
                    <p class="text-white/70 text-xs">Coming soon</p>
                </div>
            </div>

            {{-- Progress Bar --}}
            <div class="mb-8">
                <div class="flex justify-between text-white/80 text-sm mb-2">
                    <span>Maintenance Progress</span>
                    <span id="progress-text">0%</span>
                </div>
                <div class="h-3 bg-white/20 rounded-full overflow-hidden">
                    <div id="progress-bar"
                        class="h-full bg-gradient-to-r from-blue-400 via-purple-400 to-pink-400 rounded-full transition-all duration-1000 ease-out"
                        style="width: 0%"></div>
                </div>
            </div>

            {{-- Contact Info --}}
            <div class="text-center border-t border-white/20 pt-6">
                <p class="text-white/80 mb-4">Need immediate assistance?</p>
                <div class="flex flex-wrap justify-center gap-4">
                    @if(!empty($setting->email))
                        <a href="mailto:{{ $setting->email }}"
                            class="inline-flex items-center gap-2 bg-white/20 hover:bg-white/30 px-6 py-3 rounded-xl text-white font-medium transition-all duration-300 transform hover:scale-105">
                            <i class="fas fa-envelope"></i>
                            <span>Email Us</span>
                        </a>
                    @endif

                    @if(!empty($setting->phone))
                        <a href="tel:{{ $setting->phone }}"
                            class="inline-flex items-center gap-2 bg-white/20 hover:bg-white/30 px-6 py-3 rounded-xl text-white font-medium transition-all duration-300 transform hover:scale-105">
                            <i class="fas fa-phone"></i>
                            <span>Call Us</span>
                        </a>
                    @endif
                </div>
            </div>
        </div>

        {{-- Footer --}}
        <div class="text-center">
            <p class="text-white/70 mb-4">
                <i class="far fa-clock mr-2"></i>
                Started:
                {{ $setting->maintenance_started_at ? $setting->maintenance_started_at->format('d F Y, H:i') : now()->format('d F Y, H:i') }}
                WIB
            </p>
            <p class="text-white/60 text-sm">
                © {{ now()->year }} {{ $setting->site_name ?? config('app.name') }}. All rights reserved.
            </p>

            {{-- Social Media Links (if available) --}}
            <div class="flex justify-center gap-4 mt-4">
                <a href="#"
                    class="w-10 h-10 bg-white/10 hover:bg-white/20 rounded-full flex items-center justify-center text-white transition-all duration-300 transform hover:scale-110">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a href="#"
                    class="w-10 h-10 bg-white/10 hover:bg-white/20 rounded-full flex items-center justify-center text-white transition-all duration-300 transform hover:scale-110">
                    <i class="fab fa-twitter"></i>
                </a>
                <a href="#"
                    class="w-10 h-10 bg-white/10 hover:bg-white/20 rounded-full flex items-center justify-center text-white transition-all duration-300 transform hover:scale-110">
                    <i class="fab fa-instagram"></i>
                </a>
            </div>
        </div>
    </div>

    {{-- Auto-refresh notice --}}
    <div class="fixed bottom-4 right-4 glass-effect px-4 py-2 rounded-full text-white text-sm shadow-lg z-20">
        <i class="fas fa-sync-alt mr-2 animate-spin"></i>
        Auto-refresh in <span id="countdown">60</span>s
    </div>

    {{-- JavaScript for animations and countdown --}}
    <script>
        // Progress bar animation
        let progress = 0;
        const progressBar = document.getElementById('progress-bar');
        const progressText = document.getElementById('progress-text');

        const animateProgress = () => {
            const targetProgress = Math.min(progress + Math.random() * 15, 85);
            progress = targetProgress;
            progressBar.style.width = progress + '%';
            progressText.textContent = Math.round(progress) + '%';

            if (progress < 85) {
                setTimeout(animateProgress, 2000 + Math.random() * 3000);
            }
        };

        setTimeout(animateProgress, 1000);

        // Countdown timer
        let countdown = 60;
        const countdownElement = document.getElementById('countdown');

        const updateCountdown = () => {
            countdown--;
            countdownElement.textContent = countdown;

            if (countdown <= 0) {
                location.reload();
            } else {
                setTimeout(updateCountdown, 1000);
            }
        };

        setTimeout(updateCountdown, 1000);
    </script>
</body>

</html>