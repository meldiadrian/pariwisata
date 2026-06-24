<?php

namespace App\Filament\Admin\Resources\Advertisements\Pages;

use App\Filament\Admin\Resources\Advertisements\AdvertisementResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditAdvertisement extends EditRecord
{
    protected static string $resource = AdvertisementResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}
