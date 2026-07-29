<?php

namespace Database\Seeders;

use App\Models\DestinationCategory;
use Illuminate\Database\Seeder;

class DestinationCategorySeeder extends Seeder
{
    public function run(): void
    {
        $categories = [
            [
                'name'       => 'Rute & Transportasi',
                'slug'       => 'rute-transportasi',
                'icon_class' => 'fas fa-car',
                'order'      => 1,
                'is_active'  => true,
            ],
            [
                'name'       => 'Agenda Wisata',
                'slug'       => 'agenda-wisata',
                'icon_class' => 'far fa-calendar-alt',
                'order'      => 2,
                'is_active'  => true,
            ],
            [
                'name'       => 'Destinasi Wisata',
                'slug'       => 'destinasi-wisata',
                'icon_class' => 'fas fa-map-marked-alt',
                'order'      => 3,
                'is_active'  => true,
            ],
            [
                'name'       => 'Eksplor Bengkalis',
                'slug'       => 'eksplor-bengkalis',
                'icon_class' => 'fas fa-thumbtack',
                'order'      => 4,
                'is_active'  => true,
            ],
            [
                'name'       => 'Pesona Desa Wisata',
                'slug'       => 'pesona-desa-wisata',
                'icon_class' => 'fas fa-camera',
                'order'      => 5,
                'is_active'  => true,
            ],
            [
                'name'       => 'Cagar Budaya',
                'slug'       => 'cagar-budaya',
                'icon_class' => 'fas fa-building',
                'order'      => 6,
                'is_active'  => true,
            ],
        ];

        foreach ($categories as $category) {
            DestinationCategory::updateOrCreate(
                ['slug' => $category['slug']],
                $category
            );
        }
    }
}
