<?php

namespace App\Filament\Admin\Pages;

use Filament\Pages\Page;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use App\Models\Setting;
use App\Models\Page as PageModel;
use App\Models\Category;
use Filament\Notifications\Notification;

use Filament\Forms\Contracts\HasForms;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Schemas\Schema;

class MainMenu extends Page implements HasForms
{
    use InteractsWithForms;

    protected static string | \BackedEnum | null $navigationIcon = 'heroicon-o-bars-3';

    protected static ?string $navigationLabel = 'Main Menu';

    protected static ?string $title = 'Main Menu';

    protected static ?int $navigationSort = 1;

    protected string $view = 'filament.admin.pages.main-menu';

    public ?array $data = [];

    public function mount(): void
    {
        $setting = Setting::first();
        $this->form->fill([
            'main_menu' => $setting?->main_menu ?? [],
        ]);
    }

    public function form(Schema $form): Schema
    {
        return $form
            ->schema([
                Repeater::make('main_menu')
                    ->label('Daftar Menu Utama')
                    ->schema([
                        TextInput::make('label')
                            ->label('Label Menu')
                            ->required(),

                        Select::make('type')
                            ->label('Tipe Tautan')
                            ->options([
                                'page'     => 'Halaman (Page)',
                                'category' => 'Kategori Berita',
                                'festival' => 'Festival',
                                'url'      => 'Custom URL',
                            ])
                            ->required()
                            ->reactive(),

                        Select::make('page_id')
                            ->label('Pilih Halaman')
                            ->options(PageModel::pluck('title', 'id'))
                            ->visible(fn ($get) => $get('type') === 'page')
                            ->required(fn ($get) => $get('type') === 'page'),

                        Select::make('category_id')
                            ->label('Pilih Kategori')
                            ->options(Category::pluck('name', 'id'))
                            ->visible(fn ($get) => $get('type') === 'category')
                            ->required(fn ($get) => $get('type') === 'category'),

                        TextInput::make('url')
                            ->label('URL Tujuan')
                            ->visible(fn ($get) => $get('type') === 'url')
                            ->required(fn ($get) => $get('type') === 'url')
                            ->url(),

                        // ── Level 2: Sub Menu ──────────────────────────────────
                        Repeater::make('children')
                            ->label('Sub Menu (Level 2)')
                            ->schema([
                                TextInput::make('label')
                                    ->label('Label Sub Menu')
                                    ->required(),

                                Select::make('type')
                                    ->label('Tipe Tautan')
                                    ->options([
                                        'page'     => 'Halaman (Page)',
                                        'category' => 'Kategori Berita',
                                        'festival' => 'Festival',
                                        'url'      => 'Custom URL',
                                    ])
                                    ->required()
                                    ->reactive(),

                                Select::make('page_id')
                                    ->label('Pilih Halaman')
                                    ->options(PageModel::pluck('title', 'id'))
                                    ->visible(fn ($get) => $get('type') === 'page')
                                    ->required(fn ($get) => $get('type') === 'page'),

                                Select::make('category_id')
                                    ->label('Pilih Kategori')
                                    ->options(Category::pluck('name', 'id'))
                                    ->visible(fn ($get) => $get('type') === 'category')
                                    ->required(fn ($get) => $get('type') === 'category'),

                                TextInput::make('url')
                                    ->label('URL Tujuan')
                                    ->visible(fn ($get) => $get('type') === 'url')
                                    ->required(fn ($get) => $get('type') === 'url')
                                    ->url(),

                                // ── Level 3: Sub-Sub Menu ──────────────────────
                                Repeater::make('children')
                                    ->label('Sub-Sub Menu (Level 3)')
                                    ->schema([
                                        TextInput::make('label')
                                            ->label('Label Sub-Sub Menu')
                                            ->required(),

                                        Select::make('type')
                                            ->label('Tipe Tautan')
                                            ->options([
                                                'page'     => 'Halaman (Page)',
                                                'category' => 'Kategori Berita',
                                                'festival' => 'Festival',
                                                'url'      => 'Custom URL',
                                            ])
                                            ->required()
                                            ->reactive(),

                                        Select::make('page_id')
                                            ->label('Pilih Halaman')
                                            ->options(PageModel::pluck('title', 'id'))
                                            ->visible(fn ($get) => $get('type') === 'page')
                                            ->required(fn ($get) => $get('type') === 'page'),

                                        Select::make('category_id')
                                            ->label('Pilih Kategori')
                                            ->options(Category::pluck('name', 'id'))
                                            ->visible(fn ($get) => $get('type') === 'category')
                                            ->required(fn ($get) => $get('type') === 'category'),

                                        TextInput::make('url')
                                            ->label('URL Tujuan')
                                            ->visible(fn ($get) => $get('type') === 'url')
                                            ->required(fn ($get) => $get('type') === 'url')
                                            ->url(),
                                    ])
                                    ->itemLabel(fn (array $state): ?string => $state['label'] ?? null)
                                    ->reorderableWithButtons()
                                    ->collapsible()
                                    ->collapsed()
                                    ->addActionLabel('+ Tambah Sub-Sub Menu')
                                    ->defaultItems(0),
                                // ───────────────────────────────────────────────
                            ])
                            ->itemLabel(fn (array $state): ?string => $state['label'] ?? null)
                            ->reorderableWithButtons()
                            ->collapsible()
                            ->collapsed()
                            ->addActionLabel('+ Tambah Sub Menu')
                            ->defaultItems(0),
                        // ────────────────────────────────────────────────────────
                    ])
                    ->itemLabel(fn (array $state): ?string => $state['label'] ?? null)
                    ->reorderableWithButtons()
                    ->collapsible()
                    ->addActionLabel('+ Tambah Menu Utama')
                    ->defaultItems(0),
            ])
            ->statePath('data');
    }

    public function save(): void
    {
        $data = $this->form->getState();
        $setting = Setting::first() ?? new Setting();
        $setting->main_menu = $data['main_menu'] ?? [];
        $setting->save();

        Notification::make()
            ->title('Menu berhasil disimpan')
            ->success()
            ->send();
    }
}
