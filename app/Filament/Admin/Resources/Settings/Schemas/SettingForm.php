<?php

namespace App\Filament\Admin\Resources\Settings\Schemas;

use Filament\Schemas\Schema;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\FileUpload;
use Filament\Schemas\Components\Section;
use App\Support\WebpUploadHelper;
use Livewire\Features\SupportFileUploads\TemporaryUploadedFile;

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
                        TextInput::make('tagline')
                            ->label('Tagline / Subtitle')
                            ->placeholder('Contoh: Kabupaten Bengkalis')
                            ->helperText('Ditampilkan di bawah nama instansi pada header website.'),
                        FileUpload::make('logo')
                            ->image()
                            ->directory('settings')
                            ->acceptedFileTypes(['image/jpeg', 'image/png', 'image/gif', 'image/webp'])
                            ->saveUploadedFileUsing(function (TemporaryUploadedFile $file): string {
                                return WebpUploadHelper::convertAndStore($file, 'settings');
                            }),
                        FileUpload::make('favicon')
                            ->image()
                            ->directory('settings')
                            ->acceptedFileTypes(['image/jpeg', 'image/png', 'image/gif', 'image/webp'])
                            ->saveUploadedFileUsing(function (TemporaryUploadedFile $file): string {
                                return WebpUploadHelper::convertAndStore($file, 'settings');
                            }),
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
