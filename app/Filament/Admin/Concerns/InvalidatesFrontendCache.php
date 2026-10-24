<?php

namespace App\Filament\Admin\Concerns;

use Illuminate\Support\Facades\Cache;

/**
 * Trait untuk membersihkan cache frontend setelah perubahan data di admin.
 * Tambahkan trait ini ke Filament Page class (Create/Edit) yang perlu invalidate cache.
 */
trait InvalidatesFrontendCache
{
    /**
     * Semua cache keys frontend yang harus dihapus setelah save.
     * Override di subclass untuk menentukan keys spesifik.
     */
    protected function getFrontendCacheKeys(): array
    {
        return [];
    }

    /**
     * Hapus semua cache keys global yang mempengaruhi semua halaman.
     */
    protected function invalidateGlobalCache(): void
    {
        Cache::forget('setting:first');
        Cache::forget('categories:with_count');
        Cache::forget('news:breaking');
        Cache::forget('ads:sidebar');
    }

    /**
     * Hapus cache konten berita (headlines, trending, galleries, dst).
     */
    protected function invalidateNewsCache(): void
    {
        $keys = [
            'news:headlines',
            'news:trending',
            'news:breaking',
            'galleries:home',
        ];
        foreach ($keys as $key) {
            Cache::forget($key);
        }
    }

    /**
     * Hapus cache data statis (slider, festival, destination categories).
     */
    protected function invalidateStaticCache(): void
    {
        $keys = [
            'sliders:active',
            'festivals:active',
            'destination_categories:active',
        ];
        foreach ($keys as $key) {
            Cache::forget($key);
        }
    }

    /**
     * Dipanggil otomatis oleh Filament setelah record berhasil disimpan.
     */
    protected function afterSave(): void
    {
        foreach ($this->getFrontendCacheKeys() as $key) {
            Cache::forget($key);
        }
    }
}
