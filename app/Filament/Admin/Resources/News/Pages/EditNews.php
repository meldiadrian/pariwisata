<?php

namespace App\Filament\Admin\Resources\News\Pages;

use App\Filament\Admin\Concerns\InvalidatesFrontendCache;
use App\Filament\Admin\Resources\News\NewsResource;
use App\Filament\Admin\Actions\DeleteImageAction;
use Filament\Actions\DeleteAction;
use Filament\Actions\ForceDeleteAction;
use Filament\Actions\RestoreAction;
use Filament\Resources\Pages\EditRecord;

class EditNews extends EditRecord
{
    use InvalidatesFrontendCache;

    protected static string $resource = NewsResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteImageAction::make('thumbnail', 'public', 'Hapus Thumbnail'),
            DeleteAction::make(),
            ForceDeleteAction::make(),
            RestoreAction::make(),
        ];
    }

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getFrontendCacheKeys(): array
    {
        $slug = $this->record?->slug;
        $categoryId = $this->record?->category_id;
        $id = $this->record?->id;

        $keys = [
            'news:headlines',
            'news:trending',
            'news:breaking',
            'galleries:home',
        ];

        if ($slug) {
            $keys[] = "news:slug:{$slug}";
        }
        if ($categoryId && $id) {
            $keys[] = "news:related:{$categoryId}:{$id}";
        }

        return $keys;
    }
}
