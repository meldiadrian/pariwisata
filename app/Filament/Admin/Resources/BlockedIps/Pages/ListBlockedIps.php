<?php

namespace App\Filament\Admin\Resources\BlockedIps\Pages;

use App\Filament\Admin\Resources\BlockedIps\BlockedIpResource;
use Filament\Resources\Pages\ListRecords;
use Filament\Actions\CreateAction;

class ListBlockedIps extends ListRecords
{
    protected static string $resource = BlockedIpResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make()->label('Blokir IP Baru'),
        ];
    }
}
