# Konfigurasi Middleware Security

## Quick Reference

| Middleware | File | Default Setting | Dapat Diubah |
|------------|------|-----------------|--------------|
| Login Throttle | `ThrottleFailedLogins.php` | 10 attempts / 5 menit | ✅ Ya |
| Excessive Refresh | `PreventExcessiveRefresh.php` | 15 refresh / 60 detik | ✅ Ya |

---

## 1. ThrottleFailedLogins Configuration

**File:** `app/Http/Middleware/ThrottleFailedLogins.php`

### Parameter yang Dapat Diubah:

#### A. Maksimal Percobaan Login Gagal
```php
// Line ~21
if (RateLimiter::tooManyAttempts($key, 10)) {  // 👈 Ubah angka 10
    // ...
}
```

**Rekomendasi:**
- Website publik: `5-10` attempts
- Website internal: `10-15` attempts
- Development: `20+` attempts

#### B. Waktu Tunggu Setelah Limit Tercapai
```php
// Line ~37
RateLimiter::hit($key, 300);  // 👈 Ubah angka 300 (detik)
```

**Konversi:**
- `60` = 1 menit
- `300` = 5 menit (default)
- `600` = 10 menit
- `1800` = 30 menit
- `3600` = 1 jam

**Rekomendasi:**
- Low security: `180` (3 menit)
- Medium security: `300` (5 menit) ⭐ default
- High security: `900` (15 menit)
- Very high: `3600` (1 jam)

#### C. Pesan Error Custom
```php
// Line ~25-27
return back()->withErrors([
    'email' => "Terlalu banyak percobaan login gagal. Silakan coba lagi dalam {$seconds} detik."
])->withInput($request->only('email'));
```

Ubah pesan sesuai kebutuhan:
```php
'email' => "Akun Anda diblokir sementara. Coba lagi dalam {$seconds} detik."
// atau
'email' => "Too many failed attempts. Please wait {$seconds} seconds."
```

---

## 2. PreventExcessiveRefresh Configuration

**File:** `app/Http/Middleware/PreventExcessiveRefresh.php`

### Parameter yang Dapat Diubah:

#### A. Maksimal Refresh
```php
// Line ~14
protected int $maxAttempts = 15;  // 👈 Ubah angka ini
```

**Rekomendasi berdasarkan tipe website:**

| Tipe Website | Max Attempts | Alasan |
|--------------|--------------|--------|
| Blog/News | `15-20` | User sering refresh untuk update |
| E-commerce | `20-30` | User refresh saat checkout |
| Forum | `15-25` | User refresh untuk reply baru |
| Dashboard | `30-50` | User monitoring data real-time |
| API docs | `50+` | Developer testing |

#### B. Window Waktu
```php
// Line ~19
protected int $decaySeconds = 60;  // 👈 Ubah angka ini (detik)
```

**Rekomendasi:**
- Ketat: `30` detik
- Normal: `60` detik ⭐ default
- Longgar: `120` detik (2 menit)
- Sangat longgar: `300` detik (5 menit)

#### C. Route yang Dikecualikan

Tambahkan route yang tidak ingin di-throttle:

```php
// Line ~26-30
if ($request->ajax() || 
    $request->is('api/*') || 
    $request->is('admin/*') ||
    $request->is('livewire/*') ||
    $request->is('your-route/*')) {  // 👈 Tambah di sini
    return $next($request);
}
```

**Contoh route yang biasa dikecualikan:**
- `/webhooks/*` - Webhook dari payment gateway
- `/feed/*` - RSS feed
- `/sitemap.xml` - Sitemap
- `/health` - Health check endpoint
- `/metrics` - Monitoring endpoint

#### D. Response Custom untuk 404

Jika ingin redirect ke halaman custom alih-alih 404:

```php
// Line ~45, ganti:
abort(404);

// Dengan:
return redirect()->route('rate-limit-exceeded')
    ->with('message', 'Anda melakukan terlalu banyak refresh. Harap tunggu beberapa saat.');
```

Kemudian buat route dan view:
```php
Route::get('/rate-limit', function() {
    return view('errors.rate-limit');
})->name('rate-limit-exceeded');
```

---

## 3. Environment-Based Configuration

Untuk konfigurasi berbeda per environment, buat file config baru:

**File baru:** `config/security.php`

```php
<?php

return [
    'login_throttle' => [
        'max_attempts' => env('LOGIN_MAX_ATTEMPTS', 10),
        'decay_seconds' => env('LOGIN_DECAY_SECONDS', 300),
    ],
    
    'refresh_throttle' => [
        'max_attempts' => env('REFRESH_MAX_ATTEMPTS', 15),
        'decay_seconds' => env('REFRESH_DECAY_SECONDS', 60),
    ],
];
```

**Update `.env`:**
```env
# Login Throttle
LOGIN_MAX_ATTEMPTS=10
LOGIN_DECAY_SECONDS=300

# Refresh Throttle
REFRESH_MAX_ATTEMPTS=15
REFRESH_DECAY_SECONDS=60
```

**Update Middleware:**

`ThrottleFailedLogins.php`:
```php
if (RateLimiter::tooManyAttempts($key, config('security.login_throttle.max_attempts', 10))) {
    // ...
}

RateLimiter::hit($key, config('security.login_throttle.decay_seconds', 300));
```

`PreventExcessiveRefresh.php`:
```php
protected int $maxAttempts;
protected int $decaySeconds;

public function __construct()
{
    $this->maxAttempts = config('security.refresh_throttle.max_attempts', 15);
    $this->decaySeconds = config('security.refresh_throttle.decay_seconds', 60);
}
```

---

## 4. Per-User atau Per-Role Configuration

Untuk setting berbeda berdasarkan role user:

**Update `ThrottleFailedLogins.php`:**

```php
public function handle(Request $request, Closure $next): Response
{
    // Cek apakah user sudah login (untuk remember me)
    $user = $request->user();
    
    // Admin tidak di-throttle atau lebih longgar
    if ($user && $user->hasRole('admin')) {
        $maxAttempts = 50; // Admin bisa 50x
        $decaySeconds = 60; // Hanya 1 menit
    } else {
        $maxAttempts = 10; // User biasa 10x
        $decaySeconds = 300; // 5 menit
    }
    
    if (RateLimiter::tooManyAttempts($key, $maxAttempts)) {
        // ...
    }
    
    // ...
}
```

---

## 5. Whitelist IP Addresses

Untuk IP tertentu yang tidak ingin di-throttle (misalnya kantor):

**Update `PreventExcessiveRefresh.php`:**

```php
public function handle(Request $request, Closure $next): Response
{
    // Whitelist IP
    $whitelistedIps = [
        '192.168.1.100',
        '10.0.0.1',
        // Tambah IP lain
    ];
    
    if (in_array($request->ip(), $whitelistedIps)) {
        return $next($request);
    }
    
    // ... lanjut logic throttle
}
```

**Atau dari config:**

`.env`:
```env
THROTTLE_WHITELIST_IPS="192.168.1.100,10.0.0.1,172.16.0.1"
```

`PreventExcessiveRefresh.php`:
```php
$whitelistedIps = explode(',', env('THROTTLE_WHITELIST_IPS', ''));
if (in_array($request->ip(), $whitelistedIps)) {
    return $next($request);
}
```

---

## 6. Notifikasi Admin

Untuk mendapat notifikasi saat ada excessive refresh:

**Update `PreventExcessiveRefresh.php`:**

```php
if ($attempts >= $this->maxAttempts) {
    // Log
    \Log::warning('Excessive page refresh detected', [
        'ip' => $request->ip(),
        'url' => $request->fullUrl(),
        'user_agent' => $request->userAgent(),
        'attempts' => $attempts,
    ]);
    
    // Kirim notifikasi ke admin (opsional)
    // \Notification::route('mail', 'admin@example.com')
    //     ->notify(new ExcessiveRefreshDetected($request->ip(), $request->fullUrl()));
    
    abort(404);
}
```

---

## 7. Redis Configuration (Production)

Untuk production, sangat disarankan menggunakan Redis:

**`.env`:**
```env
CACHE_DRIVER=redis
REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379
REDIS_DB=0
```

**Install Redis (jika belum):**
```bash
# Ubuntu/Debian
sudo apt install redis-server

# macOS
brew install redis

# Windows (via Chocolatey)
choco install redis-64
```

**Install PHP Redis extension:**
```bash
composer require predis/predis
# atau
pecl install redis
```

**Test koneksi:**
```bash
php artisan tinker
```
```php
use Illuminate\Support\Facades\Redis;
Redis::set('test', 'value');
echo Redis::get('test'); // Should output: value
```

---

## 8. Testing Configuration

Untuk testing, disable throttle:

**`.env.testing`:**
```env
LOGIN_MAX_ATTEMPTS=999999
REFRESH_MAX_ATTEMPTS=999999
```

**Atau buat middleware bypass untuk testing:**

```php
if (app()->environment('testing')) {
    return $next($request);
}
```

---

## Rekomendasi Default (Copy-Paste Ready)

### ⭐ Rekomendasi untuk Website Normal:
```php
// ThrottleFailedLogins
$maxAttempts = 10;
$decaySeconds = 300; // 5 menit

// PreventExcessiveRefresh
$maxAttempts = 20;
$decaySeconds = 60; // 1 menit
```

### 🔒 Rekomendasi High Security (Bank, Pemerintah):
```php
// ThrottleFailedLogins
$maxAttempts = 5;
$decaySeconds = 900; // 15 menit

// PreventExcessiveRefresh
$maxAttempts = 10;
$decaySeconds = 60;
```

### 🚀 Rekomendasi Development:
```php
// ThrottleFailedLogins
$maxAttempts = 50;
$decaySeconds = 60;

// PreventExcessiveRefresh
$maxAttempts = 100;
$decaySeconds = 120;
```

---

## Checklist Setelah Konfigurasi

- [ ] Update nilai `$maxAttempts` sesuai kebutuhan
- [ ] Update nilai `$decaySeconds` sesuai kebutuhan
- [ ] Tambah whitelist IP jika perlu
- [ ] Tambah excluded routes jika perlu
- [ ] Test di staging environment
- [ ] Clear cache: `php artisan config:clear`
- [ ] Monitor log selama 24 jam pertama
- [ ] Sesuaikan jika ada komplain user legitimate
