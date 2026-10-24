<?php

namespace App\Filament\Admin\Resources\BlockedIps\Pages;

use App\Filament\Admin\Resources\BlockedIps\BlockedIpResource;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Support\Facades\Auth;

class CreateBlockedIp extends CreateRecord
{
    protected static string $resource = BlockedIpResource::class;

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        $data['blocked_by'] = Auth::id();
        return $data;
    }

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
