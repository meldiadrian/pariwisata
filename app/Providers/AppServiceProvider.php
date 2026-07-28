<?php

namespace App\Providers;

use App\Models\ActivityLog;
use App\Services\ThreatDetectionService;
use Illuminate\Auth\Events\Failed;
use Illuminate\Auth\Events\Login;
use Illuminate\Auth\Events\Logout;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    public function register(): void
    {
        // Bind ThreatDetectionService as a singleton
        $this->app->singleton(ThreatDetectionService::class);
    }

    public function boot(): void
    {
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
