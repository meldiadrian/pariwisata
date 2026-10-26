<?php

namespace App\Providers;

use App\Models\ActivityLog;
use App\Services\ThreatDetectionService;
use Illuminate\Auth\Events\Failed;
use Illuminate\Auth\Events\Login;
use Illuminate\Auth\Events\Logout;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\ServiceProvider;
use Filament\Support\Assets\Css;
use Filament\Support\Assets\Js;
use Filament\Support\Facades\FilamentAsset;

class AppServiceProvider extends ServiceProvider
{
    public function register(): void
    {
        // Bind ThreatDetectionService as a singleton
        $this->app->singleton(ThreatDetectionService::class);
        $this->app->singleton(\App\Services\PageCacheService::class);
    }

    public function boot(): void
    {
        // Register custom assets for Filament to prevent SPA navigation issues
        FilamentAsset::register([
            Css::make('admin-custom', asset('css/admin-custom.css')),
            Js::make('trix-custom', asset('js/trix-custom.js')),
        ]);

        // Allow authenticated users to view logs
        Gate::define('viewLogViewer', function ($user = null) {
            return auth()->check();
        });

        // Optimize image serving with cache headers
        if ($this->app->environment('production')) {
            \Illuminate\Support\Facades\URL::forceScheme('https');
        }

        // Cache menu pages & categories mapping to avoid N+1 queries in Blade navigation
        \Illuminate\Support\Facades\View::composer('layouts.frontend', function ($view) {
            $menuPages = \Illuminate\Support\Facades\Cache::remember('menu:pages_map', 3600, fn() => \App\Models\Page::pluck('slug', 'id'));
            $menuCategories = \Illuminate\Support\Facades\Cache::remember('menu:categories_map', 3600, fn() => \App\Models\Category::pluck('slug', 'id'));
            $view->with('menuPages', $menuPages)->with('menuCategories', $menuCategories);
        });

        // Auto-flush page cache dan menu cache saat konten publik mengalami perubahan/dihapus
        $contentModels = [
            \App\Models\News::class,
            \App\Models\Category::class,
            \App\Models\Page::class,
            \App\Models\Setting::class,
            \App\Models\Slider::class,
            \App\Models\Festival::class,
            \App\Models\Advertisement::class,
            \App\Models\PhotoGallery::class,
            \App\Models\Video::class,
            \App\Models\Destination::class,
            \App\Models\DestinationCategory::class,
            \App\Models\Tag::class,
        ];

        foreach ($contentModels as $modelClass) {
            if (class_exists($modelClass)) {
                $modelClass::saved(function () {
                    \Illuminate\Support\Facades\Cache::forget('menu:pages_map');
                    \Illuminate\Support\Facades\Cache::forget('menu:categories_map');
                    app(\App\Services\PageCacheService::class)->flush();
                });
                $modelClass::deleted(function () {
                    \Illuminate\Support\Facades\Cache::forget('menu:pages_map');
                    \Illuminate\Support\Facades\Cache::forget('menu:categories_map');
                    app(\App\Services\PageCacheService::class)->flush();
                });
            }
        }

        // Log successful login & run threat analysis
        Event::listen(Login::class, function (Login $event) {
            $ip = Request::ip();
            ActivityLog::create([
                'user_id'    => $event->user->id,
                'activity'   => 'login',
                'url'        => Request::fullUrl(),
                'ip_address' => $ip,
                'user_agent' => Request::userAgent(),
            ]);

            // Even on success, check if this IP has been suspicious before
            app(ThreatDetectionService::class)->analyse($ip, $event->user->id);
            
            // Clear login throttle attempts saat login berhasil
            $email = $event->user->email ?? Request::input('email', '');
            if ($email) {
                $key = 'login_attempts:' . sha1($email . '|' . $ip);
                RateLimiter::clear($key);
            }
        });

        // Log logout activity
        Event::listen(Logout::class, function (Logout $event) {
            if ($event->user) {
                ActivityLog::create([
                    'user_id'    => $event->user->id,
                    'activity'   => 'logout',
                    'url'        => Request::fullUrl(),
                    'ip_address' => Request::ip(),
                    'user_agent' => Request::userAgent(),
                ]);
            }
        });

        // Log FAILED login attempts & immediately run threat detection
        Event::listen(Failed::class, function (Failed $event) {
            $ip = Request::ip();

            ActivityLog::create([
                'user_id'     => null,
                'activity'    => 'failed_login',
                'threat_level'=> 'low',
                'url'         => Request::fullUrl(),
                'ip_address'  => $ip,
                'user_agent'  => Request::userAgent(),
            ]);

            // Analyse immediately — may escalate and auto-block
            app(ThreatDetectionService::class)->analyse($ip, null);
        });
    }
}
