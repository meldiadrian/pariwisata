<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Page Cache Enabled
    |--------------------------------------------------------------------------
    | Tentukan apakah sistem page cache aktif. Dapat dimatikan lewat .env
    | dengan menyetel PAGE_CACHE_ENABLED=false.
    */
    'enabled' => env('PAGE_CACHE_ENABLED', true),

    /*
    |--------------------------------------------------------------------------
    | Default Cache TTL (dalam detik)
    |--------------------------------------------------------------------------
    | Durasi standar halaman disimpan di cache.
    | 300 detik = 5 menit.
    */
    'default_ttl' => env('PAGE_CACHE_TTL', 300),

    /*
    |--------------------------------------------------------------------------
    | Cache Store
    |--------------------------------------------------------------------------
    | Menentukan cache store khusus untuk page cache jika diinginkan.
    | Jika bernilai null, akan menggunakan default cache store aplikasi.
    */
    'store' => env('PAGE_CACHE_STORE', null),

    /*
    |--------------------------------------------------------------------------
    | Excluded Paths
    |--------------------------------------------------------------------------
    | Path yang tidak boleh disimpan dalam page cache dalam kondisi apapun.
    */
    'excluded_paths' => [
        'bermasa*',
        'admin*',
        'livewire*',
        'storage*',
        'user*',
        'api*',
    ],

    /*
    |--------------------------------------------------------------------------
    | Track News Views on Cache Hit
    |--------------------------------------------------------------------------
    | Jika true, pembacaan detail berita tetap akan menghitung views
    | dengan pembatasan 1 view per IP per 10 menit meskipun dilayani dari cache.
    */
    'track_news_views' => true,

];
