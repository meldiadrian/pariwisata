<?php

namespace App\Filament\Admin\Resources\Advertisements\Schemas;

use App\Filament\Concerns\HasWebPConversion;
use App\Services\ImageService;
use Filament\Schemas\Schema;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
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
                FileUpload::make('image')
                    ->image()
                    ->directory('ads')
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
                    ->saveUploadedFileUsing(function ($file) {
                        $imageService = app(ImageService::class);
                        
                        try {
                            $result = $imageService->convertUploadedFile(
                                $file,
                                'ads',
                                ImageService::getQualityForType('advertisement'),
                                self::getSizesForType('advertisement')
                            );
                            
                            return $result['path'];
                        } catch (\Exception $e) {
                            \Log::error('WebP conversion failed: ' . $e->getMessage());
                            return $file->store('ads', 'public');
                        }
                    })
                    ->deleteUploadedFileUsing(function ($file) {
                        if (!$file) return;
                        
                        if (\Illuminate\Support\Facades\Storage::disk('public')->exists($file)) {
                            \Illuminate\Support\Facades\Storage::disk('public')->delete($file);
                        }
                        
                        $sizes = self::getSizesForType('advertisement');
                        if (!empty($sizes)) {
                            $pathInfo = pathinfo($file);
                            foreach (array_keys($sizes) as $sizeName) {
                                $sizedPath = $pathInfo['dirname'] . '/' . $pathInfo['filename'] . '_' . $sizeName . '.webp';
                                if (\Illuminate\Support\Facades\Storage::disk('public')->exists($sizedPath)) {
                                    \Illuminate\Support\Facades\Storage::disk('public')->delete($sizedPath);
                                }
                            }
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
