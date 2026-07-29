<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class SecureLivewireUploads
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // Check if this is a Livewire upload request
        if ($request->is('livewire/upload-file') || $request->is('livewire/preview-file/*')) {
            // Ensure user is authenticated (adjust based on your auth setup)
            if (!auth()->check()) {
                abort(403, 'Unauthorized file upload attempt');
            }

            // Additional validation for file uploads
            if ($request->hasFile('file')) {
                $file = $request->file('file');
                
                // Block executable file extensions
                $dangerousExtensions = [
                    'php', 'php3', 'php4', 'php5', 'phtml', 
                    'exe', 'bat', 'cmd', 'com', 'pif', 
                    'scr', 'vbs', 'js', 'jar', 'sh', 
                    'py', 'pl', 'cgi', 'asp', 'aspx', 
                    'jsp', 'html', 'htm', 'shtml'
                ];

                $extension = strtolower($file->getClientOriginalExtension());
                
                if (in_array($extension, $dangerousExtensions)) {
                    abort(403, 'File type not allowed for security reasons');
                }

                // Check MIME type
                $allowedMimes = [
                    'image/jpeg', 'image/png', 'image/gif', 'image/webp', 'image/bmp',
                    'video/mp4', 'video/mpeg', 'video/quicktime', 'video/x-msvideo',
                    'audio/mpeg', 'audio/wav', 'audio/x-m4a',
                    'application/pdf', 'application/msword',
                    'application/vnd.openxmlformats-officedocument.wordprocessingml.document'
                ];

                if (!in_array($file->getMimeType(), $allowedMimes)) {
                    abort(403, 'File MIME type not allowed');
                }

                // Check for double extensions (e.g., file.php.jpg)
                $filename = $file->getClientOriginalName();
                if (preg_match('/\.(' . implode('|', $dangerousExtensions) . ')\./i', $filename)) {
                    abort(403, 'Suspicious filename detected');
                }
            }
        }

        return $next($request);
    }
}
