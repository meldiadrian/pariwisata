<?php

namespace Tests\Feature;

use App\Models\Category;
use App\Models\News;
use App\Models\Page;
use App\Models\Setting;
use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Support\Facades\Cache;
use Tests\TestCase;

class FrontendRoutesAndMenuTest extends TestCase
{
    use RefreshDatabase;

    protected function setUp(): void
    {
        parent::setUp();

        Cache::flush();
        config(['pagecache.enabled' => false]);
    }

    public function test_public_htaccess_includes_laravel_front_controller_rewrite_rule(): void
    {
        $htaccess = file_get_contents(public_path('.htaccess'));

        $this->assertIsString($htaccess);
        $this->assertMatchesRegularExpression('/RewriteRule\s+\^\s+index\.php\s+\[L\]/', $htaccess);
    }

    public function test_setting_normalizes_internal_and_legacy_urls_while_preserving_external_links(): void
    {
        $this->assertNull(Setting::normalizeInternalUrl(null));
        $this->assertSame('#', Setting::normalizeInternalUrl('#'));
        $this->assertSame('#galeri', Setting::normalizeInternalUrl('#galeri'));
        $this->assertSame(url('/'), Setting::normalizeInternalUrl('https://wisata.bengkaliskab.go.id'));
        $this->assertSame(
            url('/page/profil-lembaga') . '?tab=info#top',
            Setting::normalizeInternalUrl('https://wisata.bengkaliskab.go.id/page/profil-lembaga?tab=info#top')
        );
        $this->assertSame(
            url('/category/opini'),
            Setting::normalizeInternalUrl('/category/opini')
        );
        $this->assertSame(
            'https://www.kemenpar.go.id',
            Setting::normalizeInternalUrl('https://www.kemenpar.go.id')
        );
    }

    public function test_all_frontend_menu_and_content_routes_render_cleanly(): void
    {
        $user = User::factory()->create(['name' => 'Redaksi Pariwisata']);
        $catBerita = Category::create(['name' => 'Berita', 'slug' => 'olahraga']);
        $catOpini = Category::create(['name' => 'Opini', 'slug' => 'opini']);
        $pageProfil = Page::create([
            'title' => 'Profil Lembaga',
            'slug' => 'profil-lembaga',
            'content' => '<p>Profil Dinas Pariwisata Bengkalis.</p>',
        ]);

        Setting::create([
            'site_name' => 'PARIWISATA BENGKALIS',
            'tagline' => 'Diversity of Culture',
            'facebook' => 'https://www.facebook.com/example',
            'youtube' => 'https://youtube.com/@example',
            'instagram' => 'https://www.instagram.com/example',
            'sambutan_nama_kepala' => 'Kepala Dinas',
            'sambutan_isi' => 'Selamat datang di portal wisata.',
            'sambutan_link_selengkapnya' => 'https://wisata.bengkaliskab.go.id/page/profil-lembaga',
            'main_menu' => [
                ['label' => 'BERANDA', 'type' => 'url', 'url' => 'https://wisata.bengkaliskab.go.id', 'children' => []],
                ['label' => 'BERITA', 'type' => 'category', 'category_id' => $catBerita->id, 'children' => []],
                [
                    'label' => 'PROFIL',
                    'type' => 'page',
                    'page_id' => $pageProfil->id,
                    'children' => [
                        ['label' => 'PROFIL LEMBAGA', 'type' => 'page', 'page_id' => $pageProfil->id, 'children' => []],
                    ],
                ],
                ['label' => 'OPINI', 'type' => 'category', 'category_id' => $catOpini->id, 'children' => []],
                ['label' => 'BROKEN PAGE', 'type' => 'page', 'page_id' => 99999, 'children' => []],
                [
                    'label' => 'LINK TERKAIT',
                    'type' => 'url',
                    'url' => 'https://wisata.bengkaliskab.go.id',
                    'children' => [
                        ['label' => 'KEMENPAR', 'type' => 'url', 'url' => 'https://www.kemenpar.go.id', 'children' => []],
                    ],
                ],
            ],
        ]);

        $news = News::create([
            'category_id' => $catOpini->id,
            'user_id' => $user->id,
            'title' => 'Opini Pengembangan Wisata',
            'slug' => 'opini-pengembangan-wisata',
            'summary' => 'Ringkasan artikel opini wisata.',
            'content' => '<p>Konten berita lengkap.</p>',
            'status' => 'publish',
            'is_headline' => true,
            'is_trending' => true,
            'published_at' => now(),
        ]);

        $home = $this->get('/');
        $home->assertOk();
        $home->assertSee(route('news.category', 'opini'), false);
        $home->assertSee(route('news.category', 'olahraga'), false);
        $home->assertSee(route('page.show', 'profil-lembaga'), false);
        $home->assertSee('https://www.kemenpar.go.id', false);
        $home->assertSee('https://youtube.com/@example', false);
        $home->assertDontSee('BROKEN PAGE');
        $home->assertDontSee('wisata.bengkaliskab.go.id');
        $home->assertDontSee('href="#"', false);

        $this->get('/category/opini')
            ->assertOk()
            ->assertSee('Opini Pengembangan Wisata');

        $this->get('/page/profil-lembaga')
            ->assertOk()
            ->assertSee('Profil Lembaga');

        $article = $this->get('/news/' . $news->slug);
        $article->assertOk();
        $article->assertSee('Opini Pengembangan Wisata');
        $article->assertSee('https://www.facebook.com/sharer/sharer.php?u=', false);
        $article->assertSee('https://wa.me/?text=', false);

        $this->get('/sitemap.xml')
            ->assertOk()
            ->assertSee(route('news.show', $news->slug), false);
    }
}

