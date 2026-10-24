<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Symfony\Component\HttpFoundation\Response;

class PreventExcessiveRefresh
{
    /**
     * Maximum refresh dalam window waktu
     */
    protected int $maxAttempts = 15;
    
    /**
     * Window waktu dalam detik
     */
    protected int $decaySeconds = 60;
    
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // Skip untuk request AJAX, API, dan admin panel
        if ($request->ajax() || 
            $request->is('api/*') || 
            $request->is('admin/*') ||
            $request->is('livewire/*')) {
            return $next($request);
        }
        
        $key = $this->throttleKey($request);
        
        // Ambil jumlah hit saat ini
        $attempts = Cache::get($key, 0);
        
        // Jika melebihi batas, redirect ke 404
        if ($attempts >= $this->maxAttempts) {
            // Log aktivitas mencurigakan
            \Log::warning('Excessive page refresh detected', [
                'ip' => $request->ip(),
                'url' => $request->fullUrl(),
                'user_agent' => $request->userAgent(),
                'attempts' => $attempts,
            ]);
            
            // Redirect ke halaman 404
            abort(404);
        }
        
        // Increment counter dengan expiry
        Cache::put($key, $attempts + 1, now()->addSeconds($this->decaySeconds));
        
        return $next($request);
    }
    
    /**
     * Generate throttle key berdasarkan IP, URL, dan User Agent
     */
    protected function throttleKey(Request $request): string
    {
        $ip = $request->ip();
        $url = $request->url();
        $userAgent = $request->userAgent();
        
        return 'page_refresh:' . sha1($ip . '|' . $url . '|' . $userAgent);
    }
}
