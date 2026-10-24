<?php

namespace App\Filament\Admin\Resources\Settings\Pages;

use App\Filament\Admin\Resources\Settings\SettingResource;
use App\Filament\Admin\Actions\DeleteImageAction;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;
use Illuminate\Support\Facades\Cache;
use Filament\Notifications\Notification;

class EditSetting extends EditRecord
{
    protected static string $resource = SettingResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteImageAction::make('logo', 'public', 'Hapus Logo'),
            DeleteImageAction::make('favicon', 'public', 'Hapus Favicon'),
            DeleteAction::make(),
        ];
    }

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
    
    protected function afterSave(): void
    {
        // Clear maintenance mode cache after saving
        Cache::forget('maintenance_mode');
        Cache::forget('maintenance_settings');

        // Clear frontend setting cache (digunakan di semua halaman)
        Cache::forget('setting:first');
        Cache::forget('categories:with_count');
        Cache::forget('news:breaking');
        
        // Update maintenance started timestamp if enabled
        if ($this->record->maintenance_mode && $this->record->isDirty('maintenance_mode')) {
            $this->record->update(['maintenance_started_at' => now()]);
        }
        
        // Show notification based on maintenance mode status
        if ($this->record->maintenance_mode) {
            Notification::make()
                ->warning()
                ->title('Maintenance Mode Enabled')
                ->body('Website is now in maintenance mode. Public visitors will see the maintenance page.')
                ->persistent()
                ->send();
        }
    }
}
