<?php

namespace App\Console\Commands;

use App\Models\ActivityLog;
use App\Services\ThreatDetectionService;
use Illuminate\Console\Command;

class ScanAndBlockThreats extends Command
{
    protected $signature   = 'security:scan-threats';
    protected $description = 'Scan activity logs for suspicious IPs and auto-block threats (brute force, rate abuse, admin probing)';

    public function handle(ThreatDetectionService $detector): int
    {
        $this->info('🔍 Memulai pemindaian ancaman keamanan...');

        // Get all unique active IPs from the last 30 minutes
        $ips = ActivityLog::query()
            ->select('ip_address')
            ->whereNotNull('ip_address')
            ->where('created_at', '>=', now()->subMinutes(30))
            ->distinct()
            ->pluck('ip_address');

        $this->info("📡 Ditemukan {$ips->count()} IP unik dalam 30 menit terakhir.");

        $blocked = 0;

        foreach ($ips as $ip) {
            $reason = $detector->analyse($ip, null);
            if ($reason) {
                $this->warn("🚫 Blokir otomatis: {$ip} — {$reason}");
                $blocked++;
            }
        }

        if ($blocked === 0) {
            $this->info('✅ Tidak ada ancaman terdeteksi.');
        } else {
            $this->error("⛔ Total {$blocked} IP diblokir dalam sesi ini.");
        }

        return Command::SUCCESS;
    }
}
