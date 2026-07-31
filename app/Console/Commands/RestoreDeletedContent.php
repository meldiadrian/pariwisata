<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\News;

class RestoreDeletedContent extends Command
{
    protected $signature = 'content:restore {--type=all : Type of content to restore (all, news)} {--id= : Specific ID to restore}';
    protected $description = 'Restore deleted content (soft deleted items)';

    public function handle()
    {
        $this->info('==========================================');
        $this->info('   MENGEMBALIKAN KONTEN YANG DIHAPUS    ');
        $this->info('==========================================');
        $this->newLine();

        $type = $this->option('type');
        $specificId = $this->option('id');

        if ($specificId) {
            $this->restoreSpecificContent($specificId);
        } else {
            switch ($type) {
                case 'news':
                    $this->restoreNews();
                    break;
                case 'all':
                default:
                    $this->restoreAllContent();
                    break;
            }
        }

        return Command::SUCCESS;
    }

    protected function restoreAllContent()
    {
        $this->info('Memproses semua jenis konten...');
        $this->newLine();

        $totalRestored = 0;

        // Restore News
        $newsCount = $this->restoreNews();
        $totalRestored += $newsCount;

        $this->newLine();
        $this->info('==========================================');
        $this->info('✅ PROSES SELESAI!');
        $this->info('==========================================');
        $this->line("📊 Total Konten Dikembalikan: {$totalRestored}");
        $this->info('==========================================');
    }

    protected function restoreNews(): int
    {
        $deletedNews = News::onlyTrashed()->get();
        $count = $deletedNews->count();

        if ($count > 0) {
            $this->warn("📰 Ditemukan {$count} berita yang dihapus");
            $this->newLine();

            if ($this->confirm('Apakah Anda ingin mengembalikan semua berita?', true)) {
                $restored = 0;
                foreach ($deletedNews as $news) {
                    $news->restore();
                    $restored++;
                    $this->line("  ✅ [{$news->id}] {$news->title}");
                }
                $this->newLine();
                $this->info("✅ Berhasil mengembalikan {$restored} berita");
                return $restored;
            } else {
                $this->info('Dibatalkan oleh pengguna');
                return 0;
            }
        } else {
            $this->info('📰 Tidak ada berita yang dihapus');
            return 0;
        }
    }

    protected function restoreSpecificContent($id)
    {
        $this->info("Mencari konten dengan ID: {$id}");
        $this->newLine();

        // Coba cari di News
        $news = News::onlyTrashed()->find($id);

        if ($news) {
            $this->line("Ditemukan berita yang dihapus:");
            $this->line("  ID: {$news->id}");
            $this->line("  Judul: {$news->title}");
            $this->line("  Dihapus pada: {$news->deleted_at}");
            $this->newLine();

            if ($this->confirm('Kembalikan konten ini?', true)) {
                $news->restore();
                $this->info("✅ Berita berhasil dikembalikan!");
            } else {
                $this->info('Dibatalkan oleh pengguna');
            }
        } else {
            $this->error("❌ Konten dengan ID {$id} tidak ditemukan atau sudah dikembalikan");
        }
    }
}
