<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\News;

class RestoreAllContentSeeder extends Seeder
{
    public function run(): void
    {
        $this->command->info('==========================================');
        $this->command->info('   MENGEMBALIKAN SEMUA KONTEN           ');
        $this->command->info('==========================================');
        $this->command->newLine();

        // Mengembalikan News yang dihapus
        $deletedNews = News::onlyTrashed()->get();
        $restoredNewsCount = 0;

        if ($deletedNews->count() > 0) {
            $this->command->info("Ditemukan {$deletedNews->count()} berita yang dihapus");
            $this->command->newLine();

            foreach ($deletedNews as $news) {
                $news->restore();
                $restoredNewsCount++;
                $this->command->line("  ✅ Mengembalikan: {$news->title}");
            }
        } else {
            $this->command->info("Tidak ada berita yang dihapus");
        }

        $this->command->newLine();
        $this->command->info('==========================================');
        $this->command->info('✅ PROSES SELESAI!');
        $this->command->info('==========================================');
        $this->command->newLine();
        $this->command->line("📰 Total Berita Dikembalikan: {$restoredNewsCount}");
        $this->command->newLine();
        
        if ($restoredNewsCount > 0) {
            $this->command->info('Semua konten berhasil dikembalikan!');
        } else {
            $this->command->info('Tidak ada konten yang perlu dikembalikan.');
        }
        
        $this->command->info('==========================================');
    }
}
