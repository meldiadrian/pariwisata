<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    use WithoutModelEvents;

    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        if (!User::where('email', 'admin@example.com')->exists()) {
            User::factory()->create([
                'name' => 'Super Admin',
                'email' => 'admin@example.com',
                'password' => bcrypt('password'),
            ]);
        }

        $this->call([
            CategorySeeder::class,
            TagSeeder::class,
            SettingSeeder::class,
            NewsSeeder::class,
        ]);
    }
}
