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
                    ->directory('videos')
                    ->disk('public')
                    ->visibility('public')
                    ->acceptedFileTypes(['image/jpeg', 'image/png', 'image/gif', 'image/webp'])
                    ->maxSize(15360) // 15MB
                    ->deletable(true)
                    ->reorderable(false)
                    ->openable()
                    ->downloadable()
                    ->previewable(true)
                    ->imagePreviewHeight('200')
                    ->deleteUploadedFileUsing(function ($file) {
                        if (\Illuminate\Support\Facades\Storage::disk('public')->exists($file)) {
                            \Illuminate\Support\Facades\Storage::disk('public')->delete($file);
                        }
                    }),
            ]);
    }
}
