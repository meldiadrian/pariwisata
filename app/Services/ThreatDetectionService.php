<?php

namespace App\Services;

use App\Models\ActivityLog;
use App\Models\BlockedIp;
use Illuminate\Support\Facades\Log;

class ThreatDetectionService
{
    /**
     * Threshold: Max failed logins per IP in the given window (minutes).
     */
    const BRUTE_FORCE_LIMIT  = 5;
    const BRUTE_FORCE_WINDOW = 10; // minutes

    /**
     * Threshold: Max requests per IP in the given window (minutes).
     */
    const RATE_LIMIT         = 100;
    const RATE_WINDOW        = 1;  // minute

    /**
     * Threshold: Max admin probe attempts (unauthenticated /admin hits).
     */
    const ADMIN_PROBE_LIMIT  = 10;
    const ADMIN_PROBE_WINDOW = 5;  // minutes

    /**
     * Analyse an IP address and auto-block if any threat threshold is exceeded.
     * Returns the reason string if blocked, null otherwise.
     */
    public function analyse(string $ip, ?int $userId = null): ?string
    {
        // Skip if already blocked
        if (BlockedIp::where('ip_address', $ip)->where('is_active', true)->exists()) {
            return null;
        }

        if ($reason = $this->detectBruteForce($ip)) {
            $this->autoBlock($ip, $reason, 'critical');
            return $reason;
        }

        if ($reason = $this->detectRateAbuse($ip)) {
            $this->autoBlock($ip, $reason, 'high');
            return $reason;
        }

        if ($reason = $this->detectAdminProbe($ip, $userId)) {
            $this->autoBlock($ip, $reason, 'medium');
            return $reason;
        }

        return null;
    }

    /**
     * Detect brute-force: repeated failed logins from same IP.
     */
    public function detectBruteForce(string $ip): ?string
    {
        $count = ActivityLog::where('ip_address', $ip)
            ->where('activity', 'failed_login')
            ->where('created_at', '>=', now()->subMinutes(self::BRUTE_FORCE_WINDOW))
            ->count();

        if ($count >= self::BRUTE_FORCE_LIMIT) {
            return "Brute Force: {$count} gagal login dalam " . self::BRUTE_FORCE_WINDOW . " menit terakhir";
        }

        return null;
    }

    /**
     * Detect rate abuse: too many requests in a short period.
     */
    public function detectRateAbuse(string $ip): ?string
    {
        $count = ActivityLog::where('ip_address', $ip)
            ->where('created_at', '>=', now()->subMinutes(self::RATE_WINDOW))
            ->count();

        if ($count >= self::RATE_LIMIT) {
            return "Rate Abuse / DDoS: {$count} request dalam " . self::RATE_WINDOW . " menit terakhir";
        }

        return null;
    }

    /**
     * Detect admin probing: unauthenticated hits to /admin paths.
     */
    public function detectAdminProbe(string $ip, ?int $userId): ?string
    {
        // If already logged in, not a probe
        if ($userId) {
            return null;
        }

        $count = ActivityLog::where('ip_address', $ip)
            ->where('activity', 'admin_probe')
            ->where('created_at', '>=', now()->subMinutes(self::ADMIN_PROBE_WINDOW))
            ->count();

        if ($count >= self::ADMIN_PROBE_LIMIT) {
            return "Admin Probing: {$count} akses ke /admin tanpa autentikasi dalam " . self::ADMIN_PROBE_WINDOW . " menit";
        }

        return null;
    }

    /**
     * Perform the auto-block and flag the log entry.
     */
    public function autoBlock(string $ip, string $reason, string $threatLevel): void
    {
        BlockedIp::updateOrCreate(
            ['ip_address' => $ip],
            [
                'reason'     => $reason,
                'is_active'  => true,
                'blocked_by' => null, // null = otomatis sistem
            ]
        );

        // Flag the most recent log entry from this IP
        ActivityLog::where('ip_address', $ip)
            ->latest()
            ->first()
            ?->update(['threat_level' => $threatLevel]);

        Log::warning("[ThreatDetection] Auto-blocked IP: {$ip} | Reason: {$reason}");
    }
}
