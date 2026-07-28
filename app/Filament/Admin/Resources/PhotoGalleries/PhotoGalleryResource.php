<?php

namespace App\Filament\Admin\Resources\PhotoGalleries;

use App\Filament\Admin\Resources\PhotoGalleries\Pages\CreatePhotoGallery;
use App\Filament\Admin\Resources\PhotoGalleries\Pages\EditPhotoGallery;
use App\Filament\Admin\Resources\PhotoGalleries\Pages\ListPhotoGalleries;
use App\Filament\Admin\Resources\PhotoGalleries\Schemas\PhotoGalleryForm;
use App\Filament\Admin\Resources\PhotoGalleries\Tables\PhotoGalleriesTable;
use App\Models\PhotoGallery;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class PhotoGalleryResource extends Resource
{
    protected static ?string $model = PhotoGallery::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedCamera;

    public static function form(Schema $schema): Schema
    {
        return PhotoGalleryForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return PhotoGalleriesTable::configure($table);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListPhotoGalleries::route('/'),
            'create' => CreatePhotoGallery::route('/create'),
            'edit' => EditPhotoGallery::route('/{record}/edit'),
        ];
    }
}
