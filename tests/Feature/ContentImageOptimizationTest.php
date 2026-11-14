<?php

namespace Tests\Feature;

use App\Helpers\ImageHelper;
use App\Models\Category;
use App\Models\News;
use App\Models\Page;
use App\Models\User;
use App\Services\ContentImageService;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Tests\TestCase;

class ContentImageOptimizationTest extends TestCase
{
    use RefreshDatabase;

    /** @var array<string, bool> */
    private array $existingPublicContentImages = [];

    protected function setUp(): void
    {
        parent::setUp();

        Storage::fake('public');

        $publicContentImagesDir = public_path('storage/content-images');
        if (is_dir($publicContentImagesDir)) {
            foreach (File::files($publicContentImagesDir) as $file) {
                $this->existingPublicContentImages[$file->getFilename()] = true;
            }
        }
    }

    protected function tearDown(): void
    {
        $testPublicDir = public_path('storage/test-content-images');
        if (is_dir($testPublicDir)) {
            File::deleteDirectory($testPublicDir);
        }

        $publicContentImagesDir = public_path('storage/content-images');
        if (is_dir($publicContentImagesDir)) {
            foreach (File::files($publicContentImagesDir) as $file) {
                if (!isset($this->existingPublicContentImages[$file->getFilename()])) {
                    @unlink($file->getPathname());
                }
            }
        }

        parent::tearDown();
    }

    private function makePngDataUri(int $width = 40, int $height = 30, int $red = 220, int $green = 50, int $blue = 60): string
    {
        $image = imagecreatetruecolor($width, $height);
        $color = imagecolorallocate($image, $red, $green, $blue);
        imagefill($image, 0, 0, $color);

        ob_start();
        imagepng($image);
        $binary = (string) ob_get_clean();
        imagedestroy($image);

        return 'data:image/png;base64,' . base64_encode($binary);
    }

    public function test_content_image_service_extracts_deduplicates_and_skips_unsafe_data_uris(): void
    {
        $service = app(ContentImageService::class);
        $pngDataUri = $this->makePngDataUri(64, 48, 20, 120, 200);
        $svgDataUri = 'data:image/svg+xml;base64,' . base64_encode('<svg xmlns="http://www.w3.org/2000/svg"></svg>');

        $html = sprintf(
            '<p>Pertama <img src="%s" alt="A"> Kedua <img src="%s" alt="B"> Unsafe <img src="%s" alt="C"></p>',
            $pngDataUri,
            $pngDataUri,
            $svgDataUri
        );

        $result = $service->extractBase64Images($html, 'test-content-images');

        $this->assertSame(2, $result['replaced']);
        $this->assertCount(1, $result['files']);
        $this->assertGreaterThan(0, $result['bytes_saved']);
        $this->assertStringNotContainsString('data:image/png;base64', $result['html']);
        $this->assertStringContainsString('/storage/test-content-images/', $result['html']);
        $this->assertStringContainsString('.webp', $result['html']);
        $this->assertStringContainsString($svgDataUri, $result['html']);
        Storage::disk('public')->assertExists($result['files'][0]);
    }

    public function test_optimize_html_images_adds_lazy_and_async_attributes_without_overwriting_existing(): void
    {
        $service = app(ContentImageService::class);

        $html = '<p><img src="/storage/a.webp" alt="A"><img src="/storage/b.webp" loading="eager" decoding="sync"></p>';
        $optimized = $service->optimizeHtmlImages($html);

        $this->assertIsString($optimized);
        $this->assertSame(
            '<p><img src="/storage/a.webp" alt="A" loading="lazy" decoding="async"><img src="/storage/b.webp" loading="eager" decoding="sync"></p>',
            $optimized
        );
    }

    public function test_news_and_page_saving_hooks_automatically_convert_base64_images(): void
    {
        $user = User::factory()->create();
        $category = Category::create([
            'name' => 'Wisata',
            'slug' => 'wisata-test',
        ]);

        $newsUri = $this->makePngDataUri(32, 32, 10, 180, 90);
        $news = News::create([
            'category_id' => $category->id,
            'user_id' => $user->id,
            'title' => 'Berita Uji Base64',
            'slug' => 'berita-uji-base64',
            'content' => '<p><img src="' . $newsUri . '" alt="Foto"></p>',
            'status' => 'publish',
        ]);

        $this->assertStringNotContainsString('data:image/', $news->content);
        $this->assertStringContainsString('/storage/content-images/', $news->content);
        $this->assertStringContainsString('.webp', $news->content);

        $pageUri = $this->makePngDataUri(36, 24, 180, 40, 120);
        $page = Page::create([
            'title' => 'Halaman Uji',
            'slug' => 'halaman-uji',
            'content' => '<p><img src="' . $pageUri . '"></p>',
        ]);

        $this->assertStringNotContainsString('data:image/', $page->content);
        $this->assertStringContainsString('/storage/content-images/', $page->content);
        $this->assertStringContainsString('.webp', $page->content);
    }

    public function test_extract_base64_command_supports_dry_run_and_real_extraction(): void
    {
        $user = User::factory()->create();
        $categoryId = DB::table('categories')->insertGetId([
            'name' => 'Olahraga',
            'slug' => 'olahraga-test',
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        $newsUri = $this->makePngDataUri(44, 30, 90, 90, 220);
        $pageUri = $this->makePngDataUri(40, 28, 220, 160, 40);

        $newsId = DB::table('news')->insertGetId([
            'category_id' => $categoryId,
            'user_id' => $user->id,
            'title' => 'Legacy Base64 News',
            'slug' => 'legacy-base64-news',
            'content' => '<p><img src="' . $newsUri . '"></p>',
            'status' => 'publish',
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        $pageId = DB::table('pages')->insertGetId([
            'title' => 'Legacy Base64 Page',
            'slug' => 'legacy-base64-page',
            'content' => '<p><img src="' . $pageUri . '"></p>',
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        $this->artisan('content:extract-base64-images', ['--dry-run' => true])
            ->assertSuccessful();

        $this->assertStringContainsString(
            'data:image/png;base64',
            (string) DB::table('news')->where('id', $newsId)->value('content')
        );
        $this->assertStringContainsString(
            'data:image/png;base64',
            (string) DB::table('pages')->where('id', $pageId)->value('content')
        );

        $this->artisan('content:extract-base64-images')
            ->assertSuccessful();

        $updatedNewsContent = (string) DB::table('news')->where('id', $newsId)->value('content');
        $updatedPageContent = (string) DB::table('pages')->where('id', $pageId)->value('content');

        $this->assertStringNotContainsString('data:image/', $updatedNewsContent);
        $this->assertStringContainsString('/storage/content-images/', $updatedNewsContent);
        $this->assertStringNotContainsString('data:image/', $updatedPageContent);
        $this->assertStringContainsString('/storage/content-images/', $updatedPageContent);
    }

    public function test_editor_image_upload_requires_authentication_validates_file_and_saves_webp(): void
    {
        $image = UploadedFile::fake()->image('photo.png', 120, 80);

        $this->postJson(route('admin.editor-image-upload'), ['image' => $image])
            ->assertUnauthorized();

        $user = User::factory()->create();

        $invalidFile = UploadedFile::fake()->create('script.txt', 10, 'text/plain');
        $this->actingAs($user)
            ->postJson(route('admin.editor-image-upload'), ['image' => $invalidFile])
            ->assertUnprocessable();

        $response = $this->actingAs($user)
            ->postJson(route('admin.editor-image-upload'), [
                'image' => UploadedFile::fake()->image('banner.jpg', 120, 80),
            ]);

        $response->assertOk()
            ->assertJsonStructure(['url']);

        $url = (string) $response->json('url');
        $this->assertStringStartsWith('/storage/content-images/', $url);
        $this->assertStringEndsWith('.webp', $url);

        $relativePath = ltrim(substr($url, strlen('/storage/')), '/');
        Storage::disk('public')->assertExists($relativePath);
    }

    public function test_image_helper_normalizes_paths_and_avoids_missing_srcset_variants(): void
    {
        Storage::disk('public')->put('logos/single-variant.webp', 'webp-bytes');
        Storage::disk('public')->put('logos/multi-variant.webp', 'webp-bytes');
        Storage::disk('public')->put('logos/multi-variant_small.webp', 'small-webp-bytes');

        $this->assertSame(
            'logos/single-variant.webp',
            ImageHelper::getWebPPath('logos/single-variant.png', false)
        );
        $this->assertSame(
            'logos/single-variant.webp',
            ImageHelper::getWebPPath('/storage/logos/single-variant.png', false)
        );
        $this->assertSame(
            'logos/single-variant.webp',
            ImageHelper::getWebPPath('http://wisata-dispora.test/storage/logos/single-variant.png', false)
        );

        $webpUrl = ImageHelper::getWebPUrl('/storage/logos/single-variant.png', false);
        $this->assertNotNull($webpUrl);
        $this->assertStringEndsWith('/storage/logos/single-variant.webp', $webpUrl);

        $this->assertSame(
            '',
            ImageHelper::generateSrcSet('logos/single-variant.png', ['small' => 300, 'medium' => 600])
        );

        $srcset = ImageHelper::generateSrcSet('logos/multi-variant.png', ['small' => 300, 'medium' => 600]);
        $this->assertStringContainsString('multi-variant_small.webp 300w', $srcset);
        $this->assertStringContainsString('multi-variant.webp 2000w', $srcset);
        $this->assertStringNotContainsString('600w', $srcset);
    }
}

