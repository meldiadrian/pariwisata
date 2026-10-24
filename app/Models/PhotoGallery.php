<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class PhotoGallery extends Model
{
    /** @use HasFactory<\Database\Factories\PhotoGalleryFactory> */
    use HasFactory;

    protected $guarded = [];

    /**
     * Get the URL for the image
     */
    public function getImageUrlAttribute(): ?string
    {
        if (!$this->image) {
            return null;
        }

        return Storage::disk('public')->url($this->image);
    }
}
