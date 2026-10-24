<?php

namespace App\Filament\Admin\Resources\News\Pages;

use App\Filament\Admin\Concerns\InvalidatesFrontendCache;
use App\Filament\Admin\Resources\News\NewsResource;
use Filament\Resources\Pages\CreateRecord;

class CreateNews extends CreateRecord
{
    use InvalidatesFrontendCache;

    protected static string $resource = NewsResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getFrontendCacheKeys(): array
    {
        return [
            'news:headlines',
            'news:trending',
            'news:breaking',
            'galleries:home',
        ];
    }
}
