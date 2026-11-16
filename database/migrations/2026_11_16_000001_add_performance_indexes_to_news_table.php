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
        Schema::table('news', function (Blueprint $table) {
            $table->index(['status', 'published_at'], 'news_status_published_at_idx');
            $table->index(['status', 'is_headline'], 'news_status_is_headline_idx');
            $table->index(['status', 'is_trending'], 'news_status_is_trending_idx');
            $table->index(['status', 'is_breaking'], 'news_status_is_breaking_idx');
            $table->index(['category_id', 'status'], 'news_category_id_status_idx');
            $table->index(['status', 'views'], 'news_status_views_idx');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('news', function (Blueprint $table) {
            $table->dropIndex('news_status_published_at_idx');
            $table->dropIndex('news_status_is_headline_idx');
            $table->dropIndex('news_status_is_trending_idx');
            $table->dropIndex('news_status_is_breaking_idx');
            $table->dropIndex('news_category_id_status_idx');
            $table->dropIndex('news_status_views_idx');
        });
    }
};
