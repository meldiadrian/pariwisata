<?php

namespace App\Filament\Admin\Resources\Settings\Schemas;

use App\Filament\Concerns\HasWebPConversion;
use App\Services\ImageService;
use Filament\Schemas\Schema;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Section;
use Illuminate\Support\Facades\Cache;

class SettingForm
{
    use HasWebPConversion;

    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('General Information')
                    ->components([
                        TextInput::make('site_name')
                            ->required(),

                        TextInput::make('tagline')
                            ->label('Tagline / Subtitle')
                            ->placeholder('Contoh: Kabupaten Bengkalis')
                            ->helperText('Ditampilkan di bawah nama instansi pada header website.'),

                        self::makeWebPFileUpload(
                            fieldName:     'logo',
                            directory:     'settings',
                            quality:       ImageService::getQualityForType('setting'),
                            sizes:         self::getSizesForType('setting'),
                            required:      false,
                            previewHeight: '200'
                        ),

                        self::makeWebPFileUpload(
                            fieldName:     'favicon',
                            directory:     'settings',
                            quality:       ImageService::getQualityForType('setting'),
                            sizes:         [], // favicon tidak perlu responsive sizes
                            required:      false,
                            previewHeight: '100'
                        ),

                        Textarea::make('about_us')
                            ->columnSpanFull(),
                    ]),

                Section::make('🎤 Sambutan Kepala Dinas')
                    ->description('Informasi sambutan yang ditampilkan di halaman utama website.')
                    ->collapsible()
                    ->components([
                        TextInput::make('sambutan_nama_kepala')
                            ->label('Nama Kepala Dinas')
                            ->placeholder('Contoh: dr. H. Ahmad Syukri, M.Kes')
                            ->maxLength(255),

                        TextInput::make('sambutan_jabatan_kepala')
                            ->label('Jabatan')
                            ->placeholder('Contoh: Kepala Dinas Pariwisata Kab. Bengkalis')
                            ->maxLength(255),

                        self::makeWebPFileUpload(
                            fieldName:     'sambutan_foto_kepala',
                            directory:     'sambutan',
                            quality:       ImageService::getQualityForType('setting'),
                            sizes:         self::getSizesForType('setting'),
                            required:      false,
                            previewHeight: '250'
                        )->helperText('Upload foto kepala dinas (disarankan format portrait/tegak).'),

                        Textarea::make('sambutan_isi')
                            ->label('Isi Sambutan')
                            ->placeholder('Puji syukur kita panjatkan kehadirat Allah Yang Maha Kuasa...')
                            ->rows(5)
                            ->helperText('Teks sambutan yang akan ditampilkan di halaman utama (akan dipotong otomatis).')
                            ->columnSpanFull(),

                        TextInput::make('sambutan_link_selengkapnya')
                            ->label('Link "Baca Selengkapnya"')
                            ->placeholder('Contoh: /halaman/sambutan-kepala-dinas')
                            ->helperText('URL halaman detail sambutan. Kosongkan jika tidak ada halaman detail.')
                            ->columnSpanFull(),
                    ]),

                Section::make('Contact Information')
                    ->components([
                        TextInput::make('email')
                            ->email(),
                        TextInput::make('phone'),
                        Textarea::make('address')
                            ->columnSpanFull(),
                    ]),

                Section::make('Social Media')
                    ->components([
                        TextInput::make('facebook')
                            ->url(),
                        TextInput::make('instagram')
                            ->url(),
                        TextInput::make('youtube')
                            ->url(),
                    ]),

                Section::make('🛠️ Maintenance Mode')
                    ->description('Control website accessibility for public visitors')
                    ->collapsible()
                    ->collapsed()
                    ->components([
                        Toggle::make('maintenance_mode')
                            ->label('Enable Maintenance Mode')
                            ->helperText('When enabled, public visitors will see the maintenance page. Admin panel remains accessible.')
                            ->onColor('danger')
                            ->offColor('success')
                            ->afterStateUpdated(function () {
                                Cache::forget('maintenance_mode');
                                Cache::forget('maintenance_settings');
                            }),

                        TextInput::make('maintenance_title')
                            ->label('Maintenance Page Title')
                            ->placeholder('Website Under Maintenance')
                            ->maxLength(255)
                            ->default('Website Under Maintenance'),

                        Textarea::make('maintenance_message')
                            ->label('Maintenance Message')
                            ->placeholder('We are currently performing scheduled maintenance. Please check back soon.')
                            ->rows(4)
                            ->maxLength(1000)
                            ->default('We are currently performing scheduled maintenance to improve your experience. We\'ll be back shortly!')
                            ->columnSpanFull(),
                    ]),
            ]);
    }
}
