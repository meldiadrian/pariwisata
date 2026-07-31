<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class SuperAdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Buat user super admin
        $superAdmin = User::firstOrCreate(
            ['email' => 'superadmin@admin.com'],
            [
                'name' => 'Super Administrator',
                'password' => bcrypt('password123'),
            ]
        );

        // Cek guard yang digunakan oleh permissions
        $firstPermission = Permission::first();
        $guardName = $firstPermission ? $firstPermission->guard_name : 'web';

        // Buat atau ambil role super_admin dengan guard yang sesuai
        $superAdminRole = Role::firstOrCreate(
            ['name' => 'super_admin', 'guard_name' => $guardName]
        );

        // Berikan semua permissions ke super_admin
        $allPermissions = Permission::where('guard_name', $guardName)->get();
        if ($allPermissions->count() > 0) {
            $superAdminRole->syncPermissions($allPermissions);
        }

        // Assign role super_admin ke user
        if (!$superAdmin->hasRole('super_admin', $guardName)) {
            $superAdmin->assignRole($superAdminRole);
        }

        $this->command->info('Super Admin berhasil dibuat!');
        $this->command->info('Email: superadmin@admin.com');
        $this->command->info('Password: password123');
        $this->command->info('Guard: ' . $guardName);
    }
}
