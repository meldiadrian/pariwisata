<?php

namespace App\Filament\Admin\Resources\Advertisements\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Toggle;

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
                    ->disk('public')
                    ->visibility('public')
                    ->acceptedFileTypes(['image/jpeg', 'image/png', 'image/gif', 'image/webp'])
                    ->maxSize(5120)
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
