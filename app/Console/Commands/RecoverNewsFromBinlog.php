<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class RecoverNewsFromBinlog extends Command
{
    protected $signature = 'news:recover-from-binlog';
    protected $description = 'Attempt to recover deleted news from MySQL binary logs';

    public function handle()
    {
        $this->info('==========================================');
        $this->info('   MENCOBA RECOVER NEWS DARI BINLOG     ');
        $this->info('==========================================');
        $this->newLine();

        // Cek apakah binary log aktif
        $binaryLogStatus = DB::select("SHOW VARIABLES LIKE 'log_bin'");
        
        if (empty($binaryLogStatus) || $binaryLogStatus[0]->Value !== 'ON') {
            $this->error('Binary logging tidak aktif di MySQL!');
            $this->info('Data tidak bisa di-recover dari binary log.');
            return Command::FAILURE;
        }

        $this->info('✅ Binary logging aktif');
        $this->newLine();

        // Tampilkan binary logs yang tersedia
        $binlogs = DB::select("SHOW BINARY LOGS");
        
        $this->info('Binary logs tersedia:');
        foreach ($binlogs as $log) {
            $this->line("  - {$log->Log_name} ({$log->File_size} bytes)");
        }

        $this->newLine();
        $this->warn('PETUNJUK MANUAL RECOVERY:');
        $this->newLine();
        $this->line('1. Jalankan di command prompt:');
        $this->line('   cd C:\\laragon\\bin\\mysql\\mysql-8.x.x\\bin');
        $this->newLine();
        $this->line('2. Extract binary log untuk mencari DELETE statement:');
        $this->line('   mysqlbinlog C:\\laragon\\data\\mysql-8\\binlog.000XXX > output.sql');
        $this->newLine();
        $this->line('3. Cari transaksi DELETE atau TRUNCATE untuk tabel news');
        $this->line('4. Atau coba recover dari backup database terdekat');

        return Command::SUCCESS;
    }
}
