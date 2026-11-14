<?php

namespace App\Models;

use App\Models\Concerns\ConvertsBase64ContentImages;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    /** @use HasFactory<\Database\Factories\PageFactory> */
    //use HasFactory;
    use ConvertsBase64ContentImages;

    protected $fillable = [
        'title',
        // tambahkan kolom lain yang boleh diisi
        'content',
        'slug',
    ];
}
