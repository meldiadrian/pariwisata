<?php

namespace App\Services;

use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;

class ContentImageService
{
    protected ImageManager $manager;

    public function __construct()
    {
        $this->manager = new ImageManager(new Driver());
    }

    /**
     * Extract inline base64 images from HTML content, convert them to resized WebP
     * files on the public disk, and replace the data URIs with /storage/... URLs.
     *
     * @return array{html: string, replaced: int, bytes_saved: int, files: list<string>}
     */
    public function extractBase64Images(
        ?string $html,
        string $directory = 'content-images',
        int $maxWidth = 1200,
        int $quality = 82
    ): array {
        if ($html === null || $html === '' || !str_contains($html, 'data:image')) {
            return [
                'html' => (string) $html,
                'replaced' => 0,
                'bytes_saved' => 0,
                'files' => [],
            ];
        }

        $replaced = 0;
        $bytesSaved = 0;
        $files = [];

        $pattern = '/(<img\b[^>]*?\bsrc\s*=\s*)(["\']?)(data:image\/([a-zA-Z0-9+.-]+);base64,([A-Za-z0-9+\/=\s]+))\2/i';

        $updatedHtml = preg_replace_callback($pattern, function (array $matches) use (
            $directory,
            $maxWidth,
            $quality,
            &$replaced,
            &$bytesSaved,
            &$files
        ) {
            $prefix = $matches[1];
            $quote = $matches[2] !== '' ? $matches[2] : '"';
            $fullDataUri = $matches[3];
            $mimeSubtype = strtolower($matches[4]);
            $base64Payload = preg_replace('/\s+/', '', $matches[5]);

            if ($mimeSubtype === 'svg+xml') {
                return $matches[0];
            }

            $binary = base64_decode($base64Payload, true);
            if ($binary === false || $binary === '') {
                return $matches[0];
            }

            $relativePath = $this->storeBinaryAsWebP($binary, $directory, $maxWidth, $quality);
            if ($relativePath === null) {
                return $matches[0];
            }

            $replaced++;
            $bytesSaved += strlen($fullDataUri);
            $files[] = $relativePath;

            return $prefix . $quote . '/storage/' . $relativePath . $quote;
        }, $html);

        return [
            'html' => $updatedHtml ?? $html,
            'replaced' => $replaced,
            'bytes_saved' => $bytesSaved,
            'files' => array_values(array_unique($files)),
        ];
    }

    /**
     * Convenience helper returning only the converted HTML string.
     */
    public function convertBase64ImagesInHtml(
        ?string $html,
        string $directory = 'content-images',
        int $maxWidth = 1200,
        int $quality = 82
    ): ?string {
        if ($html === null) {
            return null;
        }

        return $this->extractBase64Images($html, $directory, $maxWidth, $quality)['html'];
    }

    /**
     * Persist an uploaded editor image as an optimized WebP file and return its public URL path.
     */
    public function saveUploadedImage(
        UploadedFile $file,
        string $directory = 'content-images',
        int $maxWidth = 1200,
        int $quality = 82
    ): string {
        $binary = File::get($file->getRealPath());
        $relativePath = $this->storeBinaryAsWebP($binary, $directory, $maxWidth, $quality);

        if ($relativePath === null) {
            throw new \RuntimeException('Gagal memproses file gambar menjadi WebP.');
        }

        return '/storage/' . $relativePath;
    }

    /**
     * Add loading="lazy" and decoding="async" to <img> tags inside rich HTML content
     * while avoiding duplicate attributes.
     */
    public function optimizeHtmlImages(?string $html): ?string
    {
        if ($html === null || $html === '' || stripos($html, '<img') === false) {
            return $html;
        }

        return preg_replace_callback('/<img\b([^>]*)>/i', function (array $matches) {
            $attrs = $matches[1];

            if (!preg_match('/\bloading\s*=/i', $attrs)) {
                $attrs .= ' loading="lazy"';
            }
            if (!preg_match('/\bdecoding\s*=/i', $attrs)) {
                $attrs .= ' decoding="async"';
            }

            return '<img' . $attrs . '>';
        }, $html) ?? $html;
    }

    /**
     * Mirror a storage-relative file into public/storage when public/storage is a real
     * directory (not a symlink to storage/app/public).
     */
    public function mirrorToPublicStorage(string $relativePath): void
    {
        $relativePath = ltrim($relativePath, '/');
        $publicStorageDir = public_path('storage');

        if (!is_dir($publicStorageDir)) {
            return;
        }

        $appPublicReal = realpath(storage_path('app/public'));
        $publicStorageReal = realpath($publicStorageDir);

        if ($appPublicReal !== false && $publicStorageReal === $appPublicReal) {
            return;
        }

        $sourcePath = Storage::disk('public')->path($relativePath);
        if (!File::exists($sourcePath)) {
            return;
        }

        $targetPath = $publicStorageDir . DIRECTORY_SEPARATOR . str_replace('/', DIRECTORY_SEPARATOR, $relativePath);
        File::ensureDirectoryExists(dirname($targetPath));
        File::copy($sourcePath, $targetPath);
    }

    /**
     * Generate a WebP version (and optional resized variants) for an existing file in
     * storage/app/public or public/storage.
     *
     * @param array<string, int> $sizes
     */
    public function ensureWebPVariants(string $relativePath, array $sizes = [], int $quality = 85): bool
    {
        $relativePath = ltrim($relativePath, '/');
        $disk = Storage::disk('public');

        $sourcePath = null;
        if ($disk->exists($relativePath)) {
            $sourcePath = $disk->path($relativePath);
        } else {
            $publicFallback = public_path('storage/' . $relativePath);
            if (File::exists($publicFallback)) {
                $sourcePath = $publicFallback;
            }
        }

        if ($sourcePath === null || !function_exists('imagewebp')) {
            return false;
        }

        $pathInfo = pathinfo($relativePath);
        $dirPrefix = ($pathInfo['dirname'] ?? '.') !== '.' ? $pathInfo['dirname'] . '/' : '';
        $filename = $pathInfo['filename'];

        $image = $this->manager->read($sourcePath);
        $baseWebpRelative = $dirPrefix . $filename . '.webp';

        if (!$disk->exists($baseWebpRelative)) {
            $encoded = (clone $image)->toWebp($quality);
            $disk->put($baseWebpRelative, (string) $encoded);
        }
        $this->mirrorToPublicStorage($baseWebpRelative);

        foreach ($sizes as $sizeName => $maxWidth) {
            if ($image->width() <= $maxWidth) {
                continue;
            }

            $sizedRelative = $dirPrefix . $filename . '_' . $sizeName . '.webp';
            if (!$disk->exists($sizedRelative)) {
                $sizedImage = (clone $image)->scaleDown(width: $maxWidth);
                $disk->put($sizedRelative, (string) $sizedImage->toWebp($quality));
            }
            $this->mirrorToPublicStorage($sizedRelative);
        }

        return true;
    }

    /**
     * Decode binary image bytes, resize down to maxWidth, encode as WebP, deduplicate by sha1,
     * and store on the public disk.
     */
    protected function storeBinaryAsWebP(
        string $binary,
        string $directory,
        int $maxWidth,
        int $quality
    ): ?string {
        if (!function_exists('imagewebp')) {
            Log::error('WebP conversion unavailable: imagewebp() function missing.');
            return null;
        }

        $directory = trim($directory, '/');
        $hash = sha1($binary);
        $relativePath = $directory . '/' . $hash . '.webp';
        $disk = Storage::disk('public');

        if ($disk->exists($relativePath)) {
            $this->mirrorToPublicStorage($relativePath);
            return $relativePath;
        }

        try {
            $image = $this->manager->read($binary);
            if ($maxWidth > 0 && $image->width() > $maxWidth) {
                $image->scaleDown(width: $maxWidth);
            }

            $encoded = $image->toWebp($quality);
            $disk->put($relativePath, (string) $encoded);
            $this->mirrorToPublicStorage($relativePath);

            return $relativePath;
        } catch (\Throwable $e) {
            Log::warning('ContentImageService failed to convert image to WebP', [
                'error' => $e->getMessage(),
                'bytes' => strlen($binary),
            ]);
            return null;
        }
    }
}
