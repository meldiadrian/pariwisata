<?php

namespace App\Filament\Admin\Resources\Festivals\Pages;

use App\Filament\Admin\Resources\Festivals\FestivalResource;
use App\Filament\Admin\Actions\DeleteImageAction;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditFestival extends EditRecord
{
    protected static string $resource = FestivalResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteImageAction::make('image', 'public', 'Hapus Poster'),
            DeleteAction::make(),
        ];
    }

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
