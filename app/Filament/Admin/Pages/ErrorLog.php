<?php

namespace App\Filament\Admin\Pages;

use Filament\Pages\Page;

class ErrorLog extends Page
{
    protected string $view = 'filament.admin.pages.error-log';

    public static function getNavigationIcon(): string
    {
        return 'heroicon-o-document-text';
    }

    public static function getNavigationGroup(): ?string
    {
        return 'Settings';
    }

    public static function getNavigationLabel(): string
    {
        return 'System Error Logs';
    }

    public function getTitle(): string | \Illuminate\Contracts\Support\Htmlable
    {
        return 'System Error Logs';
    }


    public $logContents = '';

    public function mount()
    {
        $logPath = storage_path('logs/laravel.log');
        
        if (file_exists($logPath)) {
            // Read last 1000 lines or full file if smaller
            $file = new \SplFileObject($logPath, 'r');
            $file->seek(PHP_INT_MAX);
            $lastLine = $file->key();
            $startLine = max(0, $lastLine - 1000);
            
            $file->seek($startLine);
            $lines = [];
            while (!$file->eof()) {
                $lines[] = $file->current();
                $file->next();
            }
            $this->logContents = implode("", array_reverse($lines));
        } else {
            $this->logContents = 'Log file not found.';
        }
    }
}
