<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    /** @use HasFactory<\Database\Factories\SettingFactory> */
    use HasFactory;

    protected $guarded = [];

    protected function casts(): array
    {
        return [
            'main_menu' => 'array',
            'maintenance_mode' => 'boolean',
            'maintenance_started_at' => 'datetime',
        ];
    }

    /**
     * Rewrite hardcoded internal/legacy production URLs to the active app host,
     * while preserving genuine external URLs unchanged.
     */
    public static function normalizeInternalUrl(?string $url): ?string
    {
        if ($url === null) {
            return null;
        }

        $trimmed = trim($url);
        if ($trimmed === '' || $trimmed === '#' || str_starts_with($trimmed, '#')) {
            return $trimmed;
        }

        $parts = parse_url($trimmed);
        if ($parts === false) {
            return $trimmed;
        }

        if (!empty($parts['host'])) {
            $appHost = parse_url((string) config('app.url'), PHP_URL_HOST);
            $internalHosts = array_filter([
                'wisata.bengkaliskab.go.id',
                'portal-wisata.test',
                'wisata-dispora.test',
                $appHost,
            ]);

            if (!in_array(strtolower($parts['host']), array_map('strtolower', $internalHosts), true)) {
                return $trimmed;
            }
        } elseif (!str_starts_with($trimmed, '/')) {
            return $trimmed;
        }

        $path = $parts['path'] ?? '/';
        $normalized = url($path === '' ? '/' : $path);

        if (!empty($parts['query'])) {
            $normalized .= '?' . $parts['query'];
        }

        if (!empty($parts['fragment'])) {
            $normalized .= '#' . $parts['fragment'];
        }

        return $normalized;
    }

    /**
     * Sambutan kepala dinas fields:
     * sambutan_nama_kepala, sambutan_jabatan_kepala, sambutan_foto_kepala,
     * sambutan_isi, sambutan_link_selengkapnya
     */
}
