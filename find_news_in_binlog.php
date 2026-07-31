<?php
/**
 * Script untuk mencari data news di binary log MySQL
 * Akan mencari INSERT statements yang hilang
 */

$binlogPath = 'C:/laragon/data/mysql-8';
$outputDir = __DIR__ . '/storage/recovery';

if (!is_dir($outputDir)) {
    mkdir($outputDir, 0755, true);
}

echo "==========================================\n";
echo "   MENCARI DATA NEWS DI BINLOG          \n";
echo "==========================================\n\n";

// Daftar binlog yang akan dicek (mulai dari yang besar, kemungkinan ada banyak INSERT)
$binlogs = [
    '000262' => '8.2 MB',  // Paling besar
    '000258' => '8.9 MB',
    '000254' => '16.2 MB',
    '000252' => '6.6 MB',
    '000249' => '146 MB',  // Sangat besar!
    '000248' => '28.4 MB',
];

echo "📋 Akan mencari di binlog berikut:\n";
foreach ($binlogs as $num => $size) {
    echo "  - binlog.{$num} ({$size})\n";
}
echo "\n";

foreach ($binlogs as $num => $size) {
    $binlogFile = "{$binlogPath}/binlog.{$num}";
    
    if (!file_exists($binlogFile)) {
        echo "⏭️  Skip: binlog.{$num} tidak ditemukan\n";
        continue;
    }
    
    echo "🔍 Memeriksa binlog.{$num}...\n";
    
    // Gunakan mysqlbinlog dengan filter
    $outputFile = "{$outputDir}/binlog_{$num}_news.txt";
    $cmd = "mysqlbinlog \"{$binlogFile}\" 2>&1 | findstr /I \"INSERT.*news VALUES\" > \"{$outputFile}\"";
    
    echo "   Menjalankan: mysqlbinlog | findstr...\n";
    exec($cmd, $output, $returnCode);
    
    if (file_exists($outputFile) && filesize($outputFile) > 0) {
        $lineCount = count(file($outputFile));
        $fileSize = number_format(filesize($outputFile) / 1024, 2);
        
        echo "   ✅ DITEMUKAN! {$lineCount} lines ({$fileSize} KB)\n";
        echo "   File: {$outputFile}\n\n";
        
        // Tampilkan sample
        echo "   📄 Sample data:\n";
        $lines = array_slice(file($outputFile), 0, 2);
        foreach ($lines as $line) {
            $preview = substr(trim($line), 0, 100);
            echo "   {$preview}...\n";
        }
        echo "\n";
        
    } else {
        echo "   ❌ Tidak ada data news\n";
        if (file_exists($outputFile)) {
            unlink($outputFile);
        }
    }
    
    echo "\n";
}

echo "==========================================\n";
echo "SELESAI!\n";
echo "==========================================\n\n";

echo "Cek folder: {$outputDir}\n";
echo "Jika menemukan file dengan data, buka dan extract INSERT statements\n\n";
