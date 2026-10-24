<?php

namespace App\Services;

use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;

class ImageService
{
    protected ImageManager $manager;

    public function __construct()
    {
        $this->manager = new ImageManager(new Driver());
    }

    /**
     * Convert image to WebP format
     *
     * @param string $sourcePath Path to source image (can be full path or storage path)
     * @param int $quality Quality for WebP (0-100)
     * @param array $sizes Array of sizes to generate ['thumbnail' => 150, 'medium' => 600]
     * @return array Array of generated WebP paths
     */
    public function convertToWebP(string $sourcePath, int $quality = 85, array $sizes = []): array
    {
        $results = [];

        // Determine if it's a full path or storage path
        if (File::exists($sourcePath)) {
            $fullPath = $sourcePath;
            $isStoragePath = false;
        } else {
            $fullPath = Storage::disk('public')->path($sourcePath);
            $isStoragePath = true;
        }

        if (!File::exists($fullPath)) {
            throw new \Exception("Source image not found: {$sourcePath}");
        }

        // Check if GD supports WebP
        if (!function_exists('imagewebp')) {
            throw new \Exception("WebP support is not available in GD library");
        }

        // Load the original image
        $image = $this->manager->read($fullPath);

        // Get original dimensions
        $originalWidth = $image->width();
        $originalHeight = $image->height();

        // Generate the base WebP path
        $pathInfo = pathinfo($fullPath);
        $baseWebPPath = $pathInfo['dirname'] . '/' . $pathInfo['filename'] . '.webp';

        // Convert main image
        $webpImage = clone $image;
        $webpImage->toWebp($quality)->save($baseWebPPath);

        $results['original'] = $isStoragePath 
            ? str_replace(Storage::disk('public')->path(''), '', $baseWebPPath)
            : $baseWebPPath;

        // Generate different sizes if specified
        foreach ($sizes as $sizeName => $maxWidth) {
            if ($originalWidth <= $maxWidth) {
                continue; // Skip if original is smaller
            }

            $sizedWebPPath = $pathInfo['dirname'] . '/' . $pathInfo['filename'] . '_' . $sizeName . '.webp';
            
            $sizedImage = clone $image;
            $sizedImage->scale(width: $maxWidth);
            $sizedImage->toWebp($quality)->save($sizedWebPPath);

            $results[$sizeName] = $isStoragePath 
                ? str_replace(Storage::disk('public')->path(''), '', $sizedWebPPath)
                : $sizedWebPPath;
        }

        return $results;
    }

    /**
     * Convert uploaded file to WebP
     *
     * @param mixed $uploadedFile Uploaded file instance
     * @param string $directory Target directory in storage
     * @param int $quality WebP quality
     * @param array $sizes Sizes to generate
     * @return array ['path' => main path, 'sizes' => [...]]
     */
    public function convertUploadedFile(
        $uploadedFile, 
        string $directory = 'images', 
        int $quality = 85, 
        array $sizes = []
    ): array {
        return $this->convertUploadedFileWithDedup($uploadedFile, $directory, $quality, $sizes);
    }

    /**
     * Convert uploaded file to WebP with deduplication.
     * If a file with the same content hash already exists in the directory,
     * the existing file is returned without reprocessing.
     *
     * @param mixed  $uploadedFile  Uploaded file instance
     * @param string $directory     Target directory in storage
     * @param int    $quality       WebP quality
     * @param array  $sizes         Sizes to generate
     * @return array ['path' => main path, 'sizes' => [...], 'deduplicated' => bool]
     */
    public function convertUploadedFileWithDedup(
        $uploadedFile,
        string $directory = 'images',
        int $quality = 85,
        array $sizes = []
    ): array {
        // Ensure directory exists
        $fullDirectory = Storage::disk('public')->path($directory);
        if (!File::exists($fullDirectory)) {
            File::makeDirectory($fullDirectory, 0755, true);
        }

        // --- Deduplication: hash the raw uploaded bytes ---
        $tempPath  = method_exists($uploadedFile, 'getRealPath')
            ? $uploadedFile->getRealPath()
            : (string) $uploadedFile;
        $fileHash  = md5_file($tempPath);
        $hashFile  = $fullDirectory . '/.hashes';

        // Load existing hash map
        $hashMap = [];
        if (File::exists($hashFile)) {
            $stored = json_decode(File::get($hashFile), true);
            if (is_array($stored)) {
                $hashMap = $stored;
            }
        }

        // If same file already processed, return cached result without reprocessing
        if (isset($hashMap[$fileHash]) && Storage::disk('public')->exists($hashMap[$fileHash]['path'])) {
            return array_merge($hashMap[$fileHash], ['deduplicated' => true]);
        }

        // --- Process: load once, convert once ---
        $filename      = uniqid() . '_' . time();
        $webpFilename  = $filename . '.webp';
        $image         = $this->manager->read($tempPath);
        $mainPath      = $directory . '/' . $webpFilename;
        $fullPath      = Storage::disk('public')->path($mainPath);

        $image->toWebp($quality)->save($fullPath);

        $result = [
            'path'          => $mainPath,
            'sizes'         => [],
            'deduplicated'  => false,
        ];

        // Generate different sizes (reuse already-loaded $image)
        foreach ($sizes as $sizeName => $maxWidth) {
            $sizedFilename = $filename . '_' . $sizeName . '.webp';
            $sizedPath     = $directory . '/' . $sizedFilename;
            $sizedFullPath = Storage::disk('public')->path($sizedPath);

            $sizedImage = clone $image;
            $sizedImage->scale(width: $maxWidth);
            $sizedImage->toWebp($quality)->save($sizedFullPath);

            $result['sizes'][$sizeName] = $sizedPath;
        }

        // Persist hash → path mapping for future dedup
        $hashMap[$fileHash] = [
            'path'  => $result['path'],
            'sizes' => $result['sizes'],
        ];
        File::put($hashFile, json_encode($hashMap, JSON_PRETTY_PRINT));

        return $result;
    }

    /**
     * Remove a path entry from the deduplication hash map.
     * Call this when deleting a file so its hash slot is freed.
     *
     * @param string $directory
     * @param string $filePath  Storage-relative path of the deleted file
     */
    public function removeFromHashMap(string $directory, string $filePath): void
    {
        $fullDirectory = Storage::disk('public')->path($directory);
        $hashFile      = $fullDirectory . '/.hashes';

        if (!File::exists($hashFile)) {
            return;
        }

        $hashMap = json_decode(File::get($hashFile), true);
        if (!is_array($hashMap)) {
            return;
        }

        foreach ($hashMap as $hash => $entry) {
            if (($entry['path'] ?? '') === $filePath) {
                unset($hashMap[$hash]);
                break;
            }
        }

        File::put($hashFile, json_encode($hashMap, JSON_PRETTY_PRINT));
    }

    /**
     * Batch convert images in a directory
     *
     * @param string $directory Directory to scan
     * @param int $quality WebP quality
     * @param bool $removeOriginal Remove original after conversion
     * @return array Results of conversion
     */
    public function batchConvert(string $directory, int $quality = 85, bool $removeOriginal = false): array
    {
        $results = [
            'success' => [],
            'failed' => [],
            'skipped' => []
        ];

        $fullPath = Storage::disk('public')->path($directory);
        
        if (!File::exists($fullPath)) {
            throw new \Exception("Directory not found: {$directory}");
        }

        $allowedExtensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp'];
        $files = File::allFiles($fullPath);

        foreach ($files as $file) {
            $extension = strtolower($file->getExtension());
            
            if (!in_array($extension, $allowedExtensions)) {
                continue;
            }

            // Skip if WebP already exists
            $webpPath = $file->getPath() . '/' . $file->getFilenameWithoutExtension() . '.webp';
            if (File::exists($webpPath)) {
                $results['skipped'][] = $file->getRelativePathname();
                continue;
            }

            try {
                $this->convertToWebP($file->getPathname(), $quality);
                $results['success'][] = $file->getRelativePathname();

                if ($removeOriginal) {
                    File::delete($file->getPathname());
                }
            } catch (\Exception $e) {
                $results['failed'][] = [
                    'file' => $file->getRelativePathname(),
                    'error' => $e->getMessage()
                ];
            }
        }

        return $results;
    }

    /**
     * Get WebP version of an image path
     *
     * @param string|null $imagePath
     * @return string|null
     */
    public function getWebPPath(?string $imagePath): ?string
    {
        if (!$imagePath) {
            return null;
        }

        $pathInfo = pathinfo($imagePath);
        $webpPath = $pathInfo['dirname'] . '/' . $pathInfo['filename'] . '.webp';

        // Check if WebP version exists
        if (Storage::disk('public')->exists($webpPath)) {
            return $webpPath;
        }

        // Check if it's a full path
        if (File::exists(str_replace(['/' . $pathInfo['basename']], ['/' . $pathInfo['filename'] . '.webp'], $imagePath))) {
            return str_replace(['/' . $pathInfo['basename']], ['/' . $pathInfo['filename'] . '.webp'], $imagePath);
        }

        return $imagePath; // Return original if WebP doesn't exist
    }

    /**
     * Check if browser supports WebP
     *
     * @return bool
     */
    public static function browserSupportsWebP(): bool
    {
        $acceptHeader = request()->header('Accept', '');
        return str_contains($acceptHeader, 'image/webp');
    }

    /**
     * Get responsive image sizes configuration
     *
     * @return array
     */
    public static function getResponsiveSizes(): array
    {
        return [
            'thumbnail' => 150,
            'small' => 300,
            'medium' => 600,
            'large' => 1200,
            'xlarge' => 1920
        ];
    }

    /**
     * Get quality settings based on image type
     *
     * @param string $type Type of image (news, gallery, advertisement, etc)
     * @return int
     */
    public static function getQualityForType(string $type): int
    {
        return match($type) {
            'gallery', 'slider'        => 90, // High quality for galleries/sliders
            'news', 'page'             => 85, // Good quality for content
            'thumbnail'                => 80, // Lower quality for thumbnails
            'advertisement'            => 85, // Good quality for ads
            'destination'              => 88, // High quality for destination photos
            'setting'                  => 85, // Settings images (logo, favicon, etc.)
            'video'                    => 85, // Video thumbnails
            default                    => 85,
        };
    }
}
