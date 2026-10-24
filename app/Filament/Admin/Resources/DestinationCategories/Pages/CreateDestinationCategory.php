<?php

namespace App\Filament\Admin\Resources\DestinationCategories\Pages;

use App\Filament\Admin\Resources\DestinationCategories\DestinationCategoryResource;
use Filament\Resources\Pages\CreateRecord;

class CreateDestinationCategory extends CreateRecord
{
    protected static string $resource = DestinationCategoryResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
