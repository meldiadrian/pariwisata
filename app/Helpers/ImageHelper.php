<?php

namespace App\Helpers;

use Illuminate\Support\Facades\Storage;

class ImageHelper
{
    /**
     * Per-request memoization for storage existence checks.
     *
     * @var array<string, bool>
     */
    private static array $existsCache = [];

    /**
     * Normalize a relative path, /storage/... path, or same-app storage URL into a
     * storage-relative path. Returns null for external URLs or data URIs.
     */
    private static function normalizeStoragePath(?string $imagePath): ?string
    {
        if (!$imagePath) {
            return null;
        }

        if (str_starts_with($imagePath, 'data:')) {
            return null;
        }

        if (str_starts_with($imagePath, 'http://') || str_starts_with($imagePath, 'https://')) {
            $parsedPath = parse_url($imagePath, PHP_URL_PATH);
            if (!is_string($parsedPath) || !str_starts_with($parsedPath, '/storage/')) {
                return null;
            }
            return ltrim(substr($parsedPath, strlen('/storage/')), '/');
        }

        if (str_starts_with($imagePath, '/storage/')) {
            return ltrim(substr($imagePath, strlen('/storage/')), '/');
        }

        return ltrim($imagePath, '/');
    }

    /**
     * Check whether a storage-relative path exists in either storage/app/public or public/storage.
     */
    private static function storageFileExists(string $relativePath): bool
    {
        $relativePath = ltrim($relativePath, '/');

        if (isset(self::$existsCache[$relativePath])) {
            return self::$existsCache[$relativePath];
        }

        $exists = Storage::disk('public')->exists($relativePath)
            || is_file(public_path('storage/' . $relativePath));

        return self::$existsCache[$relativePath] = $exists;
    }

    private static function joinDirectory(?string $dir, string $file): string
    {
        if ($dir === null || $dir === '' || $dir === '.') {
            return $file;
        }

        return trim($dir, '/') . '/' . $file;
    }

    /**
     * Get WebP version of image path if it exists and browser supports it.
     */
    public static function getWebPPath(?string $imagePath, bool $checkBrowserSupport = true): ?string
    {
        if (!$imagePath) {
            return null;
        }

        if ($checkBrowserSupport && !self::browserSupportsWebP()) {
            return $imagePath;
        }

        $relativePath = self::normalizeStoragePath($imagePath);
        if ($relativePath === null) {
            return $imagePath;
        }

        $pathInfo = pathinfo($relativePath);
        if (empty($pathInfo['filename'])) {
            return $imagePath;
        }

        if (isset($pathInfo['extension']) && strtolower($pathInfo['extension']) === 'webp') {
            return $relativePath;
        }

        $webpPath = self::joinDirectory($pathInfo['dirname'] ?? null, $pathInfo['filename'] . '.webp');

        if (self::storageFileExists($webpPath)) {
            return $webpPath;
        }

        return $imagePath;
    }

    /**
     * Get sized version of image.
     */
    public static function getSizedImage(?string $imagePath, string $size = 'medium'): ?string
    {
        if (!$imagePath) {
            return null;
        }

        $relativePath = self::normalizeStoragePath($imagePath);
        if ($relativePath === null) {
            return $imagePath;
        }

        $pathInfo = pathinfo($relativePath);

        if (empty($pathInfo['extension']) || empty($pathInfo['filename'])) {
            return $imagePath;
        }

        $sizedPath = self::joinDirectory(
            $pathInfo['dirname'] ?? null,
            $pathInfo['filename'] . '_' . $size . '.' . $pathInfo['extension']
        );

        if (self::storageFileExists($sizedPath)) {
            return $sizedPath;
        }

        return $imagePath;
    }

    /**
     * Get WebP sized version of image.
     */
    public static function getWebPSizedImage(?string $imagePath, string $size = 'medium', bool $checkBrowserSupport = true): ?string
    {
        if (!$imagePath) {
            return null;
        }

        if ($checkBrowserSupport && !self::browserSupportsWebP()) {
            return self::getSizedImage($imagePath, $size);
        }

        $relativePath = self::normalizeStoragePath($imagePath);
        if ($relativePath === null) {
            return $imagePath;
        }

        $pathInfo = pathinfo($relativePath);
        if (empty($pathInfo['filename'])) {
            return $imagePath;
        }

        $webpSizedPath = self::joinDirectory(
            $pathInfo['dirname'] ?? null,
            $pathInfo['filename'] . '_' . $size . '.webp'
        );

        if (self::storageFileExists($webpSizedPath)) {
            return $webpSizedPath;
        }

        return self::getWebPPath($relativePath, false);
    }

    /**
     * Check if browser supports WebP.
     */
    public static function browserSupportsWebP(): bool
    {
        $acceptHeader = request()->header('Accept', '');
        return str_contains($acceptHeader, 'image/webp');
    }

    /**
     * Get full URL for image path.
     */
    public static function getImageUrl(?string $imagePath): ?string
    {
        if (!$imagePath) {
            return null;
        }

        if (str_starts_with($imagePath, 'http://') || str_starts_with($imagePath, 'https://') || str_starts_with($imagePath, 'data:')) {
            return $imagePath;
        }

        if (str_starts_with($imagePath, '/storage/')) {
            return asset(ltrim($imagePath, '/'));
        }

        return Storage::disk('public')->url($imagePath);
    }

    /**
     * Get WebP URL with fallback.
     */
    public static function getWebPUrl(?string $imagePath, bool $checkBrowserSupport = true): ?string
    {
        $path = self::getWebPPath($imagePath, $checkBrowserSupport);
        return self::getImageUrl($path);
    }

    /**
     * Generate srcset for responsive images.
     */
    public static function generateSrcSet(?string $imagePath, array $sizes = []): string
    {
        if (!$imagePath) {
            return '';
        }

        if (empty($sizes)) {
            $sizes = [
                'thumbnail' => 300,
                'medium' => 600,
                'large' => 1200,
            ];
        }

        $baseWebp = self::getWebPPath($imagePath, false);
        $baseWebpUrl = $baseWebp ? self::getImageUrl($baseWebp) : null;
        $srcset = [];
        $hasSizedVariant = false;

        foreach ($sizes as $sizeName => $width) {
            $sizedImage = self::getWebPSizedImage($imagePath, $sizeName, false);
            if ($sizedImage && $sizedImage !== $baseWebp) {
                $url = self::getImageUrl($sizedImage);
                if ($url && $url !== $baseWebpUrl) {
                    $srcset[] = "{$url} {$width}w";
                    $hasSizedVariant = true;
                }
            }
        }

        if (!$hasSizedVariant) {
            return '';
        }

        if ($baseWebpUrl) {
            $srcset[] = "{$baseWebpUrl} 2000w";
        }

        return implode(', ', array_unique($srcset));
    }

    /**
     * Get picture element HTML with WebP and fallback.
     */
    public static function getPictureHtml(
        ?string $imagePath,
        string $alt = '',
        string $class = '',
        array $sizes = [],
        bool $lazy = true
    ): string {
        if (!$imagePath) {
            return '';
        }

        $webpPath = self::getWebPPath($imagePath, false);
        $webpUrl = self::getImageUrl($webpPath);
        $originalUrl = self::getImageUrl($imagePath);

        $loadingAttr = $lazy ? ' loading="lazy"' : '';

        $html = '<picture>';

        if ($webpPath && $webpPath !== $imagePath) {
            $srcset = !empty($sizes) ? self::generateSrcSet($imagePath, $sizes) : $webpUrl;
            $html .= "<source type=\"image/webp\" srcset=\"{$srcset}\">";
        }

        $html .= "<img src=\"{$originalUrl}\" alt=\"{$alt}\" class=\"{$class}\" decoding=\"async\"{$loadingAttr}>";
        $html .= '</picture>';

        return $html;
    }
}
