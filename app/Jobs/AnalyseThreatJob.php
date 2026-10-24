<?php

namespace App\Jobs;

use App\Models\ActivityLog;
use App\Services\ThreatDetectionService;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class AnalyseThreatJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Jumlah percobaan ulang jika job gagal.
     */
    public int $tries = 2;

    /**
     * Timeout job dalam detik.
     */
    public int $timeout = 30;

    /**
     * Create a new job instance.
     */
    public function __construct(
        protected string $ip,
        protected ?int $userId = null,
        protected ?int $activityLogId = null,
    ) {}

    /**
     * Execute the job.
     * Dijalankan secara async oleh queue worker — tidak memblokir HTTP response.
     */
    public function handle(ThreatDetectionService $threatService): void
    {
        $threatService->analyse($this->ip, $this->userId);
    }
}
