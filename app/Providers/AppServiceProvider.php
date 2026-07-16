<?php

namespace App\Providers;

use App\Models\ActivityLog;
use Illuminate\Auth\Events\Login;
use Illuminate\Auth\Events\Logout;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // Log user login activity
        Event::listen(Login::class, function (Login $event) {
            ActivityLog::create([
                'user_id'    => $event->user->id,
                'activity'   => 'login',
                'url'        => Request::fullUrl(),
                'ip_address' => Request::ip(),
                'user_agent' => Request::userAgent(),
            ]);
        });

        // Log user logout activity
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
    }
}
