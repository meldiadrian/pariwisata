<?php

namespace App\Filament\Admin\Resources\Destinations\Schemas;

use App\Models\DestinationCategory;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;
use Illuminate\Support\Str;

class DestinationForm
{
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
                        FileUpload::make('image')
                            ->label('Upload Foto Destinasi')
                            ->image()
                            ->directory('destinations')
                            ->disk('public')
                            ->visibility('public')
                            ->acceptedFileTypes(['image/jpeg', 'image/png', 'image/gif', 'image/webp'])
                            ->maxSize(15360) // 15MB
                            ->deletable(true)
                            ->reorderable(false)
                            ->openable()
                            ->downloadable()
                            ->previewable(true)
                            ->imagePreviewHeight('200')
                            ->deleteUploadedFileUsing(function ($file) {
                                if (\Illuminate\Support\Facades\Storage::disk('public')->exists($file)) {
                                    \Illuminate\Support\Facades\Storage::disk('public')->delete($file);
                                }
                            })
                            ->columnSpanFull(),
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
