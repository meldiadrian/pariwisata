<?php

namespace App\Filament\Admin\Resources;

use App\Filament\Admin\Resources\SliderResource\Pages;
use App\Filament\Concerns\HasWebPConversion;
use App\Services\ImageService;
use App\Models\Slider;
use Filament\Forms\Components\FileUpload;
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
                    
                FileUpload::make('image')
                    ->label('Gambar Slider')
                    ->image()
                    ->directory('sliders')
                    ->disk('public')
                    ->visibility('public')
                    ->acceptedFileTypes(['image/jpeg', 'image/png', 'image/webp'])
                    ->maxSize(15360) // 15MB
                    ->deletable(true)
                    ->reorderable(false)
                    ->openable()
                    ->downloadable()
                    ->previewable(true)
                    ->imagePreviewHeight('200')
                    ->saveUploadedFileUsing(function ($file) {
                        $imageService = app(ImageService::class);
                        
                        try {
                            $result = $imageService->convertUploadedFile(
                                $file,
                                'sliders',
                                ImageService::getQualityForType('slider'),
                                self::getSizesForType('slider')
                            );
                            
                            return $result['path'];
                        } catch (\Exception $e) {
                            \Log::error('WebP conversion failed: ' . $e->getMessage());
                            return $file->store('sliders', 'public');
                        }
                    })
                    ->deleteUploadedFileUsing(function ($file) {
                        if (!$file) return;
                        
                        if (Storage::disk('public')->exists($file)) {
                            Storage::disk('public')->delete($file);
                        }
                        
                        $sizes = self::getSizesForType('slider');
                        if (!empty($sizes)) {
                            $pathInfo = pathinfo($file);
                            foreach (array_keys($sizes) as $sizeName) {
                                $sizedPath = $pathInfo['dirname'] . '/' . $pathInfo['filename'] . '_' . $sizeName . '.webp';
                                if (Storage::disk('public')->exists($sizedPath)) {
                                    Storage::disk('public')->delete($sizedPath);
                                }
                            }
                        }
                    })
                    ->required(),

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
                    ->fillForm(fn ($record) => [
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
                        
                        FileUpload::make('image')
                            ->label('Gambar Slider')
                            ->image()
                            ->directory('sliders')
                            ->disk('public')
                            ->visibility('public')
                            ->acceptedFileTypes(['image/jpeg', 'image/png', 'image/webp'])
                            ->maxSize(15360) // 15MB
                            ->deletable(true)
                            ->openable()
                            ->downloadable()
                            ->previewable(true)
                            ->imagePreviewHeight('200')
                            ->saveUploadedFileUsing(function ($file) {
                                $imageService = app(ImageService::class);
                                
                                try {
                                    $result = $imageService->convertUploadedFile(
                                        $file,
                                        'sliders',
                                        ImageService::getQualityForType('slider'),
                                        self::getSizesForType('slider')
                                    );
                                    
                                    return $result['path'];
                                } catch (\Exception $e) {
                                    \Log::error('WebP conversion failed: ' . $e->getMessage());
                                    return $file->store('sliders', 'public');
                                }
                            })
                            ->deleteUploadedFileUsing(function ($file) {
                                if (!$file) return;
                                
                                if (Storage::disk('public')->exists($file)) {
                                    Storage::disk('public')->delete($file);
                                }
                                
                                $sizes = self::getSizesForType('slider');
                                if (!empty($sizes)) {
                                    $pathInfo = pathinfo($file);
                                    foreach (array_keys($sizes) as $sizeName) {
                                        $sizedPath = $pathInfo['dirname'] . '/' . $pathInfo['filename'] . '_' . $sizeName . '.webp';
                                        if (Storage::disk('public')->exists($sizedPath)) {
                                            Storage::disk('public')->delete($sizedPath);
                                        }
                                    }
                                }
                            })
                            ->required(),
                        
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
                    ->visible(fn ($record) => $record && $record->image)
                    ->action(function ($record) {
                        if ($record->image && Storage::disk('public')->exists($record->image)) {
                            Storage::disk('public')->delete($record->image);
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
