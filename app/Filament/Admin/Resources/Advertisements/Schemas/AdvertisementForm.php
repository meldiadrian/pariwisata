<?php

namespace App\Filament\Admin\Resources\Advertisements\Schemas;

use App\Filament\Concerns\HasWebPConversion;
use App\Services\ImageService;
use Filament\Schemas\Schema;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Toggle;

class AdvertisementForm
{
    use HasWebPConversion;

    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('title')
                    ->required(),

                self::makeWebPFileUpload(
                    fieldName: 'image',
                    directory: 'ads',
                    quality: ImageService::getQualityForType('advertisement'),
                    sizes: self::getSizesForType('advertisement'),
                    required: true,
                    previewHeight: '200'
                ),

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
