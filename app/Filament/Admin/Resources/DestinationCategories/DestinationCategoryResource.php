<?php

namespace App\Filament\Admin\Resources\DestinationCategories;

use App\Filament\Admin\Resources\DestinationCategories\Pages\CreateDestinationCategory;
use App\Filament\Admin\Resources\DestinationCategories\Pages\EditDestinationCategory;
use App\Filament\Admin\Resources\DestinationCategories\Pages\ListDestinationCategories;
use App\Filament\Admin\Resources\DestinationCategories\Schemas\DestinationCategoryForm;
use App\Filament\Admin\Resources\DestinationCategories\Tables\DestinationCategoriesTable;
use App\Models\DestinationCategory;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class DestinationCategoryResource extends Resource
{
    protected static ?string $model = DestinationCategory::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedTag;

    protected static ?string $navigationLabel = 'Kategori Destinasi';

    protected static ?string $modelLabel = 'Kategori Destinasi';

    protected static ?string $pluralModelLabel = 'Kategori Destinasi';

    protected static string|\UnitEnum|null $navigationGroup = 'Wisata';

    protected static ?int $navigationSort = 1;

    public static function form(Schema $schema): Schema
    {
        return DestinationCategoryForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return DestinationCategoriesTable::configure($table);
    }

    public static function getRelations(): array
    {
        return [];
    }

    public static function getPages(): array
    {
        return [
            'index'  => ListDestinationCategories::route('/'),
            'create' => CreateDestinationCategory::route('/create'),
            'edit'   => EditDestinationCategory::route('/{record}/edit'),
        ];
    }
}
