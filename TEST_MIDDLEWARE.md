# Panduan Testing Middleware Security

## Persiapan Testing

### 1. Clear Cache Terlebih Dahulu
```bash
php artisan cache:clear
php artisan config:clear
php artisan config:cache
```

### 2. Pastikan Cache Driver Berfungsi
Cek file `.env`:
```env
CACHE_DRIVER=file  # atau redis jika sudah setup
```

---

## Test 1: Throttle Failed Login (10x Login Gagal)

### Langkah-langkah:

1. **Buka halaman login admin** (biasanya `/admin/login`)

2. **Login dengan password salah 10 kali berturut-turut**
   - Email: `test@example.com` (email apa saja)
   - Password: `wrongpassword123`

3. **Pada percobaan ke-11**, Anda akan melihat pesan error:
   ```
   Terlalu banyak percobaan login gagal. Silakan coba lagi dalam X detik.
   ```

4. **Tunggu 5 menit** atau **login dengan kredensial yang benar** untuk mereset counter

### Expected Result:
- ✅ Percobaan 1-10: Pesan "Email atau password salah"
- ✅ Percobaan 11+: Pesan "Terlalu banyak percobaan... tunggu X detik"
- ✅ Setelah login berhasil: Counter direset
- ✅ Setelah 5 menit: Counter expired, bisa coba lagi

### Debug:
Jika tidak berfungsi, cek log:
```bash
tail -f storage/logs/laravel.log
```

---

## Test 2: Prevent Excessive Refresh

### Langkah-langkah:

1. **Buka halaman public** (misalnya homepage `/`)

2. **Tekan F5 atau Ctrl+R sebanyak 15 kali** dalam waktu kurang dari 1 menit

3. **Pada refresh ke-16**, Anda akan diarahkan ke **halaman 404**

4. **Tunggu 1 menit** untuk mereset counter

### Expected Result:
- ✅ Refresh 1-15: Halaman normal
- ✅ Refresh 16+: Error 404
- ✅ Setelah 1 menit: Bisa akses normal lagi

### Catatan Penting:
- ❌ **Tidak berlaku** untuk halaman admin (`/admin/*`)
- ❌ **Tidak berlaku** untuk API (`/api/*`)
- ❌ **Tidak berlaku** untuk request AJAX
- ✅ **Hanya berlaku** untuk halaman public

### Debug:
Cek log untuk melihat aktivitas mencurigakan:
```bash
tail -f storage/logs/laravel.log | grep "Excessive page refresh"
```

---

## Test 3: Kombinasi IP + Email (Login Throttle)

### Scenario A: User berbeda dari IP yang sama
1. Login gagal 5x dengan `user1@example.com`
2. Login gagal 5x dengan `user2@example.com`
3. Coba lagi dengan `user1@example.com`

**Expected:** Masih bisa login (karena counter per kombinasi email+IP)

### Scenario B: User sama dari browser berbeda (user agent berbeda)
1. Buka browser Chrome, login gagal 5x dengan `test@example.com`
2. Buka browser Firefox, login gagal 5x dengan `test@example.com`

**Expected:** Akan diblokir karena IP + Email sama (user agent tidak mempengaruhi)

---

## Test 4: Cache Key Verification

### Cek apakah cache key tersimpan:

```bash
# Jika menggunakan file cache
ls -la storage/framework/cache/data/
```

Atau jalankan tinker:
```bash
php artisan tinker
```

```php
// Cek login attempts
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\RateLimiter;

// Contoh untuk email test@example.com dan IP 127.0.0.1
$key = 'login_attempts:' . sha1('test@example.com|127.0.0.1');
echo "Attempts: " . Cache::get($key, 0);

// Atau menggunakan RateLimiter
echo "Available in: " . RateLimiter::availableIn($key) . " seconds";
```

---

## Test 5: Clear Throttle Manual (Untuk Development)

Jika Anda perlu clear throttle secara manual untuk testing:

```bash
php artisan tinker
```

```php
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\RateLimiter;

// Clear semua login attempts
Cache::flush();
// atau
RateLimiter::clear('login_attempts:' . sha1('email@example.com|127.0.0.1'));

// Clear excessive refresh
$key = 'page_refresh:' . sha1('127.0.0.1|http://localhost|Mozilla...');
Cache::forget($key);
```

---

## Monitoring Real-time

### Monitor Activity Log (untuk login attempts):
```bash
php artisan tinker
```

```php
use App\Models\ActivityLog;

// Lihat 10 login terakhir
ActivityLog::where('activity', 'failed_login')
    ->latest()
    ->limit(10)
    ->get(['ip_address', 'created_at', 'user_agent']);
```

### Monitor Log File:
```bash
# Windows PowerShell
Get-Content storage/logs/laravel.log -Wait -Tail 50

# Atau jika punya tail
tail -f storage/logs/laravel.log
```

---

## Troubleshooting

### Problem: Middleware tidak aktif

**Checklist:**
1. ✅ Sudah run `php artisan config:clear`?
2. ✅ File middleware ada di `app/Http/Middleware/`?
3. ✅ Sudah didaftarkan di `bootstrap/app.php`?
4. ✅ Cache driver berfungsi? Test dengan:
   ```php
   Cache::put('test', 'value', 60);
   echo Cache::get('test'); // Should output: value
   ```

### Problem: Selalu kena throttle meskipun login benar

**Solusi:**
```bash
php artisan cache:clear
php artisan config:clear
```

### Problem: 404 terus muncul di halaman public

**Solusi:** Buka `app/Http/Middleware/PreventExcessiveRefresh.php` dan tingkatkan:
```php
protected int $maxAttempts = 30; // dari 15 ke 30
```

---

## Custom Configuration (Opsional)

### Ubah Batas Login Attempts:
File: `app/Http/Middleware/ThrottleFailedLogins.php`

```php
// Line ~21, ubah dari 10 ke angka lain
if (RateLimiter::tooManyAttempts($key, 15)) { // 15 attempts

// Line ~37, ubah waktu tunggu dari 300 detik (5 menit)
RateLimiter::hit($key, 600); // 600 = 10 menit
```

### Ubah Batas Refresh:
File: `app/Http/Middleware/PreventExcessiveRefresh.php`

```php
protected int $maxAttempts = 20;      // dari 15 ke 20
protected int $decaySeconds = 120;    // dari 60 ke 120 detik
```

---

## Production Checklist

Sebelum deploy ke production:

- [ ] Test semua scenario di staging
- [ ] Pastikan cache driver production-ready (Redis recommended)
- [ ] Setup monitoring untuk log `Excessive page refresh`
- [ ] Setup alert untuk failed login attempts
- [ ] Dokumentasikan custom configuration jika ada
- [ ] Test dengan user real untuk memastikan tidak mengganggu UX
- [ ] Backup database activity_logs secara berkala

---

## Support

Jika ada masalah atau pertanyaan, periksa:
1. File log: `storage/logs/laravel.log`
2. Activity log database: tabel `activity_logs`
3. Cache status: `php artisan cache:clear`
