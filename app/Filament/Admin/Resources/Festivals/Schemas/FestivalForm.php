<?php

namespace App\Filament\Admin\Resources\Festivals\Schemas;

use App\Support\WebpUploadHelper;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;
use Livewire\Features\SupportFileUploads\TemporaryUploadedFile;

class FestivalForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('Informasi Festival')
                    ->components([
                        TextInput::make('title')
                            ->label('Judul Festival')
                            ->required()
                            ->maxLength(255),

                        DatePicker::make('event_date')
                            ->label('Tanggal Event')
                            ->displayFormat('d M Y'),

                        Textarea::make('description')
                            ->label('Keterangan')
                            ->rows(4)
                            ->columnSpanFull(),
                    ]),

                Section::make('Poster / Gambar')
                    ->components([
                        FileUpload::make('image')
                            ->label('Upload Poster Festival')
                            ->image()
                            ->directory('festivals')
                            ->acceptedFileTypes(['image/jpeg', 'image/png', 'image/gif', 'image/webp'])
                            ->saveUploadedFileUsing(function (TemporaryUploadedFile $file): string {
                                return WebpUploadHelper::convertAndStore($file, 'festivals');
                            })
                            ->columnSpanFull(),

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
