<?php

namespace Tests\Feature;

use App\Services\PageCacheService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Route;
use Symfony\Component\HttpFoundation\Response;
use Tests\TestCase;

class PageCacheTest extends TestCase
{
    protected function setUp(): void
    {
        parent::setUp();

        config(['cache.default' => 'array']);
        config(['pagecache.store' => 'array']);
        config(['pagecache.enabled' => true]);

        Route::middleware('page.cache')->get('/test-cacheable-page', function () {
            return response('<html><body>Test Page Content - ' . microtime() . '</body></html>', 200, [
                'Content-Type' => 'text/html; charset=UTF-8',
            ]);
        });
    }

    public function test_first_request_is_a_cache_miss_and_sets_headers(): void
    {
        $response = $this->get('/test-cacheable-page');

        $response->assertStatus(200);
        $response->assertHeader('X-Page-Cache', 'MISS');
        $this->assertNotEmpty($response->headers->get('ETag'));
    }

    public function test_second_request_is_a_cache_hit(): void
    {
        $firstResponse = $this->get('/test-cacheable-page');
        $firstContent = $firstResponse->getContent();

        $secondResponse = $this->get('/test-cacheable-page');
        $secondResponse->assertStatus(200);
        $secondResponse->assertHeader('X-Page-Cache', 'HIT');
        $this->assertEquals($firstContent, $secondResponse->getContent());
    }

    public function test_if_none_match_returns_304_not_modified(): void
    {
        $firstResponse = $this->get('/test-cacheable-page');
        $etag = $firstResponse->headers->get('ETag');

        $secondResponse = $this->withHeaders([
            'If-None-Match' => $etag,
        ])->get('/test-cacheable-page');

        $secondResponse->assertStatus(304);
        $secondResponse->assertHeader('X-Page-Cache', 'HIT-304');
    }

    public function test_page_cache_flush_invalidates_cache(): void
    {
        $firstResponse = $this->get('/test-cacheable-page');
        $firstResponse->assertHeader('X-Page-Cache', 'MISS');

        $hitResponse = $this->get('/test-cacheable-page');
        $hitResponse->assertHeader('X-Page-Cache', 'HIT');

        // Flush cache
        app(PageCacheService::class)->flush();

        $afterFlushResponse = $this->get('/test-cacheable-page');
        $afterFlushResponse->assertHeader('X-Page-Cache', 'MISS');
    }

    public function test_excluded_paths_are_not_cached(): void
    {
        Route::middleware('page.cache')->get('/bermasa/test-admin', function () {
            return response('<html><body>Admin Page</body></html>', 200, [
                'Content-Type' => 'text/html; charset=UTF-8',
            ]);
        });

        $response = $this->get('/bermasa/test-admin');
        $response->assertStatus(200);
        $this->assertFalse($response->headers->has('X-Page-Cache'));
    }
}
