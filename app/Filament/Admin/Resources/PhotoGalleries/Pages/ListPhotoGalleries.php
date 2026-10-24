<?php

namespace App\Filament\Admin\Resources\PhotoGalleries\Pages;

use App\Filament\Admin\Resources\PhotoGalleries\PhotoGalleryResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListPhotoGalleries extends ListRecords
{
    protected static string $resource = PhotoGalleryResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
