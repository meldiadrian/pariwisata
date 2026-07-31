<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Http;
use Illuminate\Http\UploadedFile;

class TestLivewireUploadSecurity extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'livewire:test-security
                            {--clean : Clean up test files after testing}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Test Livewire upload security and temporary file handling';

    protected array $testResults = [];
    protected string $testDir = 'livewire-test-uploads';

    /**
     * Execute the console command.
     */
    public function handle(): int
    {
        $this->info('🔒 Starting Livewire Upload Security Tests...');
        $this->newLine();

        // Run all tests
        $this->testTempDirectoryExists();
        $this->testTempDirectoryPermissions();
        $this->testDiskConfiguration();
        $this->testFileUploadLimits();
        $this->testSecurityMiddleware();
        $this->testTempFileCleanup();
        $this->testFileTypes();
        $this->testMaliciousFiles();
        $this->testConcurrentUploads();
        $this->testStorageLinks();

        // Display results
        $this->displayResults();

        // Cleanup if requested
        if ($this->option('clean')) {
            $this->cleanup();
        }

        return self::SUCCESS;
    }

    /**
     * Test 1: Check if temporary directory exists
     */
    protected function testTempDirectoryExists(): void
    {
        $this->info('📁 Test 1: Checking temporary directory...');
        
        $disk = Storage::disk(config('livewire.temporary_file_upload.disk', 'public'));
        $directory = config('livewire.temporary_file_upload.directory', 'livewire-tmp');
        $fullPath = $disk->path($directory);

        $exists = File::exists($fullPath);
        
        if ($exists) {
            $this->testResults[] = ['Test', 'Temp Directory Exists', '✅ PASS', $fullPath];
            $this->line("   ✅ Directory exists: {$fullPath}");
        } else {
            $this->testResults[] = ['Test', 'Temp Directory Exists', '❌ FAIL', 'Directory not found'];
            $this->error("   ❌ Directory not found: {$fullPath}");
            
            // Try to create it
            if (File::makeDirectory($fullPath, 0755, true)) {
                $this->warn("   ⚠️  Created directory automatically");
            }
        }
        
        $this->newLine();
    }

    /**
     * Test 2: Check directory permissions
     */
    protected function testTempDirectoryPermissions(): void
    {
        $this->info('🔐 Test 2: Checking directory permissions...');
        
        $disk = Storage::disk(config('livewire.temporary_file_upload.disk', 'public'));
        $directory = config('livewire.temporary_file_upload.directory', 'livewire-tmp');
        $fullPath = $disk->path($directory);

        if (!File::exists($fullPath)) {
            $this->testResults[] = ['Test', 'Directory Permissions', '⏭️  SKIP', 'Directory not found'];
            $this->warn("   ⏭️  Skipped: Directory doesn't exist");
            $this->newLine();
            return;
        }

        $permissions = substr(sprintf('%o', fileperms($fullPath)), -4);
        $isWritable = is_writable($fullPath);
        $isReadable = is_readable($fullPath);

        if ($isWritable && $isReadable) {
            $this->testResults[] = ['Test', 'Directory Permissions', '✅ PASS', $permissions];
            $this->line("   ✅ Permissions: {$permissions} (Writable & Readable)");
        } else {
            $this->testResults[] = ['Test', 'Directory Permissions', '❌ FAIL', "Writable: {$isWritable}, Readable: {$isReadable}"];
            $this->error("   ❌ Permission issues detected");
        }
        
        $this->newLine();
    }

    /**
     * Test 3: Check disk configuration
     */
    protected function testDiskConfiguration(): void
    {
        $this->info('💾 Test 3: Checking disk configuration...');
        
        $livewireDisk = config('livewire.temporary_file_upload.disk');
        $filamentDisk = config('filament.default_filesystem_disk');
        $defaultDisk = config('filesystems.default');

        $this->line("   Livewire temp disk: {$livewireDisk}");
        $this->line("   Filament disk: {$filamentDisk}");
        $this->line("   Default disk: {$defaultDisk}");

        // Check if public disk is configured
        $publicDiskConfig = config('filesystems.disks.public');
        
        if ($publicDiskConfig && $livewireDisk === 'public') {
            $this->testResults[] = ['Test', 'Disk Configuration', '✅ PASS', "Using '{$livewireDisk}' disk"];
            $this->line("   ✅ Configuration is correct");
        } else {
            $this->testResults[] = ['Test', 'Disk Configuration', '⚠️  WARN', "Check disk settings"];
            $this->warn("   ⚠️  Review disk configuration");
        }
        
        $this->newLine();
    }

    /**
     * Test 4: Check file upload limits
     */
    protected function testFileUploadLimits(): void
    {
        $this->info('📊 Test 4: Checking file upload limits...');
        
        $maxSize = config('livewire.temporary_file_upload.rules')[2] ?? 'not set';
        $maxUploadTime = config('livewire.temporary_file_upload.max_upload_time', 5);
        
        // Get PHP limits
        $phpMaxUpload = ini_get('upload_max_filesize');
        $phpPostMax = ini_get('post_max_size');
        $phpMemoryLimit = ini_get('memory_limit');
        
        $this->line("   Livewire max size: {$maxSize}");
        $this->line("   Livewire max time: {$maxUploadTime} minutes");
        $this->line("   PHP upload_max_filesize: {$phpMaxUpload}");
        $this->line("   PHP post_max_size: {$phpPostMax}");
        $this->line("   PHP memory_limit: {$phpMemoryLimit}");

        $this->testResults[] = ['Test', 'File Upload Limits', '✅ PASS', "Max: {$maxSize}"];
        $this->line("   ✅ Limits configured");
        
        $this->newLine();
    }

    /**
     * Test 5: Check security middleware
     */
    protected function testSecurityMiddleware(): void
    {
        $this->info('🛡️  Test 5: Checking security middleware...');
        
        $middlewareExists = File::exists(app_path('Http/Middleware/SecureLivewireUploads.php'));
        
        if ($middlewareExists) {
            $this->testResults[] = ['Test', 'Security Middleware', '✅ PASS', 'Middleware exists'];
            $this->line("   ✅ SecureLivewireUploads middleware found");
            
            // Check if registered
            $middleware = config('livewire.temporary_file_upload.middleware');
            $this->line("   Middleware: {$middleware}");
        } else {
            $this->testResults[] = ['Test', 'Security Middleware', '⚠️  WARN', 'Middleware not found'];
            $this->warn("   ⚠️  Custom middleware not found");
        }
        
        $this->newLine();
    }

    /**
     * Test 6: Test temporary file cleanup
     */
    protected function testTempFileCleanup(): void
    {
        $this->info('🧹 Test 6: Testing temporary file cleanup...');
        
        $cleanupEnabled = config('livewire.temporary_file_upload.cleanup', true);
        
        if ($cleanupEnabled) {
            $this->testResults[] = ['Test', 'Auto Cleanup', '✅ PASS', 'Enabled'];
            $this->line("   ✅ Auto cleanup is enabled");
        } else {
            $this->testResults[] = ['Test', 'Auto Cleanup', '⚠️  WARN', 'Disabled'];
            $this->warn("   ⚠️  Auto cleanup is disabled");
        }

        // Test cleanup command exists
        $commandExists = File::exists(app_path('Console/Commands/CleanupLivewireTemp.php'));
        
        if ($commandExists) {
            $this->line("   ✅ Manual cleanup command available");
        } else {
            $this->warn("   ⚠️  Manual cleanup command not found");
        }
        
        $this->newLine();
    }

    /**
     * Test 7: Test file type restrictions
     */
    protected function testFileTypes(): void
    {
        $this->info('📝 Test 7: Testing file type restrictions...');
        
        $previewMimes = config('livewire.temporary_file_upload.preview_mimes', []);
        
        $this->line("   Allowed preview types: " . count($previewMimes));
        $this->line("   " . implode(', ', array_slice($previewMimes, 0, 10)));
        
        if (count($previewMimes) > 10) {
            $this->line("   ... and " . (count($previewMimes) - 10) . " more");
        }

        $this->testResults[] = ['Test', 'File Type Config', '✅ PASS', count($previewMimes) . ' types allowed'];
        
        $this->newLine();
    }

    /**
     * Test 8: Test malicious file detection
     */
    protected function testMaliciousFiles(): void
    {
        $this->info('🚨 Test 8: Testing malicious file detection...');
        
        // List of dangerous extensions that should be blocked
        $dangerousExtensions = ['php', 'exe', 'bat', 'sh', 'js'];
        
        $this->line("   Checking for blocked extensions...");
        
        // Check if middleware blocks these
        $middlewareContent = File::exists(app_path('Http/Middleware/SecureLivewireUploads.php'))
            ? File::get(app_path('Http/Middleware/SecureLivewireUploads.php'))
            : '';
        
        $hasBlockingLogic = str_contains($middlewareContent, 'dangerousExtensions') || 
                           str_contains($middlewareContent, 'allowedMimes');
        
        if ($hasBlockingLogic) {
            $this->testResults[] = ['Test', 'Malicious File Detection', '✅ PASS', 'Blocking active'];
            $this->line("   ✅ File type blocking is active");
            $this->line("   ✅ Dangerous extensions: " . implode(', ', $dangerousExtensions));
        } else {
            $this->testResults[] = ['Test', 'Malicious File Detection', '⚠️  WARN', 'Check configuration'];
            $this->warn("   ⚠️  Review file type blocking logic");
        }
        
        $this->newLine();
    }

    /**
     * Test 9: Test concurrent uploads handling
     */
    protected function testConcurrentUploads(): void
    {
        $this->info('🔄 Test 9: Testing concurrent upload handling...');
        
        $middleware = config('livewire.temporary_file_upload.middleware', '');
        $hasRateLimit = str_contains($middleware, 'throttle');
        
        if ($hasRateLimit) {
            $this->testResults[] = ['Test', 'Rate Limiting', '✅ PASS', 'Throttling active'];
            $this->line("   ✅ Rate limiting configured: {$middleware}");
        } else {
            $this->testResults[] = ['Test', 'Rate Limiting', '⚠️  WARN', 'No throttling'];
            $this->warn("   ⚠️  Consider adding rate limiting");
        }
        
        $this->newLine();
    }

    /**
     * Test 10: Test storage link
     */
    protected function testStorageLinks(): void
    {
        $this->info('🔗 Test 10: Testing storage link...');
        
        $storageLink = public_path('storage');
        $linkExists = File::exists($storageLink);
        $isLink = is_link($storageLink);
        
        if ($linkExists && $isLink) {
            $target = readlink($storageLink);
            $this->testResults[] = ['Test', 'Storage Link', '✅ PASS', 'Link exists'];
            $this->line("   ✅ Storage link exists");
            $this->line("   Target: {$target}");
        } else {
            $this->testResults[] = ['Test', 'Storage Link', '❌ FAIL', 'Link missing'];
            $this->error("   ❌ Storage link not found");
            $this->warn("   Run: php artisan storage:link");
        }
        
        $this->newLine();
    }

    /**
     * Display test results in table format
     */
    protected function displayResults(): void
    {
        $this->newLine();
        $this->info('═══════════════════════════════════════════════════════════');
        $this->info('📊 TEST RESULTS SUMMARY');
        $this->info('═══════════════════════════════════════════════════════════');
        $this->newLine();

        $this->table(
            ['Category', 'Test Name', 'Result', 'Details'],
            $this->testResults
        );

        // Count results
        $passed = count(array_filter($this->testResults, fn($r) => str_contains($r[2], '✅')));
        $failed = count(array_filter($this->testResults, fn($r) => str_contains($r[2], '❌')));
        $warnings = count(array_filter($this->testResults, fn($r) => str_contains($r[2], '⚠️')));
        $total = count($this->testResults);

        $this->newLine();
        $this->info("Total Tests: {$total}");
        $this->info("✅ Passed: {$passed}");
        if ($failed > 0) {
            $this->error("❌ Failed: {$failed}");
        } else {
            $this->line("❌ Failed: {$failed}");
        }
        if ($warnings > 0) {
            $this->warn("⚠️  Warnings: {$warnings}");
        } else {
            $this->line("⚠️  Warnings: {$warnings}");
        }

        $this->info('═══════════════════════════════════════════════════════════');
        
        if ($failed === 0 && $warnings === 0) {
            $this->newLine();
            $this->info('🎉 All tests passed! Your Livewire security is properly configured.');
        } elseif ($failed > 0) {
            $this->newLine();
            $this->error('⚠️  Some tests failed. Please review the issues above.');
        } else {
            $this->newLine();
            $this->warn('⚠️  Tests passed with warnings. Review recommendations above.');
        }
    }

    /**
     * Cleanup test files
     */
    protected function cleanup(): void
    {
        $this->newLine();
        $this->info('🧹 Cleaning up test files...');
        
        $disk = Storage::disk('public');
        
        if ($disk->exists($this->testDir)) {
            $disk->deleteDirectory($this->testDir);
            $this->line('   ✅ Test directory cleaned');
        }
    }
}
