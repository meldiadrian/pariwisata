<?php

namespace App\Filament\Admin\Resources\PhotoGalleries\Schemas;

use App\Filament\Concerns\HasWebPConversion;
use App\Services\ImageService;
use Filament\Schemas\Schema;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;

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
                    ->maxSize(15360) // 15MB
                    ->deletable()
                    ->reorderable(false)
                    ->openable()
                    ->downloadable()
                    ->previewable(true)
                    ->imagePreviewHeight('250')
                    ->imageResizeMode('cover')
                    ->saveUploadedFileUsing(function ($file) {
                        $imageService = app(ImageService::class);
                        
                        try {
                            $result = $imageService->convertUploadedFile(
                                $file,
                                'galleries',
                                ImageService::getQualityForType('gallery'),
                                self::getSizesForType('gallery')
                            );
                            
                            return $result['path'];
                        } catch (\Exception $e) {
                            \Log::error('WebP conversion failed: ' . $e->getMessage());
                            return $file->store('galleries', 'public');
                        }
                    })
                    ->deleteUploadedFileUsing(function ($file) {
                        if (!$file) return;
                        
                        if (\Illuminate\Support\Facades\Storage::disk('public')->exists($file)) {
                            \Illuminate\Support\Facades\Storage::disk('public')->delete($file);
                        }
                        
                        // Delete all generated sizes
                        $sizes = self::getSizesForType('gallery');
                        if (!empty($sizes)) {
                            $pathInfo = pathinfo($file);
                            foreach (array_keys($sizes) as $sizeName) {
                                $sizedPath = $pathInfo['dirname'] . '/' . $pathInfo['filename'] . '_' . $sizeName . '.webp';
                                if (\Illuminate\Support\Facades\Storage::disk('public')->exists($sizedPath)) {
                                    \Illuminate\Support\Facades\Storage::disk('public')->delete($sizedPath);
                                }
                            }
                        }
                    }),
            ]);
    }
}
