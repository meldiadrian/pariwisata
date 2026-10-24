<?php

namespace App\Filament\Admin\Resources\Users\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Actions\Action;
use Filament\Support\Icons\Heroicon;
use Illuminate\Support\Str;
use Filament\Notifications\Notification;

class UserForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('name')
                    ->required(),
                TextInput::make('email')
                    ->email()
                    ->required()
                    ->unique(ignoreRecord: true),
                TextInput::make('password')
                    ->password()
                    ->dehydrated(fn ($state) => filled($state))
                    ->required(fn (string $operation): bool => $operation === 'create')
                    ->suffixAction(
                        Action::make('generatePassword')
                         ->icon('heroicon-o-key')
                            ->label('Generate')
                            ->action(function ($set, $state) {
                                $password = Str::password(12, true, true, true, false);
                                $set('password', $password);
                                
                                // Kirim notifikasi sukses dengan password yang di-generate
                                Notification::make()
                                    ->title('Password Generated')
                                    ->body('Password: ' . $password)
                                    ->success()
                                    ->duration(10000)
                                    ->send();
                            })
                    )
                    ->revealable()
                    ->helperText('Minimal 8 karakter. Klik tombol "Generate" untuk membuat password otomatis.'),
                Select::make('roles')
                    ->relationship('roles', 'name')
                    ->multiple()
                    ->preload()
                    ->searchable(),
            ]);
    }
}
