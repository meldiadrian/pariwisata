<?php

namespace App\Filament\Admin\Resources\PhotoGalleries\Schemas;

use App\Filament\Concerns\HasWebPConversion;
use App\Services\ImageService;
use Filament\Schemas\Schema;
use Filament\Forms\Components\TextInput;

class PhotoGalleryForm
{
    use HasWebPConversion;

    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('title')
                    ->required()
                    ->maxLength(255),

                TextInput::make('video_url')
                    ->url()
                    ->label('Video URL (YouTube/Embed)')
                    ->nullable(),

                self::makeWebPFileUpload(
                    fieldName:     'image',
                    directory:     'galleries',
                    quality:       ImageService::getQualityForType('gallery'),
                    sizes:         self::getSizesForType('gallery'),
                    required:      false,
                    previewHeight: '250'
                ),
            ]);
    }
}
