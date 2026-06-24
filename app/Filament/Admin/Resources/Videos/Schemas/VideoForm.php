<?php

namespace App\Filament\Admin\Resources\Videos\Schemas;

use Filament\Schemas\Schema;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;

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
                    ->directory('videos'),
            ]);
    }
}
