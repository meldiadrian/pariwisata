<?php
/**
 * Script Recovery Data News
 * Script ini akan mencoba mengembalikan data news yang hilang
 */

require __DIR__.'/vendor/autoload.php';

$app = require_once __DIR__.'/bootstrap/app.php';
$app->make(\Illuminate\Contracts\Console\Kernel::class)->bootstrap();

use Illuminate\Support\Facades\DB;

echo "==========================================\n";
echo "   SCRIPT RECOVERY DATA NEWS            \n";
echo "==========================================\n\n";

// Cek jumlah data saat ini
$currentCount = DB::table('news')->count();
echo "📊 Data news saat ini: {$currentCount}\n\n";

// Cek Auto Increment (menunjukkan berapa data yang pernah ada)
$tableStatus = DB::select("SHOW TABLE STATUS LIKE 'news'");
$autoIncrement = $tableStatus[0]->Auto_increment ?? 0;
echo "📈 Auto Increment: {$autoIncrement}\n";
echo "💡 Ini berarti pernah ada sekitar " . ($autoIncrement - 1) . " data sebelumnya\n\n";

// Coba cek data di tabel lain yang mungkin masih punya relasi
echo "🔍 Mengecek relasi dengan tabel lain...\n\n";

$newsTagCount = DB::table('news_tag')->count();
echo "📌 Relasi news_tag: {$newsTagCount} records\n";

if ($newsTagCount > 0) {
    $newsIds = DB::table('news_tag')->distinct()->pluck('news_id')->toArray();
    echo "📋 News IDs di news_tag: " . implode(', ', array_slice($newsIds, 0, 20)) . "\n";
    echo "   (Total " . count($newsIds) . " unique news IDs)\n\n";
}

$galleriesCount = DB::table('galleries')->count();
echo "🖼️  Relasi galleries: {$galleriesCount} records\n";

if ($galleriesCount > 0) {
    $galleryNewsIds = DB::table('galleries')->whereNotNull('news_id')->distinct()->pluck('news_id')->toArray();
    echo "📋 News IDs di galleries: " . implode(', ', array_slice($galleryNewsIds, 0, 20)) . "\n";
    echo "   (Total " . count($galleryNewsIds) . " unique news IDs)\n\n";
}

echo "\n==========================================\n";
echo "   OPSI RECOVERY                         \n";
echo "==========================================\n\n";

echo "Pilihan yang tersedia:\n\n";
echo "1. ✅ Cek Binary Log MySQL\n";
echo "   Data mungkin bisa diambil dari binlog\n\n";

echo "2. 📦 Restore dari Backup Database\n";
echo "   Jika Anda punya file backup .sql\n\n";

echo "3. 🔄 Recreate dari Relasi\n";
echo "   Membuat placeholder dari news_tag dan galleries\n\n";

echo "==========================================\n\n";

echo "Untuk melanjutkan recovery:\n";
echo "  php artisan news:try-recovery\n\n";
