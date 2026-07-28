<?php

namespace App\Filament\Admin\Widgets;

use App\Models\ActivityLog;
use App\Models\BlockedIp;
use Filament\Widgets\ChartWidget;

class ActivityLogDonutChart extends ChartWidget
{
    protected ?string $heading = 'Statistik Aktivitas & IP';

    protected ?string $description = 'Ringkasan login pengguna dan IP yang diblokir';

    protected static ?int $sort = 1;

    protected int | string | array $columnSpan = 'full';

    protected ?string $maxHeight = '300px';

    protected function getData(): array
    {
        $loginCount     = ActivityLog::where('activity', 'login')->count();
        $logoutCount    = ActivityLog::where('activity', 'logout')->count();
        $pageVisitCount = ActivityLog::where('activity', 'page_visit')->count();
        $blockedCount   = BlockedIp::where('is_active', true)->count();

        return [
            'datasets' => [
                [
                    'label'           => 'Aktivitas',
                    'data'            => [$loginCount, $logoutCount, $pageVisitCount, $blockedCount],
                    'backgroundColor' => [
                        'rgba(34, 197, 94, 0.85)',   // green - login
                        'rgba(239, 68, 68, 0.85)',   // red - logout
                        'rgba(59, 130, 246, 0.85)',  // blue - page visit
                        'rgba(234, 179, 8, 0.85)',   // yellow - blocked
                    ],
                    'borderColor' => [
                        'rgb(34, 197, 94)',
                        'rgb(239, 68, 68)',
                        'rgb(59, 130, 246)',
                        'rgb(234, 179, 8)',
                    ],
                    'borderWidth' => 2,
                    'hoverOffset' => 8,
                ],
            ],
            'labels' => [
                "Login ({$loginCount})",
                "Logout ({$logoutCount})",
                "Page Visit ({$pageVisitCount})",
                "IP Diblokir ({$blockedCount})",
            ],
        ];
    }

    protected function getType(): string
    {
        return 'doughnut';
    }

    protected function getOptions(): array
    {
        return [
            'plugins' => [
                'legend' => [
                    'position' => 'bottom',
                    'labels'   => [
                        'padding'   => 20,
                        'font'      => ['size' => 13],
                        'usePointStyle' => true,
                    ],
                ],
                'tooltip' => [
                    'callbacks' => [],
                ],
            ],
            'cutout' => '65%',
            'responsive' => true,
            'maintainAspectRatio' => false,
        ];
    }
}
