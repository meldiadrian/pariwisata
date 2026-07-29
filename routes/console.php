<?php

use Illuminate\Foundation\Inspiring;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Schedule;

Artisan::command('inspire', function () {
    $this->comment(Inspiring::quote());
})->purpose('Display an inspiring quote');

// Auto-scan & block suspicious IPs every 5 minutes
Schedule::command('security:scan-threats')->everyFiveMinutes();

// Clean up old livewire temporary files every hour
Schedule::call(function () {
    $livewireTmpPath = storage_path('app/public/livewire-tmp');
    
    if (file_exists($livewireTmpPath)) {
        $files = new \RecursiveIteratorIterator(
            new \RecursiveDirectoryIterator($livewireTmpPath, \RecursiveDirectoryIterator::SKIP_DOTS),
            \RecursiveIteratorIterator::CHILD_FIRST
        );

        $now = time();
        $maxAge = 3600; // 1 hour in seconds

        foreach ($files as $file) {
            if ($file->isFile()) {
                $filename = $file->getFilename();
                // Skip protection files
                if (in_array($filename, ['.htaccess', 'index.php', 'web.config'])) {
                    continue;
                }
                
                // Delete files older than 1 hour
                if (($now - $file->getMTime()) >= $maxAge) {
                    @unlink($file->getRealPath());
                }
            }
        }
    }
})->hourly()->name('cleanup-livewire-tmp');
