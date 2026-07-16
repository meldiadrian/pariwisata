<?php

namespace App\Http\Middleware;

use App\Models\ActivityLog;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class LogPageVisit
{
    /**
     * Handle an incoming request.
     * Logs a 'page_visit' activity for every web request.
     */
    public function handle(Request $request, Closure $next): Response
    {
        $response = $next($request);

        // Only log successful HTML page loads (ignore AJAX, file assets, etc.)
        $isPageRequest = !$request->ajax()
            && !$request->expectsJson()
            && $request->method() === 'GET';

        if ($isPageRequest) {
            ActivityLog::create([
                'user_id'    => auth()->id(),
                'activity'   => 'page_visit',
                'url'        => $request->fullUrl(),
                'ip_address' => $request->ip(),
                'user_agent' => $request->userAgent(),
            ]);
        }

        return $response;
    }
}
