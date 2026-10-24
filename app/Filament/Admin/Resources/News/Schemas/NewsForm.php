<?php

namespace App\Filament\Admin\Resources\News\Schemas;

use App\Filament\Concerns\HasWebPConversion;
use App\Services\ImageService;
use Filament\Schemas\Schema;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Toggle;
use Filament\Forms\Components\DateTimePicker;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Components\Grid;
use Illuminate\Support\Str;

class NewsForm
{
    use HasWebPConversion;

    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('Informasi Berita')
                    ->components([
                        Grid::make(2)
                            ->components([
                                TextInput::make('title')
                                    ->required()
                                    ->live(onBlur: true)
                                    ->afterStateUpdated(fn (string $operation, $state, $set) => $operation === 'create' ? $set('slug', Str::slug($state)) : null),
                                TextInput::make('slug')
                                    ->disabled()
                                    ->dehydrated()
                                    ->required(),
                            ]),
                        Select::make('category_id')
                            ->relationship('category', 'name')
                            ->required()
                            ->searchable()
                            ->preload(),
                        Select::make('user_id')
                            ->relationship('user', 'name')
                            ->default(auth()->id())
                            ->required(),
                        Textarea::make('summary')
                            ->columnSpanFull(),
                        \App\Filament\Forms\Components\Summernote::make('content')
                            ->required()
                            ->columnSpanFull(),
                    ]),

                Section::make('Media & Status')
                    ->components([
                        self::makeWebPFileUpload(
                            fieldName:     'thumbnail',
                            directory:     'news',
                            quality:       ImageService::getQualityForType('news'),
                            sizes:         self::getSizesForType('news'),
                            required:      false,
                            previewHeight: '200'
                        ),
                        TextInput::make('video_url')
                            ->url()
                            ->label('YouTube URL'),
                        Grid::make(3)
                            ->components([
                                Toggle::make('is_breaking')
                                    ->label('Breaking News'),
                                Toggle::make('is_headline')
                                    ->label('Headline'),
                                Toggle::make('is_trending')
                                    ->label('Trending'),
                            ]),
                        Select::make('status')
                            ->options([
                                'draft'   => 'Draft',
                                'publish' => 'Publish',
                                'archive' => 'Archive',
                            ])
                            ->required()
                            ->default('draft'),
                        DateTimePicker::make('published_at'),
                    ]),

                Section::make('SEO')
                    ->components([
                        TextInput::make('seo_title'),
                        Textarea::make('seo_description'),
                        TextInput::make('seo_keyword'),
                    ])
                    ->collapsed(),
            ]);
    }
}
