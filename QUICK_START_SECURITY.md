# 🚀 Quick Start - Security Middleware

## Instalasi Sudah Selesai! ✅

Middleware keamanan sudah terinstal dan terkonfigurasi. Anda hanya perlu **test dan sesuaikan setting**.

---

## ⚡ Langkah Cepat (5 Menit)

### 1. Clear Cache (WAJIB)
```bash
cd c:\laragon\www\news
php artisan config:clear
php artisan cache:clear
php artisan config:cache
```

### 2. Cek File .env
Pastikan cache driver sudah diset:
```env
CACHE_DRIVER=file
```

### 3. Test Sekarang!

#### A. Test Login Throttle (2 menit)
1. Buka browser: `http://localhost/admin/login`
2. Coba login dengan email: `test@test.com` password: `salah123`
3. Ulangi 10 kali
4. **Hasil:** Pada percobaan ke-11 muncul pesan error "Terlalu banyak percobaan..."

#### B. Test Refresh Prevention (1 menit)
1. Buka homepage: `http://localhost`
2. Tekan **F5** sebanyak 15 kali cepat-cepat
3. **Hasil:** Pada refresh ke-16 akan redirect ke halaman 404

### 4. Selesai! 🎉

Jika kedua test berhasil, middleware sudah berfungsi dengan baik.

---

## 🎯 Yang Sudah Aktif

### ✅ Proteksi Login
- Maksimal **10x login gagal**
- Blokir **5 menit** setelah limit
- Auto reset saat login berhasil

### ✅ Proteksi Refresh
- Maksimal **15x refresh** per menit
- Redirect ke **404** jika melebihi
- Auto reset setelah 1 menit

### ✅ Area yang Dikecualikan
- Admin panel (`/admin/*`)
- API endpoints (`/api/*`)
- AJAX requests
- Livewire requests

---

## ⚙️ Ubah Setting (Opsional)

### Jika 10x terlalu sedikit untuk login:
**File:** `app/Http/Middleware/ThrottleFailedLogins.php`

Baris 21, ubah **10** ke angka lain:
```php
if (RateLimiter::tooManyAttempts($key, 15)) { // 15 attempts
```

### Jika 15x refresh terlalu sedikit:
**File:** `app/Http/Middleware/PreventExcessiveRefresh.php`

Baris 14, ubah **15** ke angka lain:
```php
protected int $maxAttempts = 25; // 25 refresh
```

### Setelah ubah setting:
```bash
php artisan config:clear
```

---

## 📊 Monitoring Sederhana

### Lihat log real-time:
```bash
Get-Content storage/logs/laravel.log -Wait -Tail 20
```

### Lihat failed login attempts (via Tinker):
```bash
php artisan tinker
```
```php
use App\Models\ActivityLog;
ActivityLog::where('activity', 'failed_login')->latest()->take(5)->get();
exit
```

---

## 🚨 Troubleshooting Cepat

### Middleware tidak berfungsi?
```bash
php artisan config:clear
php artisan cache:clear
```

### Selalu kena blokir?
```bash
php artisan cache:clear
```

### User complain kena 404 terus?
Tingkatkan `$maxAttempts` di `PreventExcessiveRefresh.php` dari 15 ke 30.

---

## 📚 Dokumentasi Lengkap

Jika butuh detail lebih lanjut, baca file ini:

1. **SECURITY_MIDDLEWARE_SUMMARY.md** ← Mulai dari sini
2. **MIDDLEWARE_SECURITY.md** - Penjelasan fitur lengkap
3. **TEST_MIDDLEWARE.md** - Testing guide detail
4. **MIDDLEWARE_CONFIG.md** - Konfigurasi advanced

---

## ✅ Checklist

- [ ] Sudah run `php artisan config:clear`
- [ ] Sudah test login throttle (10x salah)
- [ ] Sudah test refresh prevention (15x F5)
- [ ] Cek log: `storage/logs/laravel.log`
- [ ] Sesuaikan setting jika perlu

---

## 🎯 Rekomendasi

**Untuk website biasa (blog, portal berita):**
- Login: 10 attempts, 5 menit wait ← **Default (sudah OK)**
- Refresh: 20 attempts, 60 detik window

**Untuk high traffic website:**
- Login: tetap 10 attempts
- Refresh: 30 attempts, 60 detik window

**Untuk development:**
- Login: 50 attempts, 1 menit wait
- Refresh: 100 attempts, 2 menit window

---

## 🎉 Done!

Security middleware Anda sudah siap. Monitoring dan adjust sesuai kebutuhan.

**Tips:** Monitor log selama 1-2 hari pertama untuk memastikan tidak ada false positive (user legitimate yang kena block).
