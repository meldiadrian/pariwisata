<?php

namespace App\Filament\Admin\Resources\PhotoGalleries\Pages;

use App\Filament\Admin\Resources\PhotoGalleries\PhotoGalleryResource;
use Filament\Resources\Pages\CreateRecord;

class CreatePhotoGallery extends CreateRecord
{
    protected static string $resource = PhotoGalleryResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
