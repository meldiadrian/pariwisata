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
     * Sambutan kepala dinas fields:
     * sambutan_nama_kepala, sambutan_jabatan_kepala, sambutan_foto_kepala,
     * sambutan_isi, sambutan_link_selengkapnya
     */
}
