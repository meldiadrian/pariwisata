<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('settings', function (Blueprint $table) {
            $table->string('sambutan_nama_kepala')->nullable()->after('about_us');
            $table->string('sambutan_jabatan_kepala')->nullable()->after('sambutan_nama_kepala');
            $table->string('sambutan_foto_kepala')->nullable()->after('sambutan_jabatan_kepala');
            $table->text('sambutan_isi')->nullable()->after('sambutan_foto_kepala');
            $table->string('sambutan_link_selengkapnya')->nullable()->after('sambutan_isi');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('settings', function (Blueprint $table) {
            $table->dropColumn([
                'sambutan_nama_kepala',
                'sambutan_jabatan_kepala',
                'sambutan_foto_kepala',
                'sambutan_isi',
                'sambutan_link_selengkapnya',
            ]);
        });
    }
};
