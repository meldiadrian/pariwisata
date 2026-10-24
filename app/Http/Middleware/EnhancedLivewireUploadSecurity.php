<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Log;

class EnhancedLivewireUploadSecurity
{
    /**
     * Handle an incoming request with MAXIMUM SECURITY
     */
    public function handle(Request $request, Closure $next): Response
    {
        // Only intercept Livewire upload endpoints
        if ($request->is('livewire/upload-file') || $request->is('livewire/preview-file/*')) {
            
            // 1. AUTHENTICATION CHECK (CRITICAL)
            if (!auth()->check()) {
                Log::warning('Unauthorized upload attempt', [
                    'ip' => $request->ip(),
                    'user_agent' => $request->userAgent(),
                ]);
                abort(403, 'Unauthorized file upload attempt');
            }

            // 2. VALIDATE FILE EXISTS
            if (!$request->hasFile('file')) {
                abort(400, 'No file provided');
            }

            $file = $request->file('file');
            $dangerousExtensions = [
    // Windows Executables
    'exe', 'dll', 'com', 'bat', 'cmd', 'msi', 'msp', 'scr', 'pif', 'cpl',

    // Windows Scripts
    'ps1', 'psm1', 'vbs', 'vbe', 'wsf', 'wsh', 'hta', 'reg',

    // PHP
    'php', 'php2', 'php3', 'php4', 'php5', 'php7', 'php8',
    'phtml', 'phar', 'phps', 'inc',

    // ASP / .NET
    'asp', 'aspx', 'ashx', 'asmx', 'ascx', 'cshtml', 'vbhtml',

    // Java
    'jsp', 'jspx', 'jar', 'war', 'ear',

    // Linux / Unix
    'sh', 'bash', 'zsh', 'ksh', 'csh',

    // Scripting
    'py', 'pyc', 'pl', 'cgi', 'rb', 'lua',

    // Node / JavaScript
    'js', 'mjs', 'cjs', 'ts', 'tsx', 'jsx',

    // Web Server Config
    'htaccess', 'htpasswd',
    'user.ini',
    'webconfig',

    // Configuration
    'ini', 'env', 'conf', 'config',
    'yaml', 'yml',
    'toml',

    // Database
    'sql', 'sqlite', 'db',

    // Office Macros
    'docm', 'xlsm', 'pptm',

    // Flash (legacy)
    'swf', 'fla',
];

            // 3. BLOCK DANGEROUS EXTENSIONS (CRITICAL)
            // $dangerousExtensions = [
            //     // Executables
            //     'exe', 'bat', 'cmd', 'com', 'pif', 'scr', 'msi', 'vbs', 'reg',
            //     // Scripts
            //     'php', 'php3', 'php4', 'php5', 'phtml', 'phps', 'phar',
            //     'jsp', 'asp', 'aspx', 'cer', 'csr', 'sh', 'bash', 'zsh',
            //     'js', 'jsx', 'ts', 'tsx', 'py', 'pl', 'rb', 'cgi',
            //     // Archives that might contain scripts
            //     'jar', 'war', 'ear',
            //     // Other dangerous
            //     'swf', 'fla', 'htaccess', 'htpasswd', 'ini', 'sql',
            // ];

            $extension = strtolower($file->getClientOriginalExtension());
            
            if (in_array($extension, $dangerousExtensions)) {
                Log::alert('Dangerous file extension blocked', [
                    'user_id' => auth()->id(),
                    'filename' => $file->getClientOriginalName(),
                    'extension' => $extension,
                    'ip' => $request->ip(),
                ]);
                abort(403, 'File type not allowed for security reasons');
            }

            // 4. VALIDATE MIME TYPE (CRITICAL)
            $allowedMimes = [
                'image/jpeg', 'image/jpg', 'image/png', 'image/gif', 
                'image/webp', 'image/bmp', 'image/svg+xml',
                'video/mp4', 'video/mpeg', 'video/quicktime', 'video/x-msvideo',
                'audio/mpeg', 'audio/wav', 'audio/x-m4a',
                'application/pdf',
                'application/msword',
                'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
                'application/vnd.ms-excel',
                'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
            ];

            $actualMime = $file->getMimeType();
            
            if (!in_array($actualMime, $allowedMimes)) {
                Log::alert('Invalid MIME type blocked', [
                    'user_id' => auth()->id(),
                    'filename' => $file->getClientOriginalName(),
                    'mime_type' => $actualMime,
                    'ip' => $request->ip(),
                ]);
                abort(403, 'File MIME type not allowed');
            }

            // 5. CHECK DOUBLE EXTENSION (CRITICAL)
            $filename = $file->getClientOriginalName();
            if (preg_match('/\.(' . implode('|', $dangerousExtensions) . ')\./i', $filename)) {
                Log::alert('Double extension detected', [
                    'user_id' => auth()->id(),
                    'filename' => $filename,
                    'ip' => $request->ip(),
                ]);
                abort(403, 'Suspicious filename detected');
            }

            // 6. CHECK NULL BYTE ATTACK
            if (strpos($filename, "\0") !== false) {
                Log::alert('Null byte attack detected', [
                    'user_id' => auth()->id(),
                    'filename' => bin2hex($filename),
                    'ip' => $request->ip(),
                ]);
                abort(403, 'Invalid filename');
            }

            // 7. SCAN FILE CONTENT (Basic check for PHP tags)
            if (in_array($extension, ['jpg', 'jpeg', 'png', 'gif', 'webp'])) {
                $content = file_get_contents($file->getRealPath());
                
                // Check for PHP tags in image files
                if (preg_match('/<\?php|<\?=|<script/i', $content)) {
                    Log::alert('PHP code detected in image file', [
                        'user_id' => auth()->id(),
                        'filename' => $filename,
                        'ip' => $request->ip(),
                    ]);
                    abort(403, 'Malicious content detected');
                }
            }

            // 8. CHECK FILE SIZE
            $maxSize = 15360; // 15MB in KB
            if ($file->getSize() > ($maxSize * 1024)) {
                abort(413, 'File too large. Maximum size: 15MB');
            }

            // 9. SANITIZE FILENAME
            $sanitizedName = preg_replace('/[^a-zA-Z0-9._-]/', '_', $filename);
            
            // 10. LOG SUCCESSFUL UPLOAD (for audit trail)
            Log::info('File upload accepted', [
                'user_id' => auth()->id(),
                'original_filename' => $filename,
                'sanitized_filename' => $sanitizedName,
                'extension' => $extension,
                'mime_type' => $actualMime,
                'size' => $file->getSize(),
                'ip' => $request->ip(),
            ]);
        }

        return $next($request);
    }
}
