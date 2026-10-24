<?php

use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__.'/../routes/web.php',
        api: __DIR__.'/../routes/api.php',
        commands: __DIR__.'/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware): void {
        $middleware->web(append: [
            \App\Http\Middleware\BlockIpMiddleware::class,
            \App\Http\Middleware\CheckMaintenanceMode::class, // Maintenance Mode Check
            \App\Http\Middleware\LogPageVisit::class,
            \App\Http\Middleware\EnhancedLivewireUploadSecurity::class, // Enhanced security
            \App\Http\Middleware\ImageCacheHeaders::class,
            \App\Http\Middleware\PreventExcessiveRefresh::class,
        ]);
        
        // Middleware untuk throttle login gagal (hanya untuk route tertentu)
        $middleware->alias([
            'throttle.login' => \App\Http\Middleware\ThrottleFailedLogins::class,
        ]);
        
        $middleware->trustProxies(at: '*');
    })
    ->withExceptions(function (Exceptions $exceptions): void {
        //
    })->create();
