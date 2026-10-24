<?php

namespace App\Filament\Admin\Resources\Videos\Schemas;

use App\Filament\Concerns\HasWebPConversion;
use App\Services\ImageService;
use Filament\Schemas\Schema;
use Filament\Forms\Components\TextInput;

class VideoForm
{
    use HasWebPConversion;

    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('title')
                    ->required(),

                TextInput::make('youtube_url')
                    ->url()
                    ->required(),

                self::makeWebPFileUpload(
                    fieldName:     'thumbnail',
                    directory:     'videos',
                    quality:       ImageService::getQualityForType('video'),
                    sizes:         self::getSizesForType('video'),
                    required:      false,
                    previewHeight: '200'
                ),
            ]);
    }
}
