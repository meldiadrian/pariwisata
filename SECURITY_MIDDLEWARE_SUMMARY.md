# 🔒 Security Middleware - Ringkasan Implementasi

## ✅ Yang Sudah Dibuat

### 1. Middleware Files
- ✅ `app/Http/Middleware/ThrottleFailedLogins.php` - Batasi login gagal
- ✅ `app/Http/Middleware/PreventExcessiveRefresh.php` - Batasi refresh berlebihan
- ✅ `app/Listeners/ClearLoginAttempts.php` - Clear counter saat login berhasil

### 2. Configuration Files
- ✅ `bootstrap/app.php` - Middleware sudah terdaftar
- ✅ `app/Providers/AppServiceProvider.php` - Event listener sudah terdaftar

### 3. Documentation Files
- ✅ `MIDDLEWARE_SECURITY.md` - Dokumentasi lengkap fitur
- ✅ `TEST_MIDDLEWARE.md` - Panduan testing
- ✅ `MIDDLEWARE_CONFIG.md` - Panduan konfigurasi
- ✅ `SECURITY_MIDDLEWARE_SUMMARY.md` - File ini

---

## 🎯 Fitur yang Telah Diimplementasi

### A. Throttle Failed Login (Batasi Login Gagal)
```
✓ Maksimal 10 kali login gagal
✓ Blokir selama 5 menit setelah limit tercapai
✓ Otomatis reset saat login berhasil
✓ Throttle per kombinasi IP + Email
✓ Pesan error yang informatif
```

**Cara Kerja:**
1. User coba login dengan password salah
2. Sistem catat percobaan berdasarkan IP + Email
3. Setelah 10x gagal → tunggu 5 menit
4. Login berhasil → counter reset otomatis

### B. Prevent Excessive Refresh (Batasi Refresh Berlebihan)
```
✓ Maksimal 15 kali refresh dalam 60 detik
✓ Redirect ke halaman 404 setelah limit
✓ Tidak berlaku untuk admin panel, API, AJAX
✓ Log aktivitas mencurigakan
✓ Auto reset setelah 1 menit
```

**Cara Kerja:**
1. User refresh halaman public
2. Sistem catat berdasarkan IP + URL + Browser
3. Setelah 15x dalam 1 menit → redirect ke 404
4. Tunggu 1 menit → bisa akses lagi

---

## 📋 Cara Menggunakan

### Langkah 1: Clear Cache
```bash
php artisan config:clear
php artisan cache:clear
php artisan config:cache
```

### Langkah 2: Pastikan Cache Berfungsi
Cek file `.env`:
```env
CACHE_DRIVER=file  # atau redis untuk production
```

### Langkah 3: Test Middleware

#### Test Login Throttle:
1. Buka `/admin/login`
2. Login dengan password salah 10x
3. Pada percobaan ke-11 akan muncul error
4. Tunggu 5 menit atau login dengan benar

#### Test Refresh Prevention:
1. Buka homepage `/`
2. Tekan F5 sebanyak 15x
3. Pada refresh ke-16 akan redirect ke 404
4. Tunggu 1 menit untuk reset

---

## ⚙️ Konfigurasi Default

| Setting | Default Value | Lokasi |
|---------|---------------|--------|
| Max login attempts | 10 kali | `ThrottleFailedLogins.php` line 21 |
| Login wait time | 300 detik (5 menit) | `ThrottleFailedLogins.php` line 37 |
| Max refresh | 15 kali | `PreventExcessiveRefresh.php` line 14 |
| Refresh window | 60 detik | `PreventExcessiveRefresh.php` line 19 |

---

## 🔧 Cara Mengubah Setting

### Ubah Batas Login Attempts:
**File:** `app/Http/Middleware/ThrottleFailedLogins.php`

```php
// Line 21 - Ubah dari 10 ke angka lain
if (RateLimiter::tooManyAttempts($key, 15)) { // Jadi 15 attempts

// Line 37 - Ubah waktu tunggu (detik)
RateLimiter::hit($key, 600); // Jadi 10 menit (600 detik)
```

### Ubah Batas Refresh:
**File:** `app/Http/Middleware/PreventExcessiveRefresh.php`

```php
// Line 14
protected int $maxAttempts = 20; // Ubah dari 15 ke 20

// Line 19
protected int $decaySeconds = 120; // Ubah dari 60 ke 120 detik
```

### Exclude Route dari Throttle Refresh:
**File:** `app/Http/Middleware/PreventExcessiveRefresh.php`

```php
// Line 26-30, tambah route
if ($request->ajax() || 
    $request->is('api/*') || 
    $request->is('admin/*') ||
    $request->is('your-custom-route/*')) { // Tambah ini
    return $next($request);
}
```

---

## 📊 Monitoring & Debugging

### 1. Lihat Log Real-time:
```bash
# PowerShell
Get-Content storage/logs/laravel.log -Wait -Tail 50
```

### 2. Cek Activity Log (Login Attempts):
```bash
php artisan tinker
```
```php
use App\Models\ActivityLog;

ActivityLog::where('activity', 'failed_login')
    ->latest()
    ->take(10)
    ->get(['ip_address', 'created_at']);
```

### 3. Cek Cache Status:
```php
use Illuminate\Support\Facades\Cache;

// Test cache
Cache::put('test', 'value', 60);
echo Cache::get('test'); // Should return: value
```

### 4. Clear Throttle Manual (Development):
```bash
php artisan cache:clear
```

---

## 🚨 Troubleshooting

### Problem: Middleware tidak berfungsi
**Solusi:**
```bash
php artisan config:clear
php artisan cache:clear
php artisan config:cache
```

### Problem: Selalu kena throttle
**Penyebab:** Cache masih menyimpan counter lama
**Solusi:**
```bash
php artisan cache:clear
```

### Problem: User legitimate kena 404
**Penyebab:** Batas refresh terlalu ketat
**Solusi:** Tingkatkan `$maxAttempts` di `PreventExcessiveRefresh.php`

### Problem: Login throttle terlalu ketat
**Solusi:** 
- Tingkatkan max attempts dari 10 ke 15-20
- Kurangi decay time dari 300 ke 180 detik

---

## 🎯 Rekomendasi Setting

### Website Normal (Blog/Portal Berita):
```php
// Login
Max attempts: 10
Wait time: 300 seconds (5 minutes)

// Refresh
Max refresh: 20
Window: 60 seconds
```

### High Security (Banking/Government):
```php
// Login
Max attempts: 5
Wait time: 900 seconds (15 minutes)

// Refresh
Max refresh: 10
Window: 60 seconds
```

### Development Environment:
```php
// Login
Max attempts: 50
Wait time: 60 seconds

// Refresh
Max refresh: 100
Window: 120 seconds
```

---

## 🔗 Integrasi dengan Sistem Existing

Middleware ini terintegrasi dengan sistem keamanan yang sudah ada:

### 1. BlockIpMiddleware
- Memblokir IP yang ada di blacklist
- Bekerja sebelum throttle middleware
- Database: `blocked_ips` table

### 2. ThreatDetectionService
- Analisis pola aktivitas mencurigakan
- Otomatis block IP jika terdeteksi ancaman
- Log ke `activity_logs` table

### 3. ActivityLog Model
- Mencatat semua aktivitas login/logout
- Mencatat failed login attempts
- Data untuk analisis keamanan

**Flow Keamanan:**
```
Request 
  → BlockIpMiddleware (cek blacklist)
  → PreventExcessiveRefresh (cek refresh)
  → ThrottleFailedLogins (cek login attempts)
  → ThreatDetectionService (analisis pattern)
  → ActivityLog (catat aktivitas)
```

---

## 📚 File Dokumentasi

1. **MIDDLEWARE_SECURITY.md**
   - Penjelasan lengkap fitur
   - Cache requirements
   - Log monitoring
   - Troubleshooting guide

2. **TEST_MIDDLEWARE.md**
   - Step-by-step testing guide
   - Test scenarios
   - Debug commands
   - Expected results

3. **MIDDLEWARE_CONFIG.md**
   - Configuration reference
   - Environment-based config
   - Per-role configuration
   - Whitelist IP setup
   - Redis configuration

---

## ✅ Checklist Deployment

### Development:
- [x] Middleware files created
- [x] Configuration registered
- [x] Event listener setup
- [ ] Test login throttle
- [ ] Test refresh prevention
- [ ] Verify cache working

### Staging:
- [ ] Deploy ke staging
- [ ] Test dengan multiple users
- [ ] Monitor logs 24 jam
- [ ] Adjust settings jika perlu
- [ ] Performance testing

### Production:
- [ ] Setup Redis (recommended)
- [ ] Update .env dengan setting production
- [ ] Deploy middleware
- [ ] Monitor logs intensif
- [ ] Setup alerting untuk excessive attempts
- [ ] Document custom configuration

---

## 🎉 Summary

**Anda sekarang memiliki:**

✅ Proteksi dari brute force login attack  
✅ Proteksi dari bot/scraper yang refresh berlebihan  
✅ Logging lengkap untuk monitoring  
✅ Konfigurasi yang fleksibel  
✅ Dokumentasi lengkap  
✅ Testing guide yang detail  

**Next Steps:**
1. Test middleware di local environment
2. Adjust setting sesuai kebutuhan
3. Deploy ke staging untuk testing lebih lanjut
4. Monitor dan analyze logs
5. Deploy ke production

---

## 📞 Support & Resources

**Log Files:**
- Application: `storage/logs/laravel.log`
- Activity: Database table `activity_logs`
- Blocked IPs: Database table `blocked_ips`

**Commands:**
```bash
# Clear cache
php artisan cache:clear

# View logs
Get-Content storage/logs/laravel.log -Wait -Tail 50

# Tinker
php artisan tinker
```

**Documentation Files:**
- `MIDDLEWARE_SECURITY.md` - Feature docs
- `TEST_MIDDLEWARE.md` - Testing guide
- `MIDDLEWARE_CONFIG.md` - Configuration reference
- `SECURITY_MIDDLEWARE_SUMMARY.md` - This file
