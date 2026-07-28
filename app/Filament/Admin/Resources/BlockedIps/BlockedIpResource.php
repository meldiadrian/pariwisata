<?php

namespace App\Filament\Admin\Resources\BlockedIps;

use App\Models\BlockedIp;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Tables\Table;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\IconColumn;
use Filament\Actions\Action;
use Filament\Actions\DeleteAction;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Forms\Components\Textarea;
use Filament\Notifications\Notification;
use Illuminate\Support\Facades\Auth;

class BlockedIpResource extends Resource
{
    protected static ?string $model = BlockedIp::class;

    protected static string|\BackedEnum|null $navigationIcon = 'heroicon-o-shield-exclamation';

    protected static ?string $navigationLabel = 'IP Diblokir';

    protected static ?string $modelLabel = 'IP Diblokir';

    protected static ?string $pluralModelLabel = 'IP Diblokir';

    protected static string|\UnitEnum|null $navigationGroup = 'System';

    protected static ?int $navigationSort = 100;

    public static function form(Schema $schema): Schema
    {
        return $schema->components([
            TextInput::make('ip_address')
                ->label('IP Address')
                ->required()
                ->placeholder('e.g. 192.168.1.1')
                ->maxLength(45),

            Textarea::make('reason')
                ->label('Alasan Pemblokiran')
                ->nullable()
                ->rows(3),

            Toggle::make('is_active')
                ->label('Status Aktif')
                ->default(true),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('ip_address')
                    ->label('IP Address')
                    ->searchable()
                    ->badge()
                    ->color(fn ($record) => $record->is_active ? 'danger' : 'gray'),

                TextColumn::make('reason')
                    ->label('Alasan')
                    ->limit(60)
                    ->default('—'),

                IconColumn::make('is_active')
                    ->label('Status')
                    ->boolean()
                    ->trueColor('danger')
                    ->falseColor('success')
                    ->trueIcon('heroicon-o-no-symbol')
                    ->falseIcon('heroicon-o-check-circle'),

                TextColumn::make('blockedByUser.name')
                    ->label('Diblokir Oleh')
                    ->formatStateUsing(fn ($state, $record) => $record->blocked_by ? $state : '🤖 Otomatis Sistem'),

                TextColumn::make('created_at')
                    ->label('Tanggal Blokir')
                    ->dateTime('d M Y, H:i')
                    ->sortable()
                    ->timezone('Asia/Jakarta'),
            ])
            ->actions([
                Action::make('toggle')
                    ->label(fn ($record) => $record->is_active ? 'Aktifkan' : 'Nonaktifkan')
                    ->icon(fn ($record) => $record->is_active ? 'heroicon-o-lock-open' : 'heroicon-o-no-symbol')
                    ->color(fn ($record) => $record->is_active ? 'success' : 'danger')
                    ->requiresConfirmation()
                    ->action(function ($record) {
                        $record->update(['is_active' => !$record->is_active]);
                        $status = $record->is_active ? 'diaktifkan' : 'dinonaktifkan';
                        Notification::make()
                            ->title("IP {$record->ip_address} berhasil {$status}")
                            ->success()
                            ->send();
                    }),

                DeleteAction::make()
                    ->label('Hapus'),
            ])
            ->defaultSort('created_at', 'desc')
            ->striped();
    }

    public static function getRelations(): array
    {
        return [];
    }

    public static function getPages(): array
    {
        return [
            'index'  => Pages\ListBlockedIps::route('/'),
            'create' => Pages\CreateBlockedIp::route('/create'),
        ];
    }
}
