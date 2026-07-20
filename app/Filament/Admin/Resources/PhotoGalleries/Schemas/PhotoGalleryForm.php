<?php

namespace App\Filament\Admin\Resources\PhotoGalleries\Schemas;

use Filament\Schemas\Schema;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
use Illuminate\Http\UploadedFile;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

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
                FileUpload::make('image')
                    ->image()
                    ->requiredWithout('video_url')
                    ->directory('galleries')
                    ->saveUploadedFileUsing(function (UploadedFile $file): string {
                        $manager = new ImageManager(new Driver());
                        $image = $manager->read($file->getRealPath());
                        
                        $filename = Str::random(40) . '.webp';
                        $path = 'galleries/' . $filename;
                        
                        Storage::disk('public')->put($path, (string) $image->toWebp(80));
                        
                        return $path;
                    }),
            ]);
    }
}
