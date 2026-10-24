<?php

namespace App\Filament\Admin\Resources\ActivityLogs\Tables;

use App\Models\BlockedIp;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Filament\Actions\Action;
use Filament\Notifications\Notification;
use Illuminate\Support\Facades\Auth;

class ActivityLogTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('created_at')
                    ->label('Waktu')
                    ->dateTime('d M Y, H:i:s')
                    ->sortable()
                    ->timezone('Asia/Jakarta'),

                TextColumn::make('user.name')
                    ->label('Nama User')
                    ->default('—')
                    ->searchable()
                    ->sortable(),

                TextColumn::make('activity')
                    ->label('Aktivitas')
                    ->badge()
                    ->color(fn (string $state): string => match ($state) {
                        'login'                  => 'success',
                        'logout'                 => 'warning',
                        'page_visit'             => 'info',
                        'failed_login'           => 'danger',
                        'admin_probe'            => 'danger',
                        'brute_force_detected'   => 'danger',
                        default                  => 'gray',
                    })
                    ->formatStateUsing(fn (string $state): string => match ($state) {
                        'login'                  => '✅ Login',
                        'logout'                 => '🚪 Logout',
                        'page_visit'             => '👁️ Page Visit',
                        'failed_login'           => '❌ Gagal Login',
                        'admin_probe'            => '🔍 Admin Probe',
                        'brute_force_detected'   => '⚠️ Brute Force',
                        default                  => ucfirst($state),
                    })
                    ->searchable(),

                TextColumn::make('threat_level')
                    ->label('Ancaman')
                    ->badge()
                    ->default('—')
                    ->color(fn (?string $state): string => match ($state) {
                        'critical' => 'danger',
                        'high'     => 'danger',
                        'medium'   => 'warning',
                        'low'      => 'info',
                        default    => 'gray',
                    })
                    ->formatStateUsing(fn (?string $state): string => match ($state) {
                        'critical' => '🔴 Kritis',
                        'high'     => '🟠 Tinggi',
                        'medium'   => '🟡 Sedang',
                        'low'      => '🔵 Rendah',
                        default    => '—',
                    }),

                TextColumn::make('ip_address')
                    ->label('IP Address')
                    ->searchable()
                    ->badge()
                    ->color(function ($record) {
                        $isBlocked = BlockedIp::where('ip_address', $record->ip_address)
                            ->where('is_active', true)
                            ->exists();
                        return $isBlocked ? 'danger' : 'gray';
                    })
                    ->formatStateUsing(function ($record) {
                        $isBlocked = BlockedIp::where('ip_address', $record->ip_address)
                            ->where('is_active', true)
                            ->exists();
                        return $record->ip_address . ($isBlocked ? ' 🚫' : '');
                    }),

                TextColumn::make('url')
                    ->label('URL')
                    ->limit(50)
                    ->tooltip(fn ($record) => $record->url)
                    ->searchable(),

                TextColumn::make('user_agent')
                    ->label('Browser')
                    ->limit(40)
                    ->tooltip(fn ($record) => $record->user_agent)
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->actions([
                Action::make('block_ip')
                    ->label('Blokir IP')
                    ->icon('heroicon-o-no-symbol')
                    ->color('danger')
                    ->requiresConfirmation()
                    ->modalHeading('Blokir IP Address')
                    ->modalDescription(fn ($record) => "Blokir IP: {$record->ip_address}? Semua akses dari IP ini akan ditolak.")
                    ->modalSubmitActionLabel('Blokir Sekarang')
                    ->visible(fn ($record) => $record->ip_address
                        && !BlockedIp::where('ip_address', $record->ip_address)->where('is_active', true)->exists())
                    ->action(function ($record) {
                        BlockedIp::updateOrCreate(
                            ['ip_address' => $record->ip_address],
                            [
                                'reason'     => 'Diblokir manual dari Activity Log',
                                'is_active'  => true,
                                'blocked_by' => Auth::id(),
                            ]
                        );
                        Notification::make()
                            ->title("IP {$record->ip_address} berhasil diblokir")
                            ->success()
                            ->send();
                    }),

                Action::make('unblock_ip')
                    ->label('Buka Blokir')
                    ->icon('heroicon-o-lock-open')
                    ->color('success')
                    ->requiresConfirmation()
                    ->modalHeading('Buka Blokir IP')
                    ->modalDescription(fn ($record) => "Buka blokir IP: {$record->ip_address}?")
                    ->modalSubmitActionLabel('Buka Blokir')
                    ->visible(fn ($record) => $record->ip_address
                        && BlockedIp::where('ip_address', $record->ip_address)->where('is_active', true)->exists())
                    ->action(function ($record) {
                        BlockedIp::where('ip_address', $record->ip_address)
                            ->update(['is_active' => false]);
                        Notification::make()
                            ->title("Blokir IP {$record->ip_address} berhasil dibuka")
                            ->success()
                            ->send();
                    }),
            ])
            ->defaultSort('created_at', 'desc')
            ->striped()
            ->paginated([15, 25, 50, 100]);
    }
}
