<?php

namespace App\Services;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Symfony\Component\HttpFoundation\Response;

class PageCacheService
{
    /**
     * Dapatkan instance cache store yang digunakan untuk page caching.
     */
    protected function store()
    {
        return Cache::store(config('pagecache.store'));
    }

    /**
     * Cek apakah sistem page cache diaktifkan.
     */
    public function isEnabled(): bool
    {
        return (bool) config('pagecache.enabled', true);
    }

    /**
     * Dapatkan versi aktif dari page cache.
     * Menggunakan versioning memungkinkan flush global secara instan
     * pada cache store yang tidak mendukung tagging (seperti database / file).
     */
    public function getVersion(): string
    {
        return (string) $this->store()->get('page_cache_version', '1');
    }

    /**
     * Buat cache key yang ternormalisasi berdasarkan URL dan query string.
     */
    public function getCacheKey(Request $request): string
    {
        $url = $request->url();
        $query = $request->query();

        // Normalisasi query string agar urutan parameter (?a=1&b=2 vs ?b=2&a=1) konsisten
        if (!empty($query)) {
            ksort($query);
            $normalizedQuery = http_build_query($query);
            $fullUrl = "{$url}?{$normalizedQuery}";
        } else {
            $fullUrl = $url;
        }

        return 'page_cache:v' . $this->getVersion() . ':' . sha1($fullUrl);
    }

    /**
     * Periksa apakah request saat ini memenuhi syarat untuk dilayani dari atau disimpan ke page cache.
     */
    public function canServe(Request $request): bool
    {
        if (!$this->isEnabled()) {
            return false;
        }

        // Hanya layani method GET atau HEAD
        if (!$request->isMethod('GET') && !$request->isMethod('HEAD')) {
            return false;
        }

        // Jangan cache request AJAX atau JSON API
        if ($request->ajax() || $request->expectsJson()) {
            return false;
        }

        // Jangan cache jika user sedang terautentikasi (mencegah data/sesi tertukar)
        if (auth()->check()) {
            return false;
        }

        // Periksa apakah path masuk dalam daftar blacklist
        foreach (config('pagecache.excluded_paths', []) as $excludedPath) {
            if ($request->is($excludedPath)) {
                return false;
            }
        }

        // Jangan gunakan cache jika session memiliki flash messages atau error validasi
        if ($request->hasSession()) {
            $session = $request->session();
            if ($session->has('errors') || $session->has('status') || $session->has('success') || $session->has('warning') || $session->has('message')) {
                return false;
            }
        }

        return true;
    }

    /**
     * Periksa apakah response dari controller/view layak disimpan ke dalam cache.
     */
    public function shouldCache(Request $request, Response $response): bool
    {
        if (!$this->canServe($request)) {
            return false;
        }

        // Hanya cache HTTP status 200 OK
        if ($response->getStatusCode() !== 200) {
            return false;
        }

        // Hanya cache konten HTML atau XML (misal sitemap)
        $contentType = $response->headers->get('Content-Type', '');
        $isCacheableType = str_contains($contentType, 'text/html')
            || str_contains($contentType, 'text/xml')
            || str_contains($contentType, 'application/xml');

        if (!$isCacheableType) {
            return false;
        }

        // Pastikan konten tidak kosong
        $content = $response->getContent();
        if (empty($content) || !is_string($content)) {
            return false;
        }

        return true;
    }

    /**
     * Ambil cached response jika tersedia.
     */
    public function get(Request $request): ?Response
    {
        $key = $this->getCacheKey($request);
        $cached = $this->store()->get($key);

        if (!$cached || !is_array($cached)) {
            return null;
        }

        $etag = $cached['headers']['ETag'] ?? null;

        // Dukungan HTTP 304 Not Modified jika browser sudah memiliki versi terbaru
        if ($etag && $request->header('If-None-Match') === $etag) {
            return response('', 304, [
                'ETag' => $etag,
                'Cache-Control' => 'public, max-age=' . (int) config('pagecache.default_ttl', 300),
                'X-Page-Cache' => 'HIT-304',
            ]);
        }

        // Rekonstruksi response dari cache
        $response = response($cached['content'], $cached['status']);

        foreach ($cached['headers'] as $name => $value) {
            if ($value !== null) {
                $response->headers->set($name, $value);
            }
        }

        $response->headers->set('X-Page-Cache', 'HIT');
        $response->headers->set('X-Page-Cache-At', $cached['cached_at'] ?? now()->toIso8601String());

        return $response;
    }

    /**
     * Simpan response ke dalam cache.
     */
    public function put(Request $request, Response $response, ?int $ttl = null): void
    {
        $ttl = $ttl ?? (int) config('pagecache.default_ttl', 300);
        $content = $response->getContent();
        $etag = '"' . md5($content) . '"';

        $data = [
            'content'   => $content,
            'status'    => $response->getStatusCode(),
            'headers'   => [
                'Content-Type' => $response->headers->get('Content-Type', 'text/html; charset=UTF-8'),
                'ETag'         => $etag,
            ],
            'cached_at' => now()->toIso8601String(),
        ];

        $key = $this->getCacheKey($request);
        $this->store()->put($key, $data, $ttl);

        // Pasang header indikator pada response yang baru di-cache
        $response->headers->set('ETag', $etag);
        $response->headers->set('X-Page-Cache', 'MISS');
    }

    /**
     * Hapus / invalidate seluruh page cache secara global.
     * Mengubah versi cache membuat seluruh entri lama expired seketika secara atomik.
     */
    public function flush(): void
    {
        $this->store()->forever('page_cache_version', (string) microtime(true));
    }

    /**
     * Hapus entri cache untuk URL tertentu pada versi aktif saat ini.
     */
    public function forgetUrl(string $url): void
    {
        $key = 'page_cache:v' . $this->getVersion() . ':' . sha1($url);
        $this->store()->forget($key);
    }
}
