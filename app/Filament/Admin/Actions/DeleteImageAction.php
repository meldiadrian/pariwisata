<?php

namespace App\Filament\Admin\Actions;

use Filament\Actions\Action;
use Illuminate\Support\Facades\Storage;
use Filament\Notifications\Notification;

class DeleteImageAction
{
    /**
     * Create a delete image action
     * 
     * @param string $imageColumn The column name containing the image path
     * @param string $disk The storage disk (default: public)
     * @return Action
     */
    public static function make(
        string $imageColumn = 'image',
        string $disk = 'public',
        string $buttonLabel = 'Hapus Image'
    ): Action {
        return Action::make('deleteImage_' . $imageColumn)
            ->label($buttonLabel)
            ->color('danger')
            ->icon('heroicon-o-trash')
            ->requiresConfirmation()
            ->modalHeading('Hapus Image')
            ->modalDescription('Apakah Anda yakin ingin menghapus image ini? Tindakan ini tidak dapat dibatalkan.')
            ->modalSubmitActionLabel('Ya, Hapus')
            ->modalCancelActionLabel('Batal')
            ->visible(fn ($record) => $record && !empty($record->{$imageColumn}))
            ->action(function ($record) use ($imageColumn, $disk) {
                if (empty($record->{$imageColumn})) {
                    Notification::make()
                        ->title('Error')
                        ->body('Tidak ada image untuk dihapus.')
                        ->danger()
                        ->send();
                    return;
                }

                try {
                    $imagePath = $record->{$imageColumn};
                    
                    // Delete file from storage if exists
                    if (Storage::disk($disk)->exists($imagePath)) {
                        Storage::disk($disk)->delete($imagePath);
                    }

                    // Update database - set field to null
                    $record->update([
                        $imageColumn => null,
                    ]);

                    Notification::make()
                        ->title('Berhasil')
                        ->body('Image berhasil dihapus.')
                        ->success()
                        ->send();

                } catch (\Exception $e) {
                    Notification::make()
                        ->title('Error')
                        ->body('Gagal menghapus image: ' . $e->getMessage())
                        ->danger()
                        ->send();
                    
                    \Log::error('DeleteImageAction Error', [
                        'column' => $imageColumn,
                        'record_id' => $record->id ?? null,
                        'error' => $e->getMessage()
                    ]);
                }
            });
    }
}
