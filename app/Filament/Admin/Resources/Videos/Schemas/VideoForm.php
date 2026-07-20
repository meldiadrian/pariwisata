<?php

namespace App\Filament\Admin\Resources\Videos\Schemas;

use Filament\Schemas\Schema;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
use App\Support\WebpUploadHelper;
use Livewire\Features\SupportFileUploads\TemporaryUploadedFile;

class VideoForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('title')
                    ->required(),
                TextInput::make('youtube_url')
                    ->url()
                    ->required(),
                FileUpload::make('thumbnail')
                    ->image()
                    ->directory('videos')
                    ->acceptedFileTypes(['image/jpeg', 'image/png', 'image/gif', 'image/webp'])
                    ->saveUploadedFileUsing(function (TemporaryUploadedFile $file): string {
                        return WebpUploadHelper::convertAndStore($file, 'videos');
                    }),
            ]);
    }
}
