<?php

namespace App\Support;

use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Livewire\Features\SupportFileUploads\TemporaryUploadedFile;

class WebpUploadHelper
{
    /**
     * Konversi file upload ke format WebP dan simpan ke storage.
     *
     * @param  TemporaryUploadedFile  $file      File dari Filament FileUpload
     * @param  string                 $directory Direktori tujuan di storage/app/public
     * @param  int                    $quality   Kualitas WebP (0-100), default 85
     * @return string                            Path relatif file yang disimpan
     */
    public static function convertAndStore(
        TemporaryUploadedFile $file,
        string $directory,
        int $quality = 85
    ): string {
        $manager = new ImageManager(new Driver());

        $image = $manager->read($file->getRealPath());

        $filename = Str::uuid() . '.webp';
        $path     = $directory . '/' . $filename;
        $encoded  = $image->toWebp($quality);

        Storage::disk('public')->put($path, $encoded->toString());

        return $path;
    }
}
