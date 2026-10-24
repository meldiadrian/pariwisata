<?php

use App\Helpers\ImageHelper;

if (!function_exists('webp_url')) {
    /**
     * Get WebP URL for an image with fallback
     *
     * @param string|null $imagePath
     * @param bool $checkBrowserSupport
     * @return string|null
     */
    function webp_url(?string $imagePath, bool $checkBrowserSupport = true): ?string
    {
        return ImageHelper::getWebPUrl($imagePath, $checkBrowserSupport);
    }
}

if (!function_exists('webp_path')) {
    /**
     * Get WebP path for an image
     *
     * @param string|null $imagePath
     * @param bool $checkBrowserSupport
     * @return string|null
     */
    function webp_path(?string $imagePath, bool $checkBrowserSupport = true): ?string
    {
        return ImageHelper::getWebPPath($imagePath, $checkBrowserSupport);
    }
}

if (!function_exists('sized_image_url')) {
    /**
     * Get URL for a sized version of an image
     *
     * @param string|null $imagePath
     * @param string $size
     * @return string|null
     */
    function sized_image_url(?string $imagePath, string $size = 'medium'): ?string
    {
        $sizedPath = ImageHelper::getWebPSizedImage($imagePath, $size);
        return ImageHelper::getImageUrl($sizedPath);
    }
}

if (!function_exists('image_srcset')) {
    /**
     * Generate srcset attribute for responsive images
     *
     * @param string|null $imagePath
     * @param array $sizes
     * @return string
     */
    function image_srcset(?string $imagePath, array $sizes = []): string
    {
        return ImageHelper::generateSrcSet($imagePath, $sizes);
    }
}

if (!function_exists('picture_tag')) {
    /**
     * Generate complete picture tag with WebP and fallback
     *
     * @param string|null $imagePath
     * @param string $alt
     * @param string $class
     * @param array $sizes
     * @param bool $lazy
     * @return string
     */
    function picture_tag(
        ?string $imagePath,
        string $alt = '',
        string $class = '',
        array $sizes = [],
        bool $lazy = true
    ): string {
        return ImageHelper::getPictureHtml($imagePath, $alt, $class, $sizes, $lazy);
    }
}

if (!function_exists('browser_supports_webp')) {
    /**
     * Check if current browser supports WebP
     *
     * @return bool
     */
    function browser_supports_webp(): bool
    {
        return ImageHelper::browserSupportsWebP();
    }
}
