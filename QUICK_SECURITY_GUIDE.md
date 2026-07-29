# 🔒 Quick Security Guide - Livewire Upload Protection

## ✅ Apa yang Telah Diterapkan?

### 1. **Proteksi File Sistem**
- ✓ `.htaccess` - Blokir eksekusi PHP di Apache
- ✓ `web.config` - Blokir eksekusi PHP di IIS/Nginx
- ✓ `index.php` - Blokir akses langsung

**Lokasi**: `storage/app/public/livewire-tmp/`

### 2. **Middleware Keamanan**
- ✓ Autentikasi wajib untuk upload
- ✓ Validasi tipe file (ekstensi + MIME type)
- ✓ Blokir file executable (.php, .exe, .sh, dll)
- ✓ Deteksi double extension attack
- ✓ Rate limiting (60 request/menit)

**File**: `app/Http/Middleware/SecureLivewireUploads.php`

### 3. **Route Protection**
- ✓ Semua akses ke `/storage/livewire-tmp/*` diblokir
- ✓ Return HTTP 403 Forbidden

**File**: `routes/web.php`

### 4. **Auto Cleanup**
- ✓ Hapus file > 1 jam setiap jam
- ✓ File > 24 jam otomatis terhapus (Livewire)

**File**: `routes/console.php`

### 5. **Konfigurasi Livewire**
- ✓ Disk: local (lebih aman)
- ✓ Max size: 10MB
- ✓ Throttling: aktif
- ✓ Cleanup: otomatis

**File**: `config/livewire.php`

---

## 🧪 Test Keamanan

Jalankan command berikut untuk test semua proteksi:

```bash
php artisan security:test-livewire
```

**Expected Output**: `✅ All security tests passed! (10/10)`

---

## 🚫 File Type yang Diblokir

```
php, php3, php4, php5, phtml, exe, bat, cmd, com, pif,
scr, vbs, js, jar, sh, py, pl, cgi, asp, aspx, jsp,
html, htm, shtml
```

---

## ✅ File Type yang Diizinkan

### Gambar
`jpeg, jpg, png, gif, webp, bmp`

### Video
`mp4, avi, mov, wmv`

### Audio
`mp3, wav, m4a, mpeg`

### Dokumen
`pdf, doc, docx`

---

## 📝 Cara Kerja

### Upload Process:
1. User login ke admin panel ✓
2. User pilih file untuk upload
3. **Middleware** validasi autentikasi
4. **Middleware** validasi file type
5. File disimpan temporary di `livewire-tmp`
6. Livewire proses file
7. Setelah submit, file pindah ke lokasi permanent
8. File temporary otomatis terhapus

### Protection Process:
- **Browser** akses `https://domain.com/storage/livewire-tmp/file.jpg`
  - ❌ **Route** blokir dengan HTTP 403
  
- **Direct File** akses `storage/app/public/livewire-tmp/malicious.php`
  - ❌ **htaccess/web.config** blokir eksekusi PHP
  - ❌ Return 403 Forbidden

---

## 🔧 Troubleshooting

### Problem: File upload gagal
**Solution**:
1. Pastikan user sudah login
2. Cek tipe file (hanya yang diizinkan)
3. Cek size file (max 10MB)
4. Lihat log: `storage/logs/laravel.log`

### Problem: File tidak terhapus otomatis
**Solution**:
```bash
# Test scheduler
php artisan schedule:work

# Atau setup cron (production):
* * * * * cd /path-to-project && php artisan schedule:run >> /dev/null 2>&1
```

### Problem: Proteksi tidak bekerja
**Solution**:
```bash
# Clear cache
php artisan config:clear
php artisan route:clear
php artisan cache:clear

# Restart web server
# Apache: sudo service apache2 restart
# Nginx: sudo service nginx restart

# Test lagi
php artisan security:test-livewire
```

---

## 🚀 Maintenance Commands

```bash
# Test keamanan
php artisan security:test-livewire

# Manual cleanup
php artisan schedule:run

# Clear cache
php artisan optimize:clear

# List routes
php artisan route:list --path=livewire
php artisan route:list --path=storage
```

---

## 📊 Monitoring

### Check Log Files:
```bash
# Laravel log
tail -f storage/logs/laravel.log

# Access log (Apache)
tail -f /var/log/apache2/access.log

# Error log (Apache)
tail -f /var/log/apache2/error.log
```

### Check Folder Size:
```bash
# Linux/Mac
du -sh storage/app/public/livewire-tmp

# Windows
Get-ChildItem "storage\app\public\livewire-tmp" -Recurse | Measure-Object -Property Length -Sum
```

---

## 🛡️ Security Checklist

- [x] File sistem protection (.htaccess, web.config)
- [x] Middleware validation
- [x] Route blocking
- [x] Auto cleanup
- [x] Authentication required
- [x] File type validation
- [x] MIME type validation
- [x] Double extension check
- [x] Rate limiting
- [x] Robots.txt disallow
- [x] Gitignore temporary files
- [x] Documentation complete

---

## 📚 Dokumentasi Lengkap

Untuk informasi detail, lihat: **`SECURITY_LIVEWIRE_TMP.md`**

---

## ⚠️ PENTING - Jangan Lakukan Ini!

- ❌ Hapus file protection (.htaccess, web.config, index.php)
- ❌ Upload file manual ke folder livewire-tmp
- ❌ Simpan file permanent di livewire-tmp
- ❌ Ubah permission folder sembarangan
- ❌ Disable middleware atau route protection

---

## ✅ Verification

Untuk memverifikasi sistem keamanan:

1. **Test akses browser**: `https://domain.com/storage/livewire-tmp/`
   - Expected: HTTP 403 Forbidden

2. **Test command**: `php artisan security:test-livewire`
   - Expected: 10/10 tests passed

3. **Test upload**: Upload file .php di admin panel
   - Expected: Upload ditolak

4. **Check protection files**: 
   ```bash
   ls -la storage/app/public/livewire-tmp/
   ```
   - Expected: .htaccess, web.config, index.php ada

---

## 📞 Support

Jika menemukan issue keamanan atau ada pertanyaan:
- Check dokumentasi: `SECURITY_LIVEWIRE_TMP.md`
- Run test: `php artisan security:test-livewire`
- Check logs: `storage/logs/laravel.log`

**Last Updated**: 2025-01-30
