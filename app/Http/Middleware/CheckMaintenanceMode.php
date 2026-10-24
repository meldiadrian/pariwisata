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
        // Skip maintenance check for admin routes, login routes, and livewire endpoints (needed for login forms)
        if ($request->is('admin/*') || $request->is('admin') || 
            $request->is('marlong/*') || $request->is('marlong') ||
            $request->is('login') || $request->is('login/*') ||
            $request->is('livewire*')) {
            return $next($request);
        }

        // Check if user is authenticated in any guard
        $isLoggedIn = false;
        foreach (array_keys(config('auth.guards', [])) as $guard) {
            if (auth()->guard($guard)->check()) {
                $isLoggedIn = true;
                break;
            }
        }

        // Skip for authenticated users (admins) accessing frontend
        if ($isLoggedIn) {
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
