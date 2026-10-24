<?php

namespace App\Filament\Admin\Resources\PhotoGalleries\Pages;

use App\Filament\Admin\Resources\PhotoGalleries\PhotoGalleryResource;
use App\Filament\Admin\Actions\DeleteImageAction;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditPhotoGallery extends EditRecord
{
    protected static string $resource = PhotoGalleryResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteImageAction::make('image', 'public', 'Hapus Image'),
            DeleteAction::make(),
        ];
    }

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
