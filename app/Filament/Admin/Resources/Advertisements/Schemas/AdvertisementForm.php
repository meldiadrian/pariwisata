<?php

namespace App\Filament\Admin\Resources\Advertisements\Schemas;

use Filament\Schemas\Schema;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Toggle;
use App\Support\WebpUploadHelper;
use Livewire\Features\SupportFileUploads\TemporaryUploadedFile;

class AdvertisementForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('title')
                    ->required(),
                FileUpload::make('image')
                    ->image()
                    ->directory('ads')
                    ->acceptedFileTypes(['image/jpeg', 'image/png', 'image/gif', 'image/webp'])
                    ->saveUploadedFileUsing(function (TemporaryUploadedFile $file): string {
                        return WebpUploadHelper::convertAndStore($file, 'ads');
                    })
                    ->required(),
                TextInput::make('url')
                    ->url(),
                Select::make('position')
                    ->options([
                        'top' => 'Top Banner',
                        'sidebar' => 'Sidebar',
                        'footer' => 'Footer',
                    ])
                    ->required(),
                Toggle::make('is_active')
                    ->default(true),
            ]);
    }
}
