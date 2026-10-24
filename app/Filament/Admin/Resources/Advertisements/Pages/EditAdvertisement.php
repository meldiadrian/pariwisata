<?php

namespace App\Filament\Admin\Resources\Advertisements\Pages;

use App\Filament\Admin\Resources\Advertisements\AdvertisementResource;
use App\Filament\Admin\Actions\DeleteImageAction;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditAdvertisement extends EditRecord
{
    protected static string $resource = AdvertisementResource::class;

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
