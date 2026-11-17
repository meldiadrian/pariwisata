<?php

namespace App\Rules;

use Closure;
use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class RecaptchaRule implements ValidationRule
{
    /**
     * Run the validation rule.
     *
     * @param  \Closure(string, ?string=): \Illuminate\Translation\PotentiallyTranslatedString  $fail
     */
    public function validate(string $attribute, mixed $value, Closure $fail): void
    {
        $secretKey = config('services.recaptcha.secret_key') ?: env('RECAPTCHA_SECRET_KEY');
        $bypassInLocal = config('services.recaptcha.bypass_in_local', false);

        // Jika di lingkungan local / testing dan fitur bypass diaktifkan atau secret key kosong
        if (app()->environment('local', 'testing') && ($bypassInLocal || empty($secretKey))) {
            return;
        }

        if (empty($value)) {
            $fail('Verifikasi reCAPTCHA wajib diselesaikan.');
            return;
        }

        try {
            $response = Http::asForm()
                ->timeout(5)
                ->post('https://www.google.com/recaptcha/api/siteverify', [
                    'secret'   => $secretKey,
                    'response' => $value,
                    'remoteip' => request()->ip(),
                ]);

            if (! $response->successful() || ! ($response->json('success') === true)) {
                $fail('Verifikasi reCAPTCHA tidak valid. Silakan coba lagi.');
            }
        } catch (\Throwable $e) {
            Log::error('reCAPTCHA verification error: ' . $e->getMessage());

            // Jika di local tapi bypass tidak aktif dan terjadi network timeout / error, jangan biarkan crash
            if (app()->environment('local', 'testing')) {
                Log::warning('reCAPTCHA verification skipped due to network error in local environment.');
                return;
            }

            $fail('Gagal menghubungi server reCAPTCHA. Silakan periksa koneksi internet Anda.');
        }
    }
}
