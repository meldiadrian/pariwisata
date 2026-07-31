<?php

namespace App\Console\Commands;

use App\Services\ImageService;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;

class ConvertImagesToWebP extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'images:convert-to-webp 
                            {--directory= : Specific directory to convert (relative to storage/app/public)}
                            {--quality=85 : WebP quality (0-100)}
                            {--remove-original : Remove original images after conversion}
                            {--dry-run : Show what would be converted without actually converting}
                            {--recursive : Process subdirectories recursively}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Convert all existing images to WebP format';

    protected ImageService $imageService;

    /**
     * Execute the console command.
     */
    public function handle(ImageService $imageService): int
    {
        $this->imageService = $imageService;

        $this->info('🖼️  Starting image conversion to WebP...');
        $this->newLine();

        // Get options
        $directory = $this->option('directory');
        $quality = (int) $this->option('quality');
        $removeOriginal = $this->option('remove-original');
        $dryRun = $this->option('dry-run');
        $recursive = $this->option('recursive');

        if ($quality < 0 || $quality > 100) {
            $this->error('Quality must be between 0 and 100');
            return self::FAILURE;
        }

        if ($dryRun) {
            $this->warn('🔍 DRY RUN MODE - No files will be converted');
            $this->newLine();
        }

        // Default directories to scan if none specified
        $directories = $directory ? [$directory] : $this->getDefaultDirectories();

        $totalStats = [
            'success' => 0,
            'failed' => 0,
            'skipped' => 0,
            'total_size_before' => 0,
            'total_size_after' => 0,
        ];

        foreach ($directories as $dir) {
            $this->info("📁 Processing directory: {$dir}");
            
            $fullPath = Storage::disk('public')->path($dir);
            
            if (!File::exists($fullPath)) {
                $this->warn("   ⚠️  Directory not found: {$dir}");
                continue;
            }

            $stats = $recursive 
                ? $this->processDirectoryRecursive($fullPath, $dir, $quality, $removeOriginal, $dryRun)
                : $this->processDirectory($fullPath, $dir, $quality, $removeOriginal, $dryRun);

            $totalStats['success'] += $stats['success'];
            $totalStats['failed'] += $stats['failed'];
            $totalStats['skipped'] += $stats['skipped'];
            $totalStats['total_size_before'] += $stats['total_size_before'];
            $totalStats['total_size_after'] += $stats['total_size_after'];

            $this->displayDirectoryStats($stats);
            $this->newLine();
        }

        $this->displayFinalStats($totalStats, $dryRun);

        return self::SUCCESS;
    }

    /**
     * Process a single directory
     */
    protected function processDirectory(
        string $fullPath, 
        string $relativePath, 
        int $quality, 
        bool $removeOriginal, 
        bool $dryRun
    ): array {
        $stats = [
            'success' => 0,
            'failed' => 0,
            'skipped' => 0,
            'total_size_before' => 0,
            'total_size_after' => 0,
        ];

        $allowedExtensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp'];
        $files = File::files($fullPath);

        foreach ($files as $file) {
            $extension = strtolower($file->getExtension());
            
            if (!in_array($extension, $allowedExtensions)) {
                continue;
            }

            $filename = $file->getFilename();
            $webpPath = $file->getPath() . '/' . $file->getFilenameWithoutExtension() . '.webp';

            // Skip if WebP already exists
            if (File::exists($webpPath)) {
                $stats['skipped']++;
                $this->line("   ⏭️  Skipped (WebP exists): {$filename}");
                continue;
            }

            $originalSize = $file->getSize();
            $stats['total_size_before'] += $originalSize;

            if ($dryRun) {
                $this->line("   🔍 Would convert: {$filename}");
                continue;
            }

            try {
                $this->imageService->convertToWebP($file->getPathname(), $quality);
                
                $webpSize = File::exists($webpPath) ? File::size($webpPath) : 0;
                $stats['total_size_after'] += $webpSize;
                
                $savings = $originalSize > 0 ? round((1 - $webpSize / $originalSize) * 100, 1) : 0;
                
                $stats['success']++;
                $this->line("   ✅ Converted: {$filename} (saved {$savings}%)");

                if ($removeOriginal) {
                    File::delete($file->getPathname());
                    $this->line("      🗑️  Deleted original");
                }
            } catch (\Exception $e) {
                $stats['failed']++;
                $this->error("   ❌ Failed: {$filename} - {$e->getMessage()}");
            }
        }

        return $stats;
    }

    /**
     * Process directory recursively
     */
    protected function processDirectoryRecursive(
        string $fullPath, 
        string $relativePath, 
        int $quality, 
        bool $removeOriginal, 
        bool $dryRun
    ): array {
        $stats = [
            'success' => 0,
            'failed' => 0,
            'skipped' => 0,
            'total_size_before' => 0,
            'total_size_after' => 0,
        ];

        $allowedExtensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp'];
        $files = File::allFiles($fullPath);

        foreach ($files as $file) {
            $extension = strtolower($file->getExtension());
            
            if (!in_array($extension, $allowedExtensions)) {
                continue;
            }

            $relativeFilePath = str_replace($fullPath . DIRECTORY_SEPARATOR, '', $file->getPathname());
            $webpPath = $file->getPath() . DIRECTORY_SEPARATOR . $file->getFilenameWithoutExtension() . '.webp';

            // Skip if WebP already exists
            if (File::exists($webpPath)) {
                $stats['skipped']++;
                $this->line("   ⏭️  Skipped: {$relativeFilePath}");
                continue;
            }

            $originalSize = $file->getSize();
            $stats['total_size_before'] += $originalSize;

            if ($dryRun) {
                $this->line("   🔍 Would convert: {$relativeFilePath}");
                continue;
            }

            try {
                $this->imageService->convertToWebP($file->getPathname(), $quality);
                
                $webpSize = File::exists($webpPath) ? File::size($webpPath) : 0;
                $stats['total_size_after'] += $webpSize;
                
                $savings = $originalSize > 0 ? round((1 - $webpSize / $originalSize) * 100, 1) : 0;
                
                $stats['success']++;
                $this->line("   ✅ Converted: {$relativeFilePath} (saved {$savings}%)");

                if ($removeOriginal) {
                    File::delete($file->getPathname());
                    $this->line("      🗑️  Deleted original");
                }
            } catch (\Exception $e) {
                $stats['failed']++;
                $this->error("   ❌ Failed: {$relativeFilePath} - {$e->getMessage()}");
            }
        }

        return $stats;
    }

    /**
     * Get default directories to process
     */
    protected function getDefaultDirectories(): array
    {
        return [
            'news',
            'galleries',
            'advertisements',
            'sliders',
            'pages',
            'destinations',
            'festivals',
            'videos',
        ];
    }

    /**
     * Display statistics for a directory
     */
    protected function displayDirectoryStats(array $stats): void
    {
        $this->info("   📊 Results:");
        $this->line("      • Converted: {$stats['success']}");
        $this->line("      • Failed: {$stats['failed']}");
        $this->line("      • Skipped: {$stats['skipped']}");
        
        if ($stats['total_size_after'] > 0) {
            $sizeBefore = $this->formatBytes($stats['total_size_before']);
            $sizeAfter = $this->formatBytes($stats['total_size_after']);
            $totalSavings = $stats['total_size_before'] > 0 
                ? round((1 - $stats['total_size_after'] / $stats['total_size_before']) * 100, 1) 
                : 0;
            
            $this->line("      • Size before: {$sizeBefore}");
            $this->line("      • Size after: {$sizeAfter}");
            $this->line("      • Total savings: {$totalSavings}%");
        }
    }

    /**
     * Display final statistics
     */
    protected function displayFinalStats(array $stats, bool $dryRun): void
    {
        $this->newLine();
        $this->info('═══════════════════════════════════════════');
        $this->info('📊 FINAL RESULTS');
        $this->info('═══════════════════════════════════════════');
        
        if ($dryRun) {
            $total = $stats['success'] + $stats['failed'] + $stats['skipped'];
            $this->line("Would process {$total} images:");
        } else {
            $this->line("Total converted: {$stats['success']}");
            $this->line("Total failed: {$stats['failed']}");
            $this->line("Total skipped: {$stats['skipped']}");
            
            if ($stats['total_size_after'] > 0) {
                $sizeBefore = $this->formatBytes($stats['total_size_before']);
                $sizeAfter = $this->formatBytes($stats['total_size_after']);
                $totalSavings = $stats['total_size_before'] > 0 
                    ? round((1 - $stats['total_size_after'] / $stats['total_size_before']) * 100, 1) 
                    : 0;
                
                $this->newLine();
                $this->line("Total size before: {$sizeBefore}");
                $this->line("Total size after: {$sizeAfter}");
                $this->line("Total space saved: " . $this->formatBytes($stats['total_size_before'] - $stats['total_size_after']));
                $this->line("Overall savings: {$totalSavings}%");
            }
        }
        
        $this->info('═══════════════════════════════════════════');
        
        if (!$dryRun && $stats['success'] > 0) {
            $this->newLine();
            $this->info('✅ Conversion completed successfully!');
        }
    }

    /**
     * Format bytes to human readable format
     */
    protected function formatBytes(int $bytes, int $precision = 2): string
    {
        $units = ['B', 'KB', 'MB', 'GB', 'TB'];

        for ($i = 0; $bytes > 1024 && $i < count($units) - 1; $i++) {
            $bytes /= 1024;
        }

        return round($bytes, $precision) . ' ' . $units[$i];
    }
}
