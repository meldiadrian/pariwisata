<?php

namespace App\Models\Concerns;

use App\Services\ContentImageService;

trait ConvertsBase64ContentImages
{
    /**
     * Automatically convert any inline base64 images inside the model's `content`
     * attribute to optimized WebP files before persisting to the database.
     */
    protected static function bootConvertsBase64ContentImages(): void
    {
        static::saving(function ($model): void {
            if (!empty($model->content) && str_contains($model->content, 'data:image')) {
                $model->content = app(ContentImageService::class)->convertBase64ImagesInHtml($model->content);
            }
        });
    }
}

