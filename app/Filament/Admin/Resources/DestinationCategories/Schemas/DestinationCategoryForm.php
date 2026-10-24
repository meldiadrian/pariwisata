<?php

namespace App\Filament\Admin\Resources\DestinationCategories\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;
use Illuminate\Support\Str;

class DestinationCategoryForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('Informasi Kategori')
                    ->description('Kategori ini akan tampil sebagai menu ikon di halaman utama')
                    ->components([
                        TextInput::make('name')
                            ->label('Nama Kategori')
                            ->required()
                            ->maxLength(100)
                            ->live(onBlur: true)
                            ->afterStateUpdated(function ($state, callable $set) {
                                $set('slug', Str::slug($state));
                            }),

                        TextInput::make('slug')
                            ->label('Slug (URL)')
                            ->required()
                            ->unique(ignoreRecord: true)
                            ->maxLength(100),

                        TextInput::make('icon_class')
                            ->label('Kelas Ikon Font Awesome')
                            ->placeholder('contoh: fas fa-map-marked-alt')
                            ->helperText('Kunjungi fontawesome.com untuk daftar ikon tersedia')
                            ->required()
                            ->maxLength(100),

                        TextInput::make('order')
                            ->label('Urutan Tampil')
                            ->numeric()
                            ->default(0),

                        Toggle::make('is_active')
                            ->label('Tampilkan di Frontend')
                            ->default(true),
                    ]),
            ]);
    }
}
