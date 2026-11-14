<?php

namespace App\Console\Commands;

use App\Models\News;
use App\Models\Page;
use App\Services\ContentImageService;
use App\Services\PageCacheService;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;

class ExtractBase64ContentImages extends Command
{
    protected $signature = 'content:extract-base64-images
                            {--dry-run : Preview affected records without modifying the database or writing files}';

    protected $description = 'Extract inline base64 images from news and pages content into optimized WebP files';

    public function handle(ContentImageService $contentImages): int
    {
        $dryRun = (bool) $this->option('dry-run');
        $totalUpdatedRows = 0;
        $totalImages = 0;
        $totalBytesSaved = 0;

        $this->processModel(News::withTrashed(), 'news', $contentImages, $dryRun, $totalUpdatedRows, $totalImages, $totalBytesSaved);
        $this->processModel(Page::query(), 'pages', $contentImages, $dryRun, $totalUpdatedRows, $totalImages, $totalBytesSaved);

        if (!$dryRun && $totalUpdatedRows > 0) {
            foreach (['news:headlines', 'news:trending', 'news:breaking', 'news:popular'] as $key) {
                Cache::forget($key);
            }
            app(PageCacheService::class)->flush();
        }

        $savedMb = round($totalBytesSaved / 1024 / 1024, 2);
        $prefix = $dryRun ? '[DRY RUN] ' : '';
        $this->info("{$prefix}Selesai: {$totalUpdatedRows} record diperbarui, {$totalImages} gambar base64 dikonversi ke WebP (~{$savedMb} MB base64 dihapus dari database).");

        return self::SUCCESS;
    }

    protected function processModel(
        $query,
        string $table,
        ContentImageService $contentImages,
        bool $dryRun,
        int &$totalUpdatedRows,
        int &$totalImages,
        int &$totalBytesSaved
    ): void {
        $rows = $query->where('content', 'like', '%data:image%')->get(['id', 'slug', 'title', 'content']);

        foreach ($rows as $row) {
            if ($dryRun) {
                preg_match_all('/data:image\/[a-zA-Z0-9+.-]+;base64,[A-Za-z0-9+\/=\s]+/i', $row->content, $matches);
                $count = count($matches[0]);
                $bytes = array_sum(array_map('strlen', $matches[0]));
                $totalUpdatedRows++;
                $totalImages += $count;
                $totalBytesSaved += $bytes;
                $this->line("[DRY RUN] {$table}#{$row->id} ({$row->title}): {$count} gambar, " . round($bytes / 1024, 1) . ' KB');
                continue;
            }

            $result = $contentImages->extractBase64Images($row->content);
            if ($result['replaced'] === 0) {
                continue;
            }

            DB::table($table)->where('id', $row->id)->update(['content' => $result['html']]);
            if ($table === 'news' && $row->slug) {
                Cache::forget("news:slug:{$row->slug}");
            } elseif ($table === 'pages' && $row->slug) {
                Cache::forget("page:slug:{$row->slug}");
            }

            $totalUpdatedRows++;
            $totalImages += $result['replaced'];
            $totalBytesSaved += $result['bytes_saved'];

            $this->line("Updated {$table}#{$row->id} ({$row->title}): {$result['replaced']} gambar -> WebP (-" . round($result['bytes_saved'] / 1024, 1) . ' KB)');
        }
    }
}

