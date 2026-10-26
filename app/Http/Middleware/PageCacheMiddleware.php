<?php

namespace App\Http\Middleware;

use App\Services\PageCacheService;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Symfony\Component\HttpFoundation\Response;

class PageCacheMiddleware
{
    public function __construct(
        protected PageCacheService $pageCache
    ) {}

    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     * @param  string|null  $ttl  Opsional TTL dalam detik (contoh: page.cache:300)
     */
    public function handle(Request $request, Closure $next, ?string $ttl = null): Response
    {
        $ttlSeconds = $ttl !== null ? (int) $ttl : null;

        // 1. Cek apakah request dapat dilayani dari cache
        if ($this->pageCache->canServe($request)) {
            $cachedResponse = $this->pageCache->get($request);

            if ($cachedResponse !== null) {
                // Tetap lakukan penghitungan view berita saat cache HIT
                $this->trackNewsViewIfApplicable($request);

                return $cachedResponse;
            }
        }

        // 2. Jika cache MISS, teruskan ke pipeline/controller berikutnya
        $response = $next($request);

        // 3. Simpan response ke dalam cache jika memenuhi syarat
        if ($this->pageCache->shouldCache($request, $response)) {
            $this->pageCache->put($request, $response, $ttlSeconds);
        }

        return $response;
    }

    /**
     * Hitung view berita secara throttle (1 per IP per 10 menit) saat request dilayani dari cache.
     */
    protected function trackNewsViewIfApplicable(Request $request): void
    {
        if (!config('pagecache.track_news_views', true)) {
            return;
        }

        if ($request->routeIs('news.show') || str_starts_with(trim($request->getPathInfo(), '/'), 'news/')) {
            $slug = $request->route('slug');
            if (!$slug) {
                $segments = explode('/', trim($request->getPathInfo(), '/'));
                $slug = $segments[1] ?? null;
            }

            if ($slug) {
                $viewKey = 'news:viewed:' . $slug . ':' . $request->ip();
                if (!Cache::has($viewKey)) {
                    try {
                        \App\Models\News::where('slug', $slug)->increment('views');
                        Cache::put($viewKey, true, 600);
                    } catch (\Throwable $e) {
                        // Abaikan kesalahan DB agar response cache tetap tersaji
                    }
                }
            }
        }
    }
}
