<?php

use Illuminate\Foundation\Inspiring;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Schedule;

Artisan::command('inspire', function () {
    $this->comment(Inspiring::quote());
})->purpose('Display an inspiring quote');

// Auto-scan & block suspicious IPs every 5 minutes
Schedule::command('security:scan-threats')->everyFiveMinutes();

// Scan Livewire temp for malicious files every 30 minutes
Schedule::command('livewire:secure-temp --scan --cleanup')
    ->everyThirtyMinutes()
    ->name('scan-livewire-temp-security');

// Clean up Livewire temporary files older than 24 hours (daily at 2 AM)
Schedule::command('livewire:cleanup-temp')->dailyAt('02:00')->name('cleanup-livewire-temp-daily');

// Additional cleanup every hour for files older than 1 hour (aggressive cleanup)
Schedule::command('livewire:cleanup-temp --age=1')->hourly()->name('cleanup-livewire-temp-hourly');

