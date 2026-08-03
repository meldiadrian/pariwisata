<?php

namespace App\Filament\Concerns;

use App\Services\ImageService;
use Filament\Forms\Components\FileUpload;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;

trait HasWebPConversion
{
    /**
     * Configure FileUpload component to auto-convert to WebP
     *
     * @param string $directory Directory in storage/app/public
     * @param int $quality WebP quality (0-100)
     * @param array $sizes Additional sizes to generate ['thumbnail' => 150, 'medium' => 600]
     * @param bool $keepOriginal Keep original image file
     * @return FileUpload
     */
    protected static function makeWebPFileUpload(
        string $directory = 'images',
        int $quality = 85,
        array $sizes = [],
        bool $keepOriginal = false
    ): FileUpload {
        return FileUpload::make('thumbnail')
            ->image()
            ->directory($directory)
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
            ->saveUploadedFileUsing(function ($file) use ($directory, $quality, $sizes, $keepOriginal) {
                $imageService = app(ImageService::class);
                
                try {
                    // Convert to WebP
                    $result = $imageService->convertUploadedFile(
                        $file,
                        $directory,
                        $quality,
                        $sizes
                    );
                    
                    return $result['path'];
                } catch (\Exception $e) {
                    // If conversion fails, fall back to default upload
                    \Log::error('WebP conversion failed: ' . $e->getMessage());
                    return $file->store($directory, 'public');
                }
            })
            ->deleteUploadedFileUsing(function ($file) use ($sizes) {
                if (!$file) return;
                
                // Delete main file
                if (Storage::disk('public')->exists($file)) {
                    Storage::disk('public')->delete($file);
                }
                
                // Delete all generated sizes
                if (!empty($sizes)) {
                    $pathInfo = pathinfo($file);
                    foreach (array_keys($sizes) as $sizeName) {
                        $sizedPath = $pathInfo['dirname'] . '/' . $pathInfo['filename'] . '_' . $sizeName . '.webp';
                        if (Storage::disk('public')->exists($sizedPath)) {
                            Storage::disk('public')->delete($sizedPath);
                        }
                    }
                }
            });
    }

    /**
     * Configure FileUpload for multiple images with WebP conversion
     *
     * @param string $fieldName Field name
     * @param string $directory Directory in storage/app/public
     * @param int $quality WebP quality (0-100)
     * @param array $sizes Additional sizes to generate
     * @param int $maxFiles Maximum number of files
     * @return FileUpload
     */
    protected static function makeMultipleWebPFileUpload(
        string $fieldName = 'images',
        string $directory = 'images',
        int $quality = 85,
        array $sizes = [],
        int $maxFiles = 10
    ): FileUpload {
        return FileUpload::make($fieldName)
            ->image()
            ->multiple()
            ->directory($directory)
            ->disk('public')
            ->visibility('public')
            ->acceptedFileTypes(['image/jpeg', 'image/png', 'image/gif', 'image/webp'])
            ->maxSize(15360) // 15MB
            ->maxFiles($maxFiles)
            ->deletable(true)
            ->reorderable(true)
            ->openable()
            ->downloadable()
            ->previewable(true)
            ->imagePreviewHeight('200')
            ->saveUploadedFileUsing(function ($file) use ($directory, $quality, $sizes) {
                $imageService = app(ImageService::class);
                
                try {
                    $result = $imageService->convertUploadedFile(
                        $file,
                        $directory,
                        $quality,
                        $sizes
                    );
                    
                    return $result['path'];
                } catch (\Exception $e) {
                    \Log::error('WebP conversion failed: ' . $e->getMessage());
                    return $file->store($directory, 'public');
                }
            })
            ->deleteUploadedFileUsing(function ($file) use ($sizes) {
                if (!$file) return;
                
                if (Storage::disk('public')->exists($file)) {
                    Storage::disk('public')->delete($file);
                }
                
                if (!empty($sizes)) {
                    $pathInfo = pathinfo($file);
                    foreach (array_keys($sizes) as $sizeName) {
                        $sizedPath = $pathInfo['dirname'] . '/' . $pathInfo['filename'] . '_' . $sizeName . '.webp';
                        if (Storage::disk('public')->exists($sizedPath)) {
                            Storage::disk('public')->delete($sizedPath);
                        }
                    }
                }
            });
    }

    /**
     * Get responsive sizes for different content types
     *
     * @param string $type Content type (news, gallery, slider, etc)
     * @return array
     */
    protected static function getSizesForType(string $type): array
    {
        return match($type) {
            'news' => [
                'thumbnail' => 150,
                'medium' => 600,
                'large' => 1200,
            ],
            'gallery' => [
                'thumbnail' => 300,
                'medium' => 800,
                'large' => 1600,
            ],
            'slider' => [
                'thumbnail' => 400,
                'large' => 1920,
            ],
            'advertisement' => [
                'small' => 300,
                'medium' => 600,
            ],
            default => [
                'thumbnail' => 150,
                'medium' => 600,
            ]
        };
    }
}
