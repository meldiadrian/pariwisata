<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class TryRecoverNews extends Command
{
    protected $signature = 'news:try-recovery {--export-binlog} {--import-sql=}';
    protected $description = 'Try to recover deleted news data from MySQL binary logs';

    public function handle()
    {
        $this->info('==========================================');
        $this->info('   MENCOBA RECOVERY DATA NEWS            ');
        $this->info('==========================================');
        $this->newLine();

        if ($this->option('import-sql')) {
            return $this->importFromSql($this->option('import-sql'));
        }

        if ($this->option('export-binlog')) {
            return $this->exportBinlog();
        }

        // Cek status tabel
        $this->checkTableStatus();
        
        $this->newLine();
        $this->info('Pilih metode recovery:');
        $this->newLine();
        
        $choice = $this->choice(
            'Metode recovery yang ingin digunakan:',
            [
                '1' => 'Export Binary Log (recommended)',
                '2' => 'Import dari file backup .sql',
                '3' => 'Tampilkan panduan manual',
                '4' => 'Batal'
            ],
            0
        );

        switch ($choice) {
            case '1':
                return $this->exportBinlog();
            case '2':
                $file = $this->ask('Path file backup .sql:');
                return $this->importFromSql($file);
            case '3':
                return $this->showManualGuide();
            default:
                $this->info('Dibatalkan');
                return Command::SUCCESS;
        }
    }

    protected function checkTableStatus()
    {
        $this->info('📊 Status Database:');
        $this->newLine();

        $currentCount = DB::table('news')->count();
        $this->line("  News saat ini: {$currentCount}");

        $tableStatus = DB::select("SHOW TABLE STATUS LIKE 'news'");
        $autoIncrement = $tableStatus[0]->Auto_increment ?? 0;
        $this->line("  Auto Increment: {$autoIncrement}");
        $this->warn("  ⚠️  Pernah ada sekitar " . ($autoIncrement - 1) . " data sebelumnya!");
        
        $this->newLine();
    }

    protected function exportBinlog()
    {
        $this->info('🔍 Mencari binary logs...');
        $this->newLine();

        try {
            $binlogs = DB::select("SHOW BINARY LOGS");
            $binlogPath = DB::select("SHOW VARIABLES LIKE 'log_bin_basename'");
            $binlogBasePath = $binlogPath[0]->Value ?? 'C:\\laragon\\data\\mysql-8\\binlog';

            $this->line("Binary log location: {$binlogBasePath}");
            $this->line("Total binary logs: " . count($binlogs));
            $this->newLine();

            // Ambil 5 binlog terbaru (kemungkinan besar data ada di sini)
            $recentBinlogs = array_slice($binlogs, -5);
            
            $this->info('📋 5 Binary logs terbaru:');
            foreach ($recentBinlogs as $log) {
                $size = number_format($log->File_size / 1024, 2);
                $this->line("  - {$log->Log_name} ({$size} KB)");
            }
            
            $this->newLine();

            if (!$this->confirm('Lanjutkan export binary log?', true)) {
                return Command::SUCCESS;
            }

            // Buat folder untuk recovery
            $recoveryPath = storage_path('recovery');
            if (!File::exists($recoveryPath)) {
                File::makeDirectory($recoveryPath, 0755, true);
            }

            $this->info('📤 Exporting binary logs...');
            $this->newLine();

            $outputFile = storage_path('recovery/binlog_extract.sql');
            
            // Export binlog terbaru
            $latestLog = end($recentBinlogs);
            $binlogFile = str_replace('\\', '/', $binlogBasePath) . '.' . explode('.', $latestLog->Log_name)[1];
            
            $mysqlBinlogCmd = "mysqlbinlog --database=news \"{$binlogFile}\" > \"{$outputFile}\"";
            
            $this->line("Menjalankan: mysqlbinlog...");
            $this->line($mysqlBinlogCmd);
            $this->newLine();

            exec($mysqlBinlogCmd, $output, $returnCode);

            if ($returnCode === 0 && File::exists($outputFile)) {
                $fileSize = File::size($outputFile);
                $this->info("✅ Binary log berhasil di-export!");
                $this->line("   File: {$outputFile}");
                $this->line("   Size: " . number_format($fileSize / 1024, 2) . " KB");
                $this->newLine();

                // Cari pattern DELETE atau TRUNCATE
                $content = File::get($outputFile);
                $hasDelete = preg_match('/DELETE.*FROM.*news/i', $content);
                $hasTruncate = preg_match('/TRUNCATE.*news/i', $content);

                if ($hasDelete || $hasTruncate) {
                    $this->warn('⚠️  Ditemukan operasi DELETE/TRUNCATE!');
                    $this->newLine();
                    
                    if ($hasDelete) $this->line('  - DELETE statement ditemukan');
                    if ($hasTruncate) $this->line('  - TRUNCATE statement ditemukan');
                    
                    $this->newLine();
                    $this->info('💡 Langkah selanjutnya:');
                    $this->line('1. Buka file: ' . $outputFile);
                    $this->line('2. Cari INSERT statements untuk table news');
                    $this->line('3. Copy INSERT statements tersebut ke file baru');
                    $this->line('4. Import dengan: php artisan news:try-recovery --import-sql=path/to/file.sql');
                } else {
                    $this->info('ℹ️  Tidak ditemukan DELETE/TRUNCATE di binlog ini');
                    $this->line('Data mungkin hilang karena:');
                    $this->line('  - Binlog sudah di-purge/rotate');
                    $this->line('  - Data dihapus sebelum binlog ini dibuat');
                    $this->line('  - Atau menggunakan TRUNCATE TABLE');
                }

                $this->newLine();
                
                // Cari INSERT statements
                if (preg_match_all('/INSERT INTO.*?news.*?VALUES.*?;/is', $content, $matches)) {
                    $insertCount = count($matches[0]);
                    $this->info("✅ Ditemukan {$insertCount} INSERT statements!");
                    $this->newLine();
                    
                    if ($this->confirm('Tampilkan beberapa INSERT statements?', false)) {
                        foreach (array_slice($matches[0], 0, 3) as $insert) {
                            $this->line(substr($insert, 0, 200) . '...');
                            $this->newLine();
                        }
                    }
                }

            } else {
                $this->error('❌ Gagal export binary log');
                $this->line('Error code: ' . $returnCode);
                if (!empty($output)) {
                    $this->line('Output: ' . implode("\n", $output));
                }
                
                $this->newLine();
                $this->showManualGuide();
            }

        } catch (\Exception $e) {
            $this->error('Error: ' . $e->getMessage());
            $this->newLine();
            $this->showManualGuide();
            return Command::FAILURE;
        }

        return Command::SUCCESS;
    }

    protected function importFromSql($file)
    {
        if (!File::exists($file)) {
            $this->error("File tidak ditemukan: {$file}");
            return Command::FAILURE;
        }

        $this->info("📥 Importing dari: {$file}");
        $this->newLine();

        if (!$this->confirm('⚠️  Ini akan menambahkan data ke tabel news. Lanjutkan?', true)) {
            return Command::SUCCESS;
        }

        try {
            $sql = File::get($file);
            DB::unprepared($sql);
            
            $newCount = DB::table('news')->count();
            $this->info("✅ Import berhasil!");
            $this->line("   Total news sekarang: {$newCount}");
            
        } catch (\Exception $e) {
            $this->error('❌ Import gagal: ' . $e->getMessage());
            return Command::FAILURE;
        }

        return Command::SUCCESS;
    }

    protected function showManualGuide()
    {
        $this->info('==========================================');
        $this->info('   PANDUAN MANUAL RECOVERY              ');
        $this->info('==========================================');
        $this->newLine();

        $binlogPath = DB::select("SHOW VARIABLES LIKE 'log_bin_basename'");
        $binlogBasePath = $binlogPath[0]->Value ?? 'C:\\laragon\\data\\mysql-8\\binlog';

        $this->line('1. Buka Command Prompt sebagai Administrator');
        $this->newLine();

        $this->line('2. Masuk ke folder MySQL bin:');
        $mysqlBinPath = dirname(dirname($binlogBasePath)) . '\\bin';
        $this->info("   cd \"{$mysqlBinPath}\"");
        $this->newLine();

        $this->line('3. Export binary log:');
        $this->info("   mysqlbinlog --database=news \"{$binlogBasePath}.000269\" > recovery.sql");
        $this->newLine();

        $this->line('4. Buka file recovery.sql dan cari:');
        $this->line('   - INSERT INTO `news` VALUES ...');
        $this->line('   - Atau cari timestamp sekitar waktu data hilang');
        $this->newLine();

        $this->line('5. Extract INSERT statements ke file baru');
        $this->newLine();

        $this->line('6. Import kembali:');
        $this->info("   mysql -u root news < recovery.sql");
        $this->newLine();

        $this->warn('ATAU gunakan phpMyAdmin:');
        $this->line('1. Buka http://localhost/phpmyadmin');
        $this->line('2. Pilih database "news"');
        $this->line('3. Tab "Import"');
        $this->line('4. Pilih file backup jika ada');
        $this->newLine();

        return Command::SUCCESS;
    }
}
