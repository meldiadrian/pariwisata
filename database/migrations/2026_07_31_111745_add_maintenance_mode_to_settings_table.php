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
            $table->boolean('maintenance_mode')->default(false);
            $table->string('maintenance_title')->nullable();
            $table->text('maintenance_message')->nullable();
            $table->timestamp('maintenance_started_at')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('settings', function (Blueprint $table) {
            $table->dropColumn(['maintenance_mode', 'maintenance_title', 'maintenance_message', 'maintenance_started_at']);
        });
    }
};
