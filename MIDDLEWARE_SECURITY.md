# Dokumentasi Middleware Keamanan

## 1. ThrottleFailedLogins Middleware

Middleware ini membatasi percobaan login gagal untuk mencegah brute force attack.

### Fitur:
- ✅ Maksimal **10 kali percobaan login gagal**
- ✅ Setelah 10 kali gagal, user harus menunggu **5 menit (300 detik)**
- ✅ Throttle berdasarkan kombinasi **IP + Email**
- ✅ Otomatis clear throttle saat login berhasil
- ✅ Pesan error yang informatif

### Cara Kerja:
1. Setiap login gagal akan dicatat berdasarkan IP + Email
2. Setelah 10 kali gagal, sistem akan memblokir percobaan login berikutnya
3. User harus menunggu 5 menit sebelum bisa mencoba lagi
4. Saat login berhasil, counter percobaan akan direset

### Penggunaan:
Middleware ini sudah terdaftar sebagai alias di `bootstrap/app.php`:
```php
'throttle.login' => \App\Http\Middleware\ThrottleFailedLogins::class,
```

Untuk menerapkan ke route login Filament, tambahkan ke config Filament atau route:
```php
Route::post('/admin/login', [LoginController::class, 'store'])
    ->middleware('throttle.login');
```

**Catatan:** Untuk Filament, middleware sudah otomatis aktif karena mendeteksi POST ke `/admin/login`.

---

## 2. PreventExcessiveRefresh Middleware

Middleware ini mencegah user melakukan refresh/reload halaman secara berlebihan.

### Fitur:
- ✅ Maksimal **15 kali refresh** dalam **60 detik**
- ✅ Setelah melewati batas, user akan diarahkan ke **halaman 404**
- ✅ Throttle berdasarkan kombinasi **IP + URL + User Agent**
- ✅ Tidak berlaku untuk AJAX, API, dan admin panel
- ✅ Log aktivitas mencurigakan

### Cara Kerja:
1. Setiap request ke halaman public dicatat
2. Jika dalam 60 detik ada lebih dari 15 request ke halaman yang sama dari IP/browser yang sama
3. User akan diarahkan ke halaman 404
4. Aktivitas mencurigakan akan dicatat di log

### Area yang Dikecualikan:
- Request AJAX/XHR
- Route `/api/*`
- Route `/admin/*`
- Route `/livewire/*`

### Penggunaan:
Middleware ini sudah diterapkan secara global ke semua route web di `bootstrap/app.php`:
```php
$middleware->web(append: [
    \App\Http\Middleware\PreventExcessiveRefresh::class,
]);
```

### Konfigurasi:
Anda bisa mengubah parameter di file `app/Http/Middleware/PreventExcessiveRefresh.php`:
```php
protected int $maxAttempts = 15;      // Maksimal refresh
protected int $decaySeconds = 60;     // Window waktu dalam detik
```

---

## Testing

### Test Throttle Login:
1. Coba login dengan password salah sebanyak 10 kali
2. Pada percobaan ke-11, akan muncul pesan error: "Terlalu banyak percobaan login gagal. Silakan coba lagi dalam X detik."
3. Tunggu 5 menit atau login dengan kredensial yang benar untuk reset counter

### Test Excessive Refresh:
1. Buka halaman public (misalnya homepage)
2. Tekan F5 atau refresh browser sebanyak 15 kali dalam 1 menit
3. Pada refresh ke-16, akan diarahkan ke halaman 404
4. Tunggu 1 menit untuk reset counter

---

## Cache Requirements

Kedua middleware ini menggunakan Laravel Cache dan RateLimiter. Pastikan:
1. Cache driver dikonfigurasi dengan benar di `.env`:
```env
CACHE_DRIVER=redis  # atau file, database, memcached
```

2. Untuk performa terbaik, gunakan **Redis**:
```env
CACHE_DRIVER=redis
REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379
```

3. Jika menggunakan file cache, pastikan folder `storage/framework/cache` writable

---

## Log Monitoring

Aktivitas mencurigakan dari excessive refresh akan dicatat di `storage/logs/laravel.log`:
```
[2024-XX-XX XX:XX:XX] local.WARNING: Excessive page refresh detected 
{"ip":"192.168.1.100","url":"https://example.com/page","user_agent":"Mozilla/5.0...","attempts":15}
```

---

## Troubleshooting

### Problem: User legitimate mendapat error 404
**Solusi:** Tingkatkan nilai `$maxAttempts` di `PreventExcessiveRefresh.php` dari 15 ke angka yang lebih tinggi (misal 30).

### Problem: Login throttle terlalu ketat
**Solusi:** Di `ThrottleFailedLogins.php`, ubah:
- Baris `RateLimiter::tooManyAttempts($key, 10)` - ubah 10 ke angka lebih tinggi
- Baris `RateLimiter::hit($key, 300)` - ubah 300 (detik) untuk waktu tunggu yang lebih singkat

### Problem: Cache tidak berfungsi
**Solusi:** 
```bash
php artisan config:clear
php artisan cache:clear
php artisan config:cache
```

---

## Keamanan Tambahan

Middleware ini bekerja bersama dengan:
1. **BlockIpMiddleware** - Memblokir IP yang masuk blacklist
2. **ThreatDetectionService** - Mendeteksi aktivitas mencurigakan
3. **ActivityLog** - Mencatat semua aktivitas login/logout

Kombinasi ini memberikan perlindungan berlapis terhadap:
- ✅ Brute force attack
- ✅ DDoS attack
- ✅ Bot scraping
- ✅ Excessive resource usage
