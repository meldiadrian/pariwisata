<?php

namespace App\Filament\Admin\Resources\ActivityLogs\Tables;

use Filament\Tables\Columns\BadgeColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

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
                        'login'      => 'success',
                        'logout'     => 'danger',
                        'page_visit' => 'info',
                        default      => 'gray',
                    })
                    ->formatStateUsing(fn (string $state): string => match ($state) {
                        'login'      => 'Login',
                        'logout'     => 'Logout',
                        'page_visit' => 'Page Visit',
                        default      => ucfirst($state),
                    })
                    ->searchable(),

                TextColumn::make('url')
                    ->label('URL')
                    ->limit(60)
                    ->tooltip(fn ($record) => $record->url)
                    ->searchable(),

                TextColumn::make('ip_address')
                    ->label('IP Address')
                    ->searchable(),

                TextColumn::make('user_agent')
                    ->label('Browser')
                    ->limit(50)
                    ->tooltip(fn ($record) => $record->user_agent)
                    ->searchable(),
            ])
            ->defaultSort('created_at', 'desc')
            ->striped()
            ->paginated([15, 25, 50, 100]);
    }
}
