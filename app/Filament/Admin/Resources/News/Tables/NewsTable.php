<?php

namespace App\Filament\Admin\Resources\News\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ForceDeleteBulkAction;
use Filament\Actions\RestoreBulkAction;
use Filament\Tables\Filters\TrashedFilter;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\ToggleColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;

class NewsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('thumbnail')
                    ->disk('public')
                    ->visibility('public')
                    ->size(60)
                    ->square(),
                TextColumn::make('title')
                    ->searchable()
                    ->wrap(),
                TextColumn::make('category.name')
                    ->sortable(),
                TextColumn::make('user.name')
                    ->label('Penulis')
                    ->sortable(),
                ToggleColumn::make('status')
                    ->sortable(),
                IconColumn::make('is_headline')
                    ->boolean()
                    ->label('Headline'),
                IconColumn::make('is_breaking')
                    ->boolean()
                    ->label('Breaking'),
                TextColumn::make('views')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('published_at')
                    ->dateTime()
                    ->sortable(),
            ])
            ->filters([
                TrashedFilter::make(),
                SelectFilter::make('category')
                    ->relationship('category', 'name'),
                SelectFilter::make('status')
                    ->options([
                        'draft' => 'Draft',
                        'publish' => 'Publish',
                        'archive' => 'Archive',
                    ]),
            ])
            ->recordActions([
                EditAction::make(),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                    ForceDeleteBulkAction::make(),
                    RestoreBulkAction::make(),
                ]),
            ]);
    }
}
