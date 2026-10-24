<?php

namespace App\Filament\Admin\Resources\Pages\Schemas;

use Filament\Schemas\Schema;

use Filament\Forms\Components\TextInput;

use Filament\Schemas\Components\Section;
use Illuminate\Support\Str;

class PageForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('title')
                    ->required()
                    ->live(onBlur: true)
                    ->afterStateUpdated(fn (string $operation, $state, $set) => $operation === 'create' ? $set('slug', Str::slug($state)) : null),
                TextInput::make('slug')
                    ->disabled()
                    ->dehydrated()
                    ->required(),
                \App\Filament\Forms\Components\Summernote::make('content')
                    ->required()
                    ->columnSpanFull(),
                Section::make('SEO')
                    ->components([
                        TextInput::make('seo_title'),
                        TextInput::make('seo_description'),
                        TextInput::make('seo_keyword'),
                    ])
                    ->collapsed(),
            ]);
    }
}
