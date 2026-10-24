<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\News;
use App\Models\Category;
use App\Models\Tag;
use App\Models\Video;
use App\Models\Advertisement;
use App\Models\PhotoGallery;
use App\Models\Festival;
use App\Models\Destination;
use App\Models\DestinationCategory;
use App\Models\User;

class CheckContentStatus extends Command
{
    protected $signature = 'content:check {--show-deleted : Show deleted content details}';
    protected $description = 'Check the status of all content in the database';

    public function handle()
    {
        $this->info('==========================================');
        $this->info('   STATUS KONTEN DATABASE                ');
        $this->info('==========================================');
        $this->newLine();

        // News
        $newsActive = News::count();
        $newsDeleted = News::onlyTrashed()->count();
        $newsTotal = $newsActive + $newsDeleted;
        
        // Categories
        $categoriesCount = Category::count();
        
        // Tags
        $tagsCount = Tag::count();
        
        // Videos
        $videosCount = Video::count();
        
        // Advertisements
        $advertisementsCount = Advertisement::count();
        
        // Photo Galleries
        $photoGalleriesCount = PhotoGallery::count();
        
        // Festivals
        $festivalsCount = Festival::count();
        
        // Destinations
        $destinationsCount = Destination::count();
        $destinationCategoriesCount = DestinationCategory::count();
        
        // Users
        $usersCount = User::count();

        $this->table(
            ['Jenis Konten', 'Aktif', 'Dihapus', 'Total'],
            [
                ['📰 Berita (News)', $newsActive, $newsDeleted, $newsTotal],
                ['📁 Kategori', $categoriesCount, '-', $categoriesCount],
                ['🏷️  Tag', $tagsCount, '-', $tagsCount],
                ['🎥 Video', $videosCount, '-', $videosCount],
                ['📢 Iklan', $advertisementsCount, '-', $advertisementsCount],
                ['📸 Galeri Foto', $photoGalleriesCount, '-', $photoGalleriesCount],
                ['🎉 Festival', $festivalsCount, '-', $festivalsCount],
                ['🗺️  Destinasi', $destinationsCount, '-', $destinationsCount],
                ['📂 Kategori Destinasi', $destinationCategoriesCount, '-', $destinationCategoriesCount],
                ['👥 Pengguna', $usersCount, '-', $usersCount],
            ]
        );

        $this->newLine();

        if ($newsDeleted > 0) {
            $this->warn("⚠️  Ditemukan {$newsDeleted} berita yang dihapus (soft deleted)");
            $this->info("   Gunakan: php artisan content:restore untuk mengembalikannya");
            
            if ($this->option('show-deleted')) {
                $this->newLine();
                $this->info('Berita yang dihapus:');
                $deletedNews = News::onlyTrashed()->get();
                foreach ($deletedNews as $news) {
                    $this->line("  [{$news->id}] {$news->title} - Dihapus: {$news->deleted_at->format('d/m/Y H:i')}");
                }
            }
        } else {
            $this->info('✅ Tidak ada konten yang dihapus');
        }

        $this->newLine();
        $this->info('==========================================');
        
        return Command::SUCCESS;
    }
}
