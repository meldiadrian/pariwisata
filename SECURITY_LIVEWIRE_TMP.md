# Keamanan Folder livewire-tmp

## Ringkasan Implementasi

Sistem keamanan telah ditambahkan untuk melindungi folder `storage/app/public/livewire-tmp` dari eksekusi file dan akses publik yang tidak diinginkan.

## Fitur Keamanan yang Diterapkan

### 1. **Proteksi File Sistem (.htaccess & web.config)**
- **Lokasi**: `storage/app/public/livewire-tmp/`
- **File**: `.htaccess`, `web.config`, `index.php`
- **Fungsi**:
  - Memblokir eksekusi semua file PHP dan script executable
  - Mencegah directory listing
  - Memblokir akses langsung ke folder dari browser
  - Support untuk Apache dan IIS/Nginx

### 2. **Middleware Keamanan Upload**
- **File**: `app/Http/Middleware/SecureLivewireUploads.php`
- **Fungsi**:
  - Memverifikasi autentikasi user sebelum upload
  - Memblokir ekstensi file berbahaya (php, exe, bat, sh, dll)
  - Validasi MIME type file
  - Mendeteksi double extension attack (contoh: file.php.jpg)
  - Rate limiting untuk mencegah spam upload

### 3. **Route Protection**
- **File**: `routes/web.php`
- **Fungsi**: Memblokir semua akses langsung ke URL `storage/livewire-tmp/*`
- **Response**: HTTP 403 Forbidden

### 4. **Auto Cleanup**
- **File**: `routes/console.php`
- **Fungsi**: 
  - Otomatis menghapus file temporary yang lebih dari 1 jam
  - Berjalan setiap jam via Laravel Scheduler
  - Melindungi file sistem (.htaccess, web.config, index.php)

### 5. **Konfigurasi Livewire**
- **File**: `config/livewire.php`
- **Update**:
  - Menggunakan disk `local` untuk keamanan lebih baik
  - Ukuran maksimum file 10MB
  - Rate limiting aktif (60 request per menit)
  - Validasi file type yang ketat
  - Cleanup otomatis untuk file > 24 jam

## Ekstensi File yang Diblokir

Sistem memblokir upload dan eksekusi file dengan ekstensi berikut:

```
php, php3, php4, php5, phtml, exe, bat, cmd, com, pif, 
scr, vbs, js, jar, sh, py, pl, cgi, asp, aspx, jsp, 
html, htm, shtml
```

## MIME Type yang Diizinkan

Hanya file dengan MIME type berikut yang diizinkan:

**Gambar:**
- image/jpeg, image/png, image/gif, image/webp, image/bmp

**Video:**
- video/mp4, video/mpeg, video/quicktime, video/x-msvideo

**Audio:**
- audio/mpeg, audio/wav, audio/x-m4a

**Dokumen:**
- application/pdf
- application/msword
- application/vnd.openxmlformats-officedocument.wordprocessingml.document

## Cara Kerja

1. **Upload File**:
   - User harus login/authenticated
   - File divalidasi sebelum upload
   - Hanya tipe file yang diizinkan yang bisa diupload
   - File disimpan temporary di `livewire-tmp`

2. **Pemrosesan**:
   - Livewire memproses file
   - File dipindahkan ke lokasi permanent setelah submit form
   - File temporary akan dihapus otomatis

3. **Cleanup**:
   - Setiap jam, sistem membersihkan file > 1 jam
   - File yang tidak terpakai > 24 jam otomatis terhapus (Livewire default)

## Testing Keamanan

### Test 1: Akses Langsung via Browser
```
https://yourdomain.com/storage/livewire-tmp/
```
**Expected**: HTTP 403 Forbidden

### Test 2: Upload File PHP
Coba upload file dengan ekstensi `.php`
**Expected**: Upload ditolak dengan pesan error

### Test 3: Upload dengan Double Extension
Coba upload file `malicious.php.jpg`
**Expected**: Upload ditolak dengan pesan error

### Test 4: Upload Tanpa Login
Logout dari admin panel, coba upload file
**Expected**: HTTP 403 Unauthorized

## Maintenance

### Menjalankan Cleanup Manual
```bash
php artisan schedule:run
```

### Melihat Log Keamanan
Periksa log Laravel di `storage/logs/` untuk melihat percobaan akses yang diblokir.

### Update Tipe File yang Diizinkan
Edit file `app/Http/Middleware/SecureLivewireUploads.php` bagian `$allowedMimes`.

## Rekomendasi Tambahan

1. **Set Proper Permissions**:
   ```bash
   # Linux/Mac
   chmod 755 storage/app/public/livewire-tmp
   chmod 644 storage/app/public/livewire-tmp/.htaccess
   ```

2. **Monitoring**:
   - Monitor folder size secara berkala
   - Setup alert jika ada file mencurigakan
   - Audit log upload secara berkala

3. **Backup**:
   - Exclude folder `livewire-tmp` dari backup (file temporary)
   - Pastikan proteksi file (.htaccess, web.config) ter-backup

4. **WAF (Web Application Firewall)**:
   - Gunakan CloudFlare atau WAF lainnya untuk proteksi tambahan
   - Enable rate limiting di level server

## Troubleshooting

### File Upload Gagal
1. Cek apakah user sudah login
2. Verifikasi tipe file yang diupload
3. Cek log di `storage/logs/laravel.log`

### File Tidak Terhapus Otomatis
1. Pastikan cron job/scheduler berjalan:
   ```bash
   php artisan schedule:work
   ```
2. Atau setup cron di server:
   ```
   * * * * * cd /path-to-your-project && php artisan schedule:run >> /dev/null 2>&1
   ```

### Proteksi Tidak Bekerja
1. Restart web server:
   ```bash
   # Apache
   sudo service apache2 restart
   
   # Nginx
   sudo service nginx restart
   ```
2. Clear cache aplikasi:
   ```bash
   php artisan config:clear
   php artisan route:clear
   php artisan cache:clear
   ```

## Keamanan Level Server

Untuk keamanan maksimal, tambahkan juga di level server:

### Nginx Configuration
```nginx
location ~* /storage/livewire-tmp/ {
    deny all;
    return 403;
}
```

### Apache Configuration (httpd.conf atau virtualhost)
```apache
<DirectoryMatch "^.*/storage/app/public/livewire-tmp">
    Require all denied
</DirectoryMatch>
```

## Changelog

- **2025-01-30**: Implementasi awal sistem keamanan livewire-tmp
  - Proteksi file sistem
  - Middleware upload security
  - Route protection
  - Auto cleanup
  - Dokumentasi lengkap

## Kontak

Jika ada pertanyaan atau menemukan celah keamanan, silakan hubungi tim development.
