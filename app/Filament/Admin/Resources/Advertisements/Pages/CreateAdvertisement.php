<?php

namespace App\Filament\Admin\Resources\Advertisements\Pages;

use App\Filament\Admin\Resources\Advertisements\AdvertisementResource;
use Filament\Resources\Pages\CreateRecord;

class CreateAdvertisement extends CreateRecord
{
    protected static string $resource = AdvertisementResource::class;
}
