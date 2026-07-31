<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CheckMaintenanceMode
{
    /**
     * Handle an incoming request.
     *
     * @param  Closure(Request): (Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // Skip maintenance check for admin routes
        if ($request->is('admin/*') || $request->is('admin')) {
            return $next($request);
        }

        // Skip for authenticated admin users accessing frontend
        if (auth()->check() && auth()->user()->hasRole('super_admin')) {
            return $next($request);
        }

        // Get maintenance mode status from cache (expires every 5 minutes)
        $maintenanceMode = \Illuminate\Support\Facades\Cache::remember('maintenance_mode', 300, function () {
            $setting = \App\Models\Setting::first();
            return $setting ? $setting->maintenance_mode : false;
        });

        // If maintenance mode is active, show maintenance page
        if ($maintenanceMode) {
            $setting = \Illuminate\Support\Facades\Cache::remember('maintenance_settings', 300, function () {
                return \App\Models\Setting::first();
            });

            return response()->view('maintenance', [
                'setting' => $setting,
            ], 503);
        }

        return $next($request);
    }
}
