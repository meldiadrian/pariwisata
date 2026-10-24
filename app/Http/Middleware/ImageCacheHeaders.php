<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class ImageCacheHeaders
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        $response = $next($request);

        // Only apply to image requests
        if ($request->is('storage/*') && $this->isImageRequest($request)) {
            $response->headers->set('Cache-Control', 'public, max-age=31536000, immutable');
            $response->headers->set('Expires', gmdate('D, d M Y H:i:s', time() + 31536000) . ' GMT');
            $response->headers->set('Pragma', 'public');
            
            // Add ETag for browser caching
            if ($response->getContent()) {
                $etag = md5($response->getContent());
                $response->headers->set('ETag', $etag);
                
                // Check if client has cached version
                if ($request->header('If-None-Match') === $etag) {
                    return response()->make('', 304, $response->headers->all());
                }
            }
        }

        return $response;
    }

    /**
     * Check if the request is for an image
     */
    private function isImageRequest(Request $request): bool
    {
        $extension = strtolower(pathinfo($request->path(), PATHINFO_EXTENSION));
        return in_array($extension, ['jpg', 'jpeg', 'png', 'gif', 'webp', 'svg', 'ico']);
    }
}
