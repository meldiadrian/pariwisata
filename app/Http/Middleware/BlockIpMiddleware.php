<?php

namespace App\Http\Middleware;

use App\Models\BlockedIp;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class BlockIpMiddleware
{
    public function handle(Request $request, Closure $next): Response
    {
        $ip = $request->ip();

        $blocked = BlockedIp::where('ip_address', $ip)
            ->where('is_active', true)
            ->exists();

        if ($blocked) {
            abort(403, 'Akses ditolak. IP Anda telah diblokir oleh administrator.');
        }

        return $next($request);
    }
}
