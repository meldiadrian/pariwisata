<?php

namespace App\Http\Middleware;

use App\Models\ActivityLog;
use App\Services\ThreatDetectionService;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class LogPageVisit
{
    /**
     * Handle an incoming request.
     * Logs page visits, detects admin probing, and triggers threat analysis.
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

            ActivityLog::create([
                'user_id'    => $userId,
                'activity'   => $activity,
                'url'        => $url,
                'ip_address' => $ip,
                'user_agent' => $request->userAgent(),
            ]);

            // Run threat analysis for every request (brute force, rate abuse, admin probe)
            if ($isAdminProbe || $activity === 'page_visit') {
                app(ThreatDetectionService::class)->analyse($ip, $userId);
            }
        }

        return $response;
    }
}
