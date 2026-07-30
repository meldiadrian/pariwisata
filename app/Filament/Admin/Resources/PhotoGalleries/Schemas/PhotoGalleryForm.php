<?php

namespace App\Filament\Admin\Resources\PhotoGalleries\Schemas;

use Filament\Schemas\Schema;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;

class PhotoGalleryForm
{
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
                // FileUpload::make('image')
                //     ->image()
                //     ->requiredWithout('video_url')
                //     ->disk('public')
                //     ->directory('galleries')
                //     ->visibility('public')
                //     ->acceptedFileTypes(['image/jpeg', 'image/png', 'image/gif', 'image/webp'])
                //     ->maxSize(5120)
                //     ->deletable()
                //     ->openable()
                //     ->downloadable()
                //     ->imagePreviewHeight('200')
                //     ->loadingIndicatorPosition('center')
                //     ->panelLayout('grid')
                //     ->removeUploadedFileButtonPosition('right')
                //     ->uploadButtonPosition('left')
                //     ->uploadProgressIndicatorPosition('left'),


                FileUpload::make('image')
                    ->image()
                    ->disk('public')
                    ->directory('galleries')
                    ->visibility('public')
                    ->nullable()
                    ->acceptedFileTypes([
                        'image/jpeg',
                        'image/png',
                        'image/gif',
                        'image/webp',
                    ])
                    ->maxSize(5120)
                    ->deletable()
                    ->reorderable(false)
                    ->openable()
                    ->downloadable()
                    ->previewable(true)
                    ->imagePreviewHeight('250')
                    ->imageResizeMode('cover')
                    ->deleteUploadedFileUsing(function ($file) {
                        if (\Illuminate\Support\Facades\Storage::disk('public')->exists($file)) {
                            \Illuminate\Support\Facades\Storage::disk('public')->delete($file);
                        }
                    }),
            ]);
    }
}
