# 🔒 Security Middleware - Complete Guide

## 📋 Daftar Isi

Dokumentasi lengkap untuk Security Middleware yang melindungi aplikasi dari:
- ✅ Brute force login attacks
- ✅ Excessive page refresh (DDoS/Bot)
- ✅ Suspicious activity

---

## 🚀 Mulai dari Sini

### **1. [QUICK_START_SECURITY.md](QUICK_START_SECURITY.md)** ⭐ START HERE
- Instalasi sudah selesai
- Test dalam 5 menit
- Langkah cepat untuk memulai
- **BACA INI DULU!**

---

## 📚 Dokumentasi Utama

### **2. [SECURITY_MIDDLEWARE_SUMMARY.md](SECURITY_MIDDLEWARE_SUMMARY.md)**
- Overview lengkap semua fitur
- Checklist deployment
- Integrasi dengan sistem existing
- Rekomendasi setting

### **3. [MIDDLEWARE_SECURITY.md](MIDDLEWARE_SECURITY.md)**
- Penjelasan detail fitur
- Cara kerja middleware
- Cache requirements
- Log monitoring
- Troubleshooting

### **4. [TEST_MIDDLEWARE.md](TEST_MIDDLEWARE.md)**
- Step-by-step testing guide
- Test scenarios lengkap
- Debug commands
- Expected results
- Real-time monitoring

### **5. [MIDDLEWARE_CONFIG.md](MIDDLEWARE_CONFIG.md)**
- Configuration reference
- Environment-based config
- Per-role configuration
- Whitelist IP setup
- Redis configuration
- Production setup

---

## 📂 Struktur File

### Middleware Files
```
app/Http/Middleware/
├── ThrottleFailedLogins.php         # Batasi login gagal (10x/5min)
└── PreventExcessiveRefresh.php      # Batasi refresh (15x/1min)
```

### Listener Files
```
app/Listeners/
└── ClearLoginAttempts.php           # Clear counter saat login berhasil
```

### Configuration Files
```
bootstrap/
└── app.php                          # Middleware registration

app/Providers/
└── AppServiceProvider.php           # Event listener registration
```

### Documentation Files
```
root/
├── QUICK_START_SECURITY.md          # ⭐ Quick start (5 menit)
├── SECURITY_MIDDLEWARE_SUMMARY.md   # Overview lengkap
├── MIDDLEWARE_SECURITY.md           # Dokumentasi fitur
├── TEST_MIDDLEWARE.md               # Testing guide
├── MIDDLEWARE_CONFIG.md             # Configuration reference
└── README_SECURITY_MIDDLEWARE.md    # File ini
```

---

## ⚡ Quick Commands

### Clear Cache (Run ini dulu!)
```bash
php artisan config:clear
php artisan cache:clear
php artisan config:cache
```

### Test Login Throttle
```bash
# 1. Buka: http://localhost/admin/login
# 2. Login salah 10x
# 3. Percobaan ke-11 akan error
```

### Test Refresh Prevention
```bash
# 1. Buka: http://localhost
# 2. Tekan F5 15x
# 3. Refresh ke-16 akan ke 404
```

### Monitor Logs
```bash
Get-Content storage/logs/laravel.log -Wait -Tail 20
```

### Check Activity Logs
```bash
php artisan tinker

use App\Models\ActivityLog;
ActivityLog::where('activity', 'failed_login')->latest()->take(5)->get();
```

---

## 🎯 Fitur yang Sudah Aktif

### ✅ Throttle Failed Login
- **10 percobaan login gagal** → blokir 5 menit
- Throttle per **IP + Email**
- Auto reset saat **login berhasil**
- Pesan error informatif
- Log semua percobaan gagal

### ✅ Prevent Excessive Refresh
- **15 refresh** per menit → redirect ke 404
- Throttle per **IP + URL + Browser**
- Auto reset setelah **1 menit**
- Log aktivitas mencurigakan
- **Tidak berlaku** untuk:
  - Admin panel (`/admin/*`)
  - API (`/api/*`)
  - AJAX requests
  - Livewire requests

---

## ⚙️ Default Configuration

| Setting | Value | File | Line |
|---------|-------|------|------|
| Max login attempts | 10 | ThrottleFailedLogins.php | 21 |
| Login wait time | 300s (5min) | ThrottleFailedLogins.php | 37 |
| Max refresh | 15 | PreventExcessiveRefresh.php | 14 |
| Refresh window | 60s (1min) | PreventExcessiveRefresh.php | 19 |

---

## 🔧 Cara Mengubah Setting

### Ubah Max Login Attempts (10 → 15)
**File:** `app/Http/Middleware/ThrottleFailedLogins.php` line 21

```php
if (RateLimiter::tooManyAttempts($key, 15)) { // Ubah dari 10 ke 15
```

### Ubah Max Refresh (15 → 25)
**File:** `app/Http/Middleware/PreventExcessiveRefresh.php` line 14

```php
protected int $maxAttempts = 25; // Ubah dari 15 ke 25
```

**Jangan lupa:**
```bash
php artisan config:clear
```

---

## 📊 Flow Diagram

```
┌─────────────────────────────────────────────────────────┐
│                    Incoming Request                      │
└────────────────────┬────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────┐
│          BlockIpMiddleware (cek blacklist)              │
└────────────────────┬────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────┐
│     PreventExcessiveRefresh (cek refresh count)         │
│     • Max 15x per menit                                 │
│     • Redirect ke 404 jika melebihi                     │
└────────────────────┬────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────┐
│       ThrottleFailedLogins (cek login attempts)         │
│       • Max 10x gagal                                   │
│       • Blokir 5 menit                                  │
└────────────────────┬────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────┐
│          ThreatDetectionService (analisis)              │
└────────────────────┬────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────┐
│         ActivityLog (catat semua aktivitas)             │
└─────────────────────────────────────────────────────────┘
```

---

## 🚨 Troubleshooting Quick Reference

| Problem | Solution |
|---------|----------|
| Middleware tidak jalan | `php artisan config:clear && php artisan cache:clear` |
| Selalu kena throttle | `php artisan cache:clear` |
| User legitimate kena 404 | Tingkatkan `$maxAttempts` di PreventExcessiveRefresh |
| Login throttle terlalu ketat | Tingkatkan max attempts atau kurangi wait time |
| Cache tidak berfungsi | Cek `.env` → `CACHE_DRIVER=file` |

---

## 📈 Rekomendasi Setting

### Website Normal (Blog/Portal)
```php
// Login
Max attempts: 10 (default)
Wait time: 300s (5 min)

// Refresh
Max refresh: 20 (ubah dari 15)
Window: 60s
```

### High Security (Banking)
```php
// Login
Max attempts: 5
Wait time: 900s (15 min)

// Refresh
Max refresh: 10
Window: 60s
```

### Development
```php
// Login
Max attempts: 50
Wait time: 60s

// Refresh
Max refresh: 100
Window: 120s
```

---

## 🎯 Roadmap Lanjutan (Opsional)

### Phase 1 (Current) ✅
- [x] Login throttle
- [x] Refresh prevention
- [x] Basic logging
- [x] Event integration

### Phase 2 (Future)
- [ ] Email notification untuk admin
- [ ] Dashboard untuk monitoring
- [ ] Whitelist IP management UI
- [ ] Per-role configuration UI
- [ ] Redis setup automation

### Phase 3 (Advanced)
- [ ] Machine learning threat detection
- [ ] Geo-blocking
- [ ] Advanced bot detection
- [ ] Captcha integration

---

## 📞 Support & Contact

### Log Files
- **Application Log:** `storage/logs/laravel.log`
- **Activity Log:** Database table `activity_logs`
- **Blocked IPs:** Database table `blocked_ips`

### Useful Commands
```bash
# View logs
Get-Content storage/logs/laravel.log -Wait -Tail 50

# Clear cache
php artisan cache:clear

# Check cache
php artisan tinker
>>> Cache::get('test')

# View failed logins
php artisan tinker
>>> ActivityLog::where('activity', 'failed_login')->count()
```

---

## ✅ Final Checklist

### Sebelum Production:
- [ ] Test login throttle di local
- [ ] Test refresh prevention di local
- [ ] Deploy ke staging
- [ ] Monitor logs selama 24-48 jam
- [ ] Adjust setting jika ada false positive
- [ ] Setup Redis untuk production
- [ ] Backup database
- [ ] Deploy ke production
- [ ] Monitor logs intensif minggu pertama

---

## 🎉 Summary

**Anda sekarang punya:**
- ✅ 2 Middleware security yang powerful
- ✅ Integrasi dengan sistem existing
- ✅ Dokumentasi lengkap
- ✅ Testing guide
- ✅ Configuration reference
- ✅ Troubleshooting guide

**Langkah selanjutnya:**
1. Baca **QUICK_START_SECURITY.md**
2. Test di local environment
3. Adjust setting sesuai kebutuhan
4. Deploy ke staging
5. Monitor dan optimize
6. Deploy ke production

---

## 📚 Index Dokumentasi

| File | Deskripsi | Untuk Siapa |
|------|-----------|-------------|
| **QUICK_START_SECURITY.md** | Quick start guide (5 menit) | Semua orang ⭐ |
| **SECURITY_MIDDLEWARE_SUMMARY.md** | Overview lengkap | Developer, PM |
| **MIDDLEWARE_SECURITY.md** | Detail fitur dan cara kerja | Developer |
| **TEST_MIDDLEWARE.md** | Testing guide lengkap | QA, Developer |
| **MIDDLEWARE_CONFIG.md** | Configuration reference | DevOps, Developer |
| **README_SECURITY_MIDDLEWARE.md** | File ini - Navigation hub | Semua orang |

---

**Happy Coding! 🚀**
