<?php

namespace App\Filament\Admin\Widgets;

use App\Models\ActivityLog;
use App\Models\BlockedIp;
use Filament\Widgets\StatsOverviewWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class ActivityLogStatsWidget extends StatsOverviewWidget
{
    protected static ?int $sort = 0;

    protected function getStats(): array
    {
        $todayLogins  = ActivityLog::where('activity', 'login')
            ->whereDate('created_at', today())
            ->count();

        $uniqueIps    = ActivityLog::whereDate('created_at', today())
            ->distinct('ip_address')
            ->count('ip_address');

        $blockedCount = BlockedIp::where('is_active', true)->count();

        $totalLogins  = ActivityLog::where('activity', 'login')->count();

        return [
            Stat::make('Login Hari Ini', $todayLogins)
                ->description('Total login pada hari ini')
                ->descriptionIcon('heroicon-m-arrow-trending-up')
                ->color('success')
                ->icon('heroicon-o-user-circle'),

            Stat::make('IP Unik Hari Ini', $uniqueIps)
                ->description('IP berbeda yang mengakses hari ini')
                ->descriptionIcon('heroicon-m-globe-alt')
                ->color('info')
                ->icon('heroicon-o-server'),

            Stat::make('IP Diblokir', $blockedCount)
                ->description('Total IP yang aktif diblokir')
                ->descriptionIcon('heroicon-m-no-symbol')
                ->color('danger')
                ->icon('heroicon-o-shield-exclamation'),

            Stat::make('Total Login', $totalLogins)
                ->description('Semua waktu')
                ->descriptionIcon('heroicon-m-chart-bar')
                ->color('warning')
                ->icon('heroicon-o-key'),
        ];
    }
}
