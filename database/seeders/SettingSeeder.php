<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use App\Models\Setting;

class SettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Setting::create([
            'site_name' => 'Portal Berita Profesional',
            'email' => 'contact@newsportal.com',
            'phone' => '08123456789',
            'address' => 'Jakarta, Indonesia',
            'facebook' => 'https://facebook.com/newsportal',
            'instagram' => 'https://instagram.com/newsportal',
            'youtube' => 'https://youtube.com/newsportal',
            'about_us' => 'Portal Berita Profesional adalah media online terpercaya yang menyajikan berita terkini dan akurat.',
        ]);
    }
}
