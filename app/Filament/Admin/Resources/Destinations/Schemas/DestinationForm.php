<?php

namespace App\Filament\Admin\Resources\Destinations\Schemas;

use App\Filament\Concerns\HasWebPConversion;
use App\Models\DestinationCategory;
use App\Services\ImageService;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;
use Illuminate\Support\Str;

class DestinationForm
{
    use HasWebPConversion;

    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('Informasi Destinasi')
                    ->description('Data destinasi wisata yang akan ditampilkan di frontend')
                    ->columns(2)
                    ->components([
                        Select::make('destination_category_id')
                            ->label('Kategori')
                            ->options(
                                DestinationCategory::where('is_active', true)
                                    ->orderBy('order')
                                    ->pluck('name', 'id')
                            )
                            ->searchable()
                            ->required()
                            ->columnSpanFull(),

                        TextInput::make('name')
                            ->label('Nama Destinasi')
                            ->required()
                            ->maxLength(255)
                            ->live(onBlur: true)
                            ->afterStateUpdated(function ($state, callable $set) {
                                $set('slug', Str::slug($state));
                            })
                            ->columnSpanFull(),

                        TextInput::make('slug')
                            ->label('Slug (URL)')
                            ->required()
                            ->unique(ignoreRecord: true)
                            ->maxLength(255)
                            ->columnSpanFull(),

                        Textarea::make('description')
                            ->label('Deskripsi')
                            ->rows(4)
                            ->columnSpanFull(),

                        TextInput::make('address')
                            ->label('Alamat / Lokasi')
                            ->maxLength(255)
                            ->columnSpanFull(),
                    ]),

                Section::make('Foto Destinasi')
                    ->components([
                        self::makeWebPFileUpload(
                            fieldName:     'image',
                            directory:     'destinations',
                            quality:       ImageService::getQualityForType('destination'),
                            sizes:         self::getSizesForType('destination'),
                            required:      false,
                            previewHeight: '200'
                        )->columnSpanFull(),
                    ]),

                Section::make('Media Sosial')
                    ->description('Link media sosial untuk destinasi ini')
                    ->columns(3)
                    ->components([
                        TextInput::make('facebook_url')
                            ->label('Facebook URL')
                            ->url()
                            ->placeholder('https://facebook.com/...')
                            ->prefixIcon('heroicon-o-globe-alt'),

                        TextInput::make('instagram_url')
                            ->label('Instagram URL')
                            ->url()
                            ->placeholder('https://instagram.com/...')
                            ->prefixIcon('heroicon-o-camera'),

                        TextInput::make('youtube_url')
                            ->label('YouTube URL')
                            ->url()
                            ->placeholder('https://youtube.com/...')
                            ->prefixIcon('heroicon-o-play-circle'),
                    ]),

                Section::make('Pengaturan Tampil')
                    ->columns(2)
                    ->components([
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
