<?php

namespace App\Providers\Filament;

use Filament\Http\Middleware\Authenticate;
use Filament\Http\Middleware\AuthenticateSession;
use Filament\Http\Middleware\DisableBladeIconComponents;
use Filament\Http\Middleware\DispatchServingFilamentEvent;
use Filament\Pages\Dashboard;
use Filament\Panel;
use Filament\PanelProvider;
use Filament\Support\Colors\Color;
use Filament\Widgets\AccountWidget;
use Filament\Widgets\FilamentInfoWidget;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use Illuminate\Cookie\Middleware\EncryptCookies;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Routing\Middleware\SubstituteBindings;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\View\Middleware\ShareErrorsFromSession;
use App\Filament\Admin\Pages\Auth\Login;

use Filament\View\PanelsRenderHook;
use Jeffgreco13\FilamentBreezy\BreezyCore;
use Leandrocfe\FilamentApexCharts\FilamentApexChartsPlugin;

class AdminPanelProvider extends PanelProvider
{
    public function panel(Panel $panel): Panel
    {
        return $panel
            ->default()
            ->id('admin')
            ->path('bermasa')
            ->login(Login::class)
            ->brandName('PARIWISATA BENGKALIS')
            ->colors([
                'primary' => Color::Amber,
            ])
            ->plugins([
                BreezyCore::make()
                    ->myProfile(
                        shouldRegisterUserMenu: true,
                        shouldRegisterNavigation: false,
                        hasAvatars: true,
                    ),
                FilamentApexChartsPlugin::make(),
                \BezhanSalleh\FilamentShield\FilamentShieldPlugin::make(),
            ])
            ->discoverResources(in: app_path('Filament/Admin/Resources'), for: 'App\Filament\Admin\Resources')
            ->discoverPages(in: app_path('Filament/Admin/Pages'), for: 'App\Filament\Admin\Pages')
            ->pages([
                Dashboard::class,
            ])
            // ->navigationItems([
            //     \Filament\Navigation\NavigationItem::make('Log Viewer')
            //         ->url(fn (): string => url('log-viewer'))
            //         ->icon('heroicon-o-document-text')
            //         ->group('System')
            //         ->sort(100),
            // ])
            ->discoverWidgets(in: app_path('Filament/Admin/Widgets'), for: 'App\Filament\Admin\Widgets')
            // ->widgets([
            //     AccountWidget::class,
            //     FilamentInfoWidget::class,
            // ])
            ->renderHook(
                PanelsRenderHook::HEAD_END,
                fn(): string => '
                    <style>
                                                
                        /* Jadikan warna teks menu menjadi biru saat disorot */
                        aside.fi-sidebar .fi-sidebar-item-button:hover,
                        aside.fi-sidebar .fi-sidebar-item-button:hover span,
                        aside.fi-sidebar .fi-sidebar-item-button:hover svg,
                        aside.fi-sidebar a:hover,
                        aside.fi-sidebar a:hover span,
                        aside.fi-sidebar a:hover svg {
                            color: #2563eb !important; /* blue-600 */
                            transition: color 0.2s ease !important;
                        }
                    </style>
                '
            )
            ->middleware([
                EncryptCookies::class,
                AddQueuedCookiesToResponse::class,
                StartSession::class,
                AuthenticateSession::class,
                ShareErrorsFromSession::class,
                VerifyCsrfToken::class,
                SubstituteBindings::class,
                DisableBladeIconComponents::class,
                DispatchServingFilamentEvent::class,
            ])
            ->authMiddleware([
                Authenticate::class,
            ])
            ->renderHook(
                PanelsRenderHook::HEAD_END,
                fn(): string => '
                    <style>
                        /* Gradasi ungu dan putih untuk halaman admin */
                        body, .fi-layout {
                            background: linear-gradient(135deg, #ffffff 0%, #f3e8ff 50%, #e9d5ff 100%) !important;
                            background-attachment: fixed !important;
                        }
                        
                        /* Jadikan warna teks menu menjadi biru saat disorot */
                        aside.fi-sidebar .fi-sidebar-item-button:hover,
                        aside.fi-sidebar .fi-sidebar-item-button:hover span,
                        aside.fi-sidebar .fi-sidebar-item-button:hover svg,
                        aside.fi-sidebar a:hover,
                        aside.fi-sidebar a:hover span,
                        aside.fi-sidebar a:hover svg {
                            color: #2563eb !important; /* blue-600 */
                            transition: color 0.2s ease !important;
                        }
                    </style>
                '
            )
            ->renderHook(
                PanelsRenderHook::USER_MENU_BEFORE,
                fn(): string => \Illuminate\Support\Facades\Blade::render('
                    <div style="display: flex; align-items: center; margin-right: 1rem;">
                        <x-filament::button
                            href="{{ url(\'/\') }}"
                            tag="a"
                            target="_blank"
                            icon="heroicon-o-globe-alt"
                            color="primary"
                        >
                            View Website
                        </x-filament::button>
                    </div>
                ')
            );
    }
}
