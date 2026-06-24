<?php

namespace App\Filament\Admin\Resources\Tags\Schemas;

use Filament\Schemas\Schema;

use Filament\Forms\Components\TextInput;
use Illuminate\Support\Str;

class TagForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('name')
                    ->required()
                    ->live(onBlur: true)
                    ->afterStateUpdated(fn (string $operation, $state, $set) => $operation === 'create' ? $set('slug', Str::slug($state)) : null),
                TextInput::make('slug')
                    ->disabled()
                    ->dehydrated()
                    ->required(),
            ]);
    }
}
