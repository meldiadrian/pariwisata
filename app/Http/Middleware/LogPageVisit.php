<?php

namespace App\Http\Middleware;

use App\Jobs\AnalyseThreatJob;
use App\Models\ActivityLog;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class LogPageVisit
{
    /**
     * Handle an incoming request.
     * Logs page visits, detects admin probing, dan men-dispatch threat analysis ke background queue.
     */
    public function handle(Request $request, Closure $next): Response
    {
        $response = $next($request);

        // Only log successful HTML page loads (ignore AJAX, file assets, etc.)
        $isPageRequest = !$request->ajax()
            && !$request->expectsJson()
            && $request->method() === 'GET';

        if ($isPageRequest) {
            $ip       = $request->ip();
            $userId   = auth()->id();
            $url      = $request->fullUrl();
            $activity = 'page_visit';

            // Detect unauthenticated access to /admin routes
            $isAdminProbe = str_contains($url, '/admin')
                && !$userId
                && !str_contains($url, '/admin/login');

            if ($isAdminProbe) {
                $activity = 'admin_probe';
            }

            $log = ActivityLog::create([
                'user_id'    => $userId,
                'activity'   => $activity,
                'url'        => $url,
                'ip_address' => $ip,
                'user_agent' => $request->userAgent(),
            ]);

            // Dispatch threat analysis ke background queue — tidak memblokir HTTP response
            if ($isAdminProbe || $activity === 'page_visit') {
                AnalyseThreatJob::dispatch($ip, $userId, $log->id);
            }
        }

        return $response;
    }
}
