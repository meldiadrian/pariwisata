<?php

namespace App\Listeners;

use App\Http\Middleware\ThrottleFailedLogins;
use Illuminate\Auth\Events\Login;
use Illuminate\Support\Facades\RateLimiter;

class ClearLoginAttempts
{
    /**
     * Create the event listener.
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     */
    public function handle(Login $event): void
    {
        // Clear login attempts saat login berhasil
        $request = request();
        $email = $event->user->email ?? $request->input('email', '');
        $ip = $request->ip();
        
        if ($email) {
            $key = 'login_attempts:' . sha1($email . '|' . $ip);
            RateLimiter::clear($key);
        }
    }
}
