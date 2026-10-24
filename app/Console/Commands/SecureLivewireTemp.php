<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;

class SecureLivewireTemp extends Command
{
    protected $signature = 'livewire:secure-temp 
                            {--scan : Scan for malicious files}
                            {--cleanup : Remove suspicious files}';

    protected $description = 'Scan and secure Livewire temporary directory from malicious files';

    public function handle(): int
    {
        $this->info('🔒 Securing Livewire Temporary Directory...');
        $this->newLine();

        $disk = Storage::disk(config('livewire.temporary_file_upload.disk', 'public'));
        $directory = config('livewire.temporary_file_upload.directory', 'livewire-tmp');
        $fullPath = $disk->path($directory);

        if (!File::exists($fullPath)) {
            $this->warn("Temporary directory not found: {$directory}");
            return self::SUCCESS;
        }

        $files = File::allFiles($fullPath);
        $this->info("Scanning " . count($files) . " files...");
        $this->newLine();

        $suspicious = [];
        $blocked = [];

        foreach ($files as $file) {
            $result = $this->scanFile($file);
            
            if ($result['status'] === 'suspicious') {
                $suspicious[] = $result;
                $this->warn("⚠️  SUSPICIOUS: {$file->getFilename()} - {$result['reason']}");
            } elseif ($result['status'] === 'blocked') {
                $blocked[] = $result;
                $this->error("❌ BLOCKED: {$file->getFilename()} - {$result['reason']}");
                
                if ($this->option('cleanup')) {
                    File::delete($file->getPathname());
                    $this->line("   🗑️  Deleted");
                }
            }
        }

        $this->newLine();
        $this->displayResults($files, $suspicious, $blocked);

        return self::SUCCESS;
    }

    protected function scanFile($file): array
    {
        $filename = $file->getFilename();
        $extension = strtolower($file->getExtension());
        
        // Skip protection files
        $protectionFiles = ['index.php', '.htaccess', 'web.config'];
        if (in_array($filename, $protectionFiles)) {
            return ['status' => 'clean', 'file' => $filename];
        }
        
        $content = file_get_contents($file->getPathname());

        // Check dangerous extensions
        $dangerousExtensions = ['php', 'exe', 'bat', 'sh', 'js', 'jsp', 'asp'];
        if (in_array($extension, $dangerousExtensions)) {
            return [
                'status' => 'blocked',
                'reason' => 'Dangerous extension',
                'file' => $filename,
            ];
        }

        // Check for PHP code in files
        if (preg_match('/<\?php|<\?=/i', $content)) {
            return [
                'status' => 'blocked',
                'reason' => 'PHP code detected',
                'file' => $filename,
            ];
        }

        // Check for shell commands
        if (preg_match('/system\(|exec\(|shell_exec\(|passthru\(|eval\(/i', $content)) {
            return [
                'status' => 'blocked',
                'reason' => 'Shell command detected',
                'file' => $filename,
            ];
        }

        // Check for SQL injection patterns
        if (preg_match('/DROP TABLE|DELETE FROM|INSERT INTO/i', $content)) {
            return [
                'status' => 'suspicious',
                'reason' => 'SQL pattern detected',
                'file' => $filename,
            ];
        }

        // Check double extension
        if (preg_match('/\.(php|exe|bat|sh)\./i', $filename)) {
            return [
                'status' => 'blocked',
                'reason' => 'Double extension',
                'file' => $filename,
            ];
        }

        return ['status' => 'clean', 'file' => $filename];
    }

    protected function displayResults($files, $suspicious, $blocked): void
    {
        $this->info('═══════════════════════════════════════════');
        $this->info('📊 SCAN RESULTS');
        $this->info('═══════════════════════════════════════════');
        $this->line("Total files scanned: " . count($files));
        $this->line("Clean files: " . (count($files) - count($suspicious) - count($blocked)));
        $this->warn("Suspicious files: " . count($suspicious));
        $this->error("Blocked files: " . count($blocked));
        $this->info('═══════════════════════════════════════════');

        if (count($blocked) > 0 || count($suspicious) > 0) {
            $this->newLine();
            $this->error('⚠️  SECURITY ALERT: Potentially malicious files detected!');
            $this->warn('Run with --cleanup to remove blocked files');
            
            Log::alert('Malicious files detected in Livewire temp', [
                'suspicious_count' => count($suspicious),
                'blocked_count' => count($blocked),
                'suspicious_files' => array_column($suspicious, 'file'),
                'blocked_files' => array_column($blocked, 'file'),
            ]);
        } else {
            $this->newLine();
            $this->info('✅ All files are clean!');
        }
    }
}
