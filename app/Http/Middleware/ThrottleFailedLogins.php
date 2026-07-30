<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\RateLimiter;
use Symfony\Component\HttpFoundation\Response;

class ThrottleFailedLogins
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // Hanya berlaku untuk POST request ke route login
        if ($request->isMethod('post') && $request->is('admin/login')) {
            $key = $this->throttleKey($request);
            
            // Cek apakah sudah terlalu banyak percobaan
            if (RateLimiter::tooManyAttempts($key, 10)) {
                $seconds = RateLimiter::availableIn($key);
                
                return back()->withErrors([
                    'email' => "Terlalu banyak percobaan login gagal. Silakan coba lagi dalam {$seconds} detik."
                ])->withInput($request->only('email'));
            }
        }
        
        $response = $next($request);
        
        // Jika login gagal (status 302 dengan error), tambahkan hit
        if ($request->isMethod('post') && $request->is('admin/login')) {
            if ($response->isRedirect() && session()->has('errors')) {
                $key = $this->throttleKey($request);
                
                // Tambah 1 percobaan gagal, expire dalam 5 menit (300 detik)
                RateLimiter::hit($key, 300);
            }
        }
        
        return $response;
    }
    
    /**
     * Generate throttle key berdasarkan IP dan email
     */
    protected function throttleKey(Request $request): string
    {
        $email = $request->input('email', '');
        $ip = $request->ip();
        
        return 'login_attempts:' . sha1($email . '|' . $ip);
    }
    
    /**
     * Clear throttle attempts (untuk dipanggil saat login berhasil)
     */
    public static function clearAttempts(Request $request): void
    {
        $email = $request->input('email', '');
        $ip = $request->ip();
        $key = 'login_attempts:' . sha1($email . '|' . $ip);
        
        RateLimiter::clear($key);
    }
}
