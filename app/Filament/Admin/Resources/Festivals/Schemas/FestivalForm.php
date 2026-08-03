<?php

namespace App\Filament\Admin\Resources\Festivals\Schemas;

use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

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
