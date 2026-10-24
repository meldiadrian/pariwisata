<?php

namespace App\Filament\Concerns;

use App\Services\ImageService;
use Filament\Forms\Components\FileUpload;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;

trait HasWebPConversion
{
    /**
     * Build a single-image FileUpload that:
     *  - Converts the uploaded image to WebP on save (one pass, no double work)
     *  - Deduplicates: identical files return the cached path immediately
     *  - Cleans up the hash-map entry and sized variants on delete
     *
     * @param string $fieldName   Form field name (e.g. 'image', 'thumbnail', 'logo')
     * @param string $directory   Storage directory
     * @param int    $quality     WebP quality (0-100)
     * @param array  $sizes       Responsive sizes: ['thumbnail' => 150, 'medium' => 600]
     * @param bool   $required    Whether the field is required
     * @param string $previewHeight  CSS height for the image preview
     */
    protected static function makeWebPFileUpload(
        string $fieldName = 'thumbnail',
        string $directory = 'images',
        int $quality = 85,
        array $sizes = [],
        bool $required = false,
        string $previewHeight = '200'
    ): FileUpload {
        return FileUpload::make($fieldName)
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
            ->imagePreviewHeight($previewHeight)
            // -- Save: one-pass WebP conversion with deduplication --
            ->saveUploadedFileUsing(function ($file) use ($directory, $quality, $sizes) {
                /** @var ImageService $imageService */
                $imageService = app(ImageService::class);

                try {
                    $result = $imageService->convertUploadedFileWithDedup(
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
            // -- Delete: remove file, sized variants, and hash-map entry --
            ->deleteUploadedFileUsing(function ($file) use ($directory, $sizes) {
                if (!$file) {
                    return;
                }

                if (Storage::disk('public')->exists($file)) {
                    Storage::disk('public')->delete($file);
                }

                // Remove sized variants
                if (!empty($sizes)) {
                    $pathInfo = pathinfo($file);
                    foreach (array_keys($sizes) as $sizeName) {
                        $sizedPath = $pathInfo['dirname'] . '/' . $pathInfo['filename'] . '_' . $sizeName . '.webp';
                        if (Storage::disk('public')->exists($sizedPath)) {
                            Storage::disk('public')->delete($sizedPath);
                        }
                    }
                }

                // Free the hash-map slot so the same file can be re-uploaded fresh
                app(ImageService::class)->removeFromHashMap($directory, $file);
            })
            ->when($required, fn(FileUpload $f) => $f->required());
    }

    /**
     * Build a multiple-image FileUpload with WebP conversion and deduplication.
     *
     * @param string $fieldName
     * @param string $directory
     * @param int    $quality
     * @param array  $sizes
     * @param int    $maxFiles
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
                /** @var ImageService $imageService */
                $imageService = app(ImageService::class);

                try {
                    $result = $imageService->convertUploadedFileWithDedup(
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
            ->deleteUploadedFileUsing(function ($file) use ($directory, $sizes) {
                if (!$file) {
                    return;
                }

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

                app(ImageService::class)->removeFromHashMap($directory, $file);
            });
    }

    /**
     * Get responsive sizes for different content types.
     *
     * @param string $type Content type (news, gallery, slider, advertisement, destination, setting)
     */
    protected static function getSizesForType(string $type): array
    {
        return match ($type) {
            'news' => ['thumbnail' => 150, 'medium' => 600, 'large' => 1200],
            'gallery' => ['thumbnail' => 300, 'medium' => 800, 'large' => 1600],
            'slider' => ['thumbnail' => 400, 'large' => 1920],
            'advertisement' => ['small' => 300, 'medium' => 600],
            'destination' => ['thumbnail' => 300, 'medium' => 800],
            'setting' => ['thumbnail' => 150, 'medium' => 600],
            'video' => ['thumbnail' => 300, 'medium' => 600],
            default => ['thumbnail' => 150, 'medium' => 600],
        };
    }
}
