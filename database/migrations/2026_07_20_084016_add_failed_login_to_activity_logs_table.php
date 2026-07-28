<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('activity_logs', function (Blueprint $table) {
            // 'failed_login' | 'brute_force_detected' | 'suspicious_scan' | etc.
            $table->string('threat_level')->nullable()->after('activity'); // low | medium | high | critical
        });
    }

    public function down(): void
    {
        Schema::table('activity_logs', function (Blueprint $table) {
            $table->dropColumn('threat_level');
        });
    }
};
