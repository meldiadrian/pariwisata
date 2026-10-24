<?php

namespace App\Filament\Admin\Resources;

use App\Filament\Admin\Resources\SliderResource\Pages;
use App\Filament\Concerns\HasWebPConversion;
use App\Services\ImageService;
use App\Models\Slider;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Table;
use Filament\Actions\Action;
use Filament\Actions\DeleteAction;
use Filament\Support\Icons\Heroicon;
use Illuminate\Support\Facades\Storage;
use Filament\Notifications\Notification;

class SliderResource extends Resource
{
    use HasWebPConversion;

    protected static ?string $model = Slider::class;

    protected static string|\BackedEnum|null $navigationIcon = Heroicon::OutlinedPhoto;

    protected static ?string $navigationLabel = 'Banners / Sliders';
    protected static string|\UnitEnum|null $navigationGroup = 'Konten';
    protected static ?int $navigationSort = 6;

    /**
     * Shared slider FileUpload — WebP conversion + deduplication, defined once.
     * Reused in both the resource form and the inline edit modal.
     */
    private static function sliderImageUpload(): \Filament\Forms\Components\FileUpload
    {
        return self::makeWebPFileUpload(
            fieldName: 'image',
            directory: 'sliders',
            quality: ImageService::getQualityForType('slider'),
            sizes: self::getSizesForType('slider'),
            required: true,
            previewHeight: '200'
        )->label('Gambar Slider');
    }

    public static function form(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('title')
                    ->label('Judul / Keterangan')
                    ->maxLength(255),

                TextInput::make('url')
                    ->label('Link URL')
                    ->url()
                    ->maxLength(255),

                static::sliderImageUpload(),

                TextInput::make('order')
                    ->label('Urutan')
                    ->numeric()
                    ->default(0),

                Toggle::make('is_active')
                    ->label('Aktif')
                    ->default(true),
            ])
            ->columns(1);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('image')
                    ->label('Gambar')
                    ->size(100)
                    ->square(),
                TextColumn::make('title')
                    ->label('Judul')
                    ->searchable(),
                TextColumn::make('url')
                    ->label('Tautan')
                    ->limit(30),
                TextColumn::make('order')
                    ->label('Urutan')
                    ->sortable(),
                IconColumn::make('is_active')
                    ->label('Aktif')
                    ->boolean(),
            ])
            ->defaultSort('order')
            ->actions([
                Action::make('edit')
                    ->label('Edit')
                    ->icon('heroicon-o-pencil')
                    ->modalHeading('Edit Slider')
                    ->modalSubmitActionLabel('Simpan')
                    ->modalCancelActionLabel('Batal')
                    ->fillForm(fn($record) => [
                        'title' => $record->title,
                        'url' => $record->url,
                        'image' => $record->image,
                        'order' => $record->order,
                        'is_active' => $record->is_active,
                    ])
                    ->form([
                        TextInput::make('title')
                            ->label('Judul / Keterangan')
                            ->maxLength(255),

                        TextInput::make('url')
                            ->label('Link URL')
                            ->url()
                            ->maxLength(255),

                        // Reuse the same configured upload — no duplication
                        static::sliderImageUpload(),

                        TextInput::make('order')
                            ->label('Urutan')
                            ->numeric()
                            ->default(0),

                        Toggle::make('is_active')
                            ->label('Aktif')
                            ->default(true),
                    ])
                    ->action(function ($record, array $data) {
                        $record->update($data);
                        Notification::make()
                            ->title('Berhasil')
                            ->body('Slider berhasil diperbarui.')
                            ->success()
                            ->send();
                    }),

                Action::make('deleteImage')
                    ->label('Hapus Image')
                    ->color('danger')
                    ->icon('heroicon-o-trash')
                    ->requiresConfirmation()
                    ->modalHeading('Hapus Image')
                    ->modalDescription('Apakah Anda yakin ingin menghapus image slider ini?')
                    ->modalSubmitActionLabel('Ya, Hapus')
                    ->modalCancelActionLabel('Batal')
                    ->visible(fn($record) => $record && $record->image)
                    ->action(function ($record) {
                        if ($record->image && Storage::disk('public')->exists($record->image)) {
                            Storage::disk('public')->delete($record->image);
                        }

                        // Also clean up sized variants
                        $sizes = self::getSizesForType('slider');
                        if (!empty($sizes)) {
                            $pathInfo = pathinfo($record->image ?? '');
                            foreach (array_keys($sizes) as $sizeName) {
                                $sizedPath = ($pathInfo['dirname'] ?? '') . '/' . ($pathInfo['filename'] ?? '') . '_' . $sizeName . '.webp';
                                if (Storage::disk('public')->exists($sizedPath)) {
                                    Storage::disk('public')->delete($sizedPath);
                                }
                            }
                        }

                        // Free hash-map slot
                        if ($record->image) {
                            app(ImageService::class)->removeFromHashMap('sliders', $record->image);
                        }

                        $record->update(['image' => null]);
                        Notification::make()
                            ->title('Berhasil')
                            ->body('Image slider berhasil dihapus.')
                            ->success()
                            ->send();
                    }),

                DeleteAction::make()
                    ->label('Hapus')
                    ->action(function ($record) {
                        if ($record->image && Storage::disk('public')->exists($record->image)) {
                            Storage::disk('public')->delete($record->image);
                        }

                        // Clean up sized variants and hash map
                        $sizes = self::getSizesForType('slider');
                        if (!empty($sizes) && $record->image) {
                            $pathInfo = pathinfo($record->image);
                            foreach (array_keys($sizes) as $sizeName) {
                                $sizedPath = $pathInfo['dirname'] . '/' . $pathInfo['filename'] . '_' . $sizeName . '.webp';
                                if (Storage::disk('public')->exists($sizedPath)) {
                                    Storage::disk('public')->delete($sizedPath);
                                }
                            }
                            app(ImageService::class)->removeFromHashMap('sliders', $record->image);
                        }

                        $record->delete();
                        Notification::make()
                            ->title('Berhasil')
                            ->body('Slider berhasil dihapus.')
                            ->success()
                            ->send();
                    }),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ManageSliders::route('/'),
        ];
    }
}
