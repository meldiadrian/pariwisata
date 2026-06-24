<?php

namespace App\Filament\Admin\Resources\Settings\Schemas;

use Filament\Schemas\Schema;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\FileUpload;
use Filament\Schemas\Components\Section;

class SettingForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('General Information')
                    ->components([
                        TextInput::make('site_name')
                            ->required(),
                        FileUpload::make('logo')
                            ->image()
                            ->directory('settings'),
                        FileUpload::make('favicon')
                            ->image()
                            ->directory('settings'),
                        Textarea::make('about_us')
                            ->columnSpanFull(),
                    ]),
                Section::make('Contact Information')
                    ->components([
                        TextInput::make('email')
                            ->email(),
                        TextInput::make('phone'),
                        Textarea::make('address')
                            ->columnSpanFull(),
                    ]),
                Section::make('Social Media')
                    ->components([
                        TextInput::make('facebook')
                            ->url(),
                        TextInput::make('instagram')
                            ->url(),
                        TextInput::make('youtube')
                            ->url(),
                    ]),
            ]);
    }
}
