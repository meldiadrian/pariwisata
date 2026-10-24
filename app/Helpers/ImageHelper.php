<?php

namespace App\Helpers;

use Illuminate\Support\Facades\Storage;

class ImageHelper
{
    /**
     * Get WebP version of image path if it exists and browser supports it
     *
     * @param string|null $imagePath
     * @param bool $checkBrowserSupport
     * @return string|null
     */
    public static function getWebPPath(?string $imagePath, bool $checkBrowserSupport = true): ?string
    {
        if (!$imagePath) {
            return null;
        }

        // If browser doesn't support WebP, return original
        if ($checkBrowserSupport && !self::browserSupportsWebP()) {
            return $imagePath;
        }

        $pathInfo = pathinfo($imagePath);
        
        // If already WebP, return as is
        if (isset($pathInfo['extension']) && strtolower($pathInfo['extension']) === 'webp') {
            return $imagePath;
        }

        // Check if WebP version exists
        $webpPath = $pathInfo['dirname'] . '/' . $pathInfo['filename'] . '.webp';
        
        if (Storage::disk('public')->exists($webpPath)) {
            return $webpPath;
        }

        // Return original if WebP doesn't exist
        return $imagePath;
    }

    /**
     * Get sized version of image
     *
     * @param string|null $imagePath
     * @param string $size (thumbnail, small, medium, large, xlarge)
     * @return string|null
     */
    public static function getSizedImage(?string $imagePath, string $size = 'medium'): ?string
    {
        if (!$imagePath) {
            return null;
        }

        $pathInfo = pathinfo($imagePath);
        $sizedPath = $pathInfo['dirname'] . '/' . $pathInfo['filename'] . '_' . $size . '.' . $pathInfo['extension'];

        if (Storage::disk('public')->exists($sizedPath)) {
            return $sizedPath;
        }

        // Return original if sized version doesn't exist
        return $imagePath;
    }

    /**
     * Get WebP sized version of image
     *
     * @param string|null $imagePath
     * @param string $size
     * @param bool $checkBrowserSupport
     * @return string|null
     */
    public static function getWebPSizedImage(?string $imagePath, string $size = 'medium', bool $checkBrowserSupport = true): ?string
    {
        if (!$imagePath) {
            return null;
        }

        if ($checkBrowserSupport && !self::browserSupportsWebP()) {
            return self::getSizedImage($imagePath, $size);
        }

        $pathInfo = pathinfo($imagePath);
        $webpSizedPath = $pathInfo['dirname'] . '/' . $pathInfo['filename'] . '_' . $size . '.webp';

        if (Storage::disk('public')->exists($webpSizedPath)) {
            return $webpSizedPath;
        }

        // Fallback to regular WebP
        return self::getWebPPath($imagePath, false);
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
     * Get full URL for image path
     *
     * @param string|null $imagePath
     * @return string|null
     */
    public static function getImageUrl(?string $imagePath): ?string
    {
        if (!$imagePath) {
            return null;
        }

        // If already a full URL, return as is
        if (str_starts_with($imagePath, 'http://') || str_starts_with($imagePath, 'https://')) {
            return $imagePath;
        }

        return Storage::disk('public')->url($imagePath);
    }

    /**
     * Get WebP URL with fallback
     *
     * @param string|null $imagePath
     * @param bool $checkBrowserSupport
     * @return string|null
     */
    public static function getWebPUrl(?string $imagePath, bool $checkBrowserSupport = true): ?string
    {
        $path = self::getWebPPath($imagePath, $checkBrowserSupport);
        return self::getImageUrl($path);
    }

    /**
     * Generate srcset for responsive images
     *
     * @param string|null $imagePath
     * @param array $sizes ['thumbnail' => 150, 'medium' => 600, 'large' => 1200]
     * @return string
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

        $srcset = [];
        
        foreach ($sizes as $sizeName => $width) {
            $sizedImage = self::getWebPSizedImage($imagePath, $sizeName);
            if ($sizedImage) {
                $url = self::getImageUrl($sizedImage);
                $srcset[] = "{$url} {$width}w";
            }
        }

        // Add original image
        $originalUrl = self::getWebPUrl($imagePath);
        if ($originalUrl) {
            $srcset[] = "{$originalUrl} 2000w";
        }

        return implode(', ', $srcset);
    }

    /**
     * Get picture element HTML with WebP and fallback
     *
     * @param string|null $imagePath
     * @param string $alt
     * @param string $class
     * @param array $sizes
     * @param bool $lazy
     * @return string
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
        
        // WebP source with srcset if available
        if ($webpPath && $webpPath !== $imagePath) {
            $srcset = !empty($sizes) ? self::generateSrcSet($imagePath, $sizes) : $webpUrl;
            $html .= "<source type=\"image/webp\" srcset=\"{$srcset}\">";
        }
        
        // Fallback img tag
        $html .= "<img src=\"{$originalUrl}\" alt=\"{$alt}\" class=\"{$class}\"{$loadingAttr}>";
        $html .= '</picture>';
        
        return $html;
    }
}
