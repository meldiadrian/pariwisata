<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;

class TestLivewireSecurity extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'security:test-livewire';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Test Livewire temporary folder security configuration';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $this->info('Testing Livewire Temporary Folder Security...');
        $this->newLine();

        $passed = 0;
        $failed = 0;

        // Test 1: Check if protection files exist
        $this->info('Test 1: Checking protection files...');
        $livewireTmpPath = storage_path('app/public/livewire-tmp');
        
        $protectionFiles = [
            '.htaccess' => $livewireTmpPath . '/.htaccess',
            'web.config' => $livewireTmpPath . '/web.config',
            'index.php' => $livewireTmpPath . '/index.php',
        ];

        foreach ($protectionFiles as $name => $path) {
            if (File::exists($path)) {
                $this->line("  ✓ {$name} exists");
                $passed++;
            } else {
                $this->error("  ✗ {$name} missing!");
                $failed++;
            }
        }

        $this->newLine();

        // Test 2: Check route protection
        $this->info('Test 2: Checking route protection...');
        try {
            $routes = collect(\Illuminate\Support\Facades\Route::getRoutes())
                ->filter(function ($route) {
                    return str_contains($route->uri(), 'storage/livewire-tmp');
                });

            if ($routes->count() > 0) {
                $this->line("  ✓ Route protection exists");
                $passed++;
            } else {
                $this->error("  ✗ No route protection found!");
                $failed++;
            }
        } catch (\Exception $e) {
            $this->error("  ✗ Error checking routes: " . $e->getMessage());
            $failed++;
        }

        $this->newLine();

        // Test 3: Check middleware registration
        $this->info('Test 3: Checking middleware registration...');
        try {
            $middlewareExists = class_exists(\App\Http\Middleware\SecureLivewireUploads::class);
            if ($middlewareExists) {
                $this->line("  ✓ SecureLivewireUploads middleware exists");
                $passed++;
            } else {
                $this->error("  ✗ SecureLivewireUploads middleware not found!");
                $failed++;
            }
        } catch (\Exception $e) {
            $this->error("  ✗ Error checking middleware: " . $e->getMessage());
            $failed++;
        }

        $this->newLine();

        // Test 4: Check Livewire config
        $this->info('Test 4: Checking Livewire configuration...');
        $config = config('livewire.temporary_file_upload');
        
        if (isset($config['disk'])) {
            $this->line("  ✓ Disk configuration: " . ($config['disk'] ?? 'local'));
            $passed++;
        } else {
            $this->error("  ✗ Disk configuration missing!");
            $failed++;
        }

        if (isset($config['cleanup']) && $config['cleanup'] === true) {
            $this->line("  ✓ Auto cleanup enabled");
            $passed++;
        } else {
            $this->warn("  ⚠ Auto cleanup not configured!");
        }

        if (isset($config['middleware'])) {
            $this->line("  ✓ Middleware throttling: " . ($config['middleware'] ?? 'none'));
            $passed++;
        } else {
            $this->warn("  ⚠ No middleware throttling!");
        }

        $this->newLine();

        // Test 5: Check folder permissions
        $this->info('Test 5: Checking folder permissions...');
        if (File::isDirectory($livewireTmpPath)) {
            $this->line("  ✓ livewire-tmp folder exists");
            $passed++;
            
            if (File::isWritable($livewireTmpPath)) {
                $this->line("  ✓ Folder is writable");
                $passed++;
            } else {
                $this->error("  ✗ Folder is not writable!");
                $failed++;
            }
        } else {
            $this->error("  ✗ livewire-tmp folder not found!");
            $failed++;
        }

        $this->newLine();

        // Summary
        $total = $passed + $failed;
        $this->info("Test Summary:");
        $this->line("  Passed: {$passed}/{$total}");
        if ($failed > 0) {
            $this->error("  Failed: {$failed}/{$total}");
        }

        $this->newLine();

        if ($failed === 0) {
            $this->info('✅ All security tests passed!');
            return 0;
        } else {
            $this->error('❌ Some security tests failed. Please review the errors above.');
            return 1;
        }
    }
}
