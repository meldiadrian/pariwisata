<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class FixOperatorPermissionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Cari user operator@mail.com
        $operator = User::where('email', 'operator@mail.com')->first();

        if (!$operator) {
            $this->command->error('User operator@mail.com tidak ditemukan!');
            return;
        }

        // Cek role user saat ini
        $currentRoles = $operator->roles;
        $this->command->info('Total roles: ' . $currentRoles->count());

        if ($currentRoles->isEmpty()) {
            $this->command->error('User tidak memiliki role!');
            return;
        }

        // Proses setiap role
        foreach ($currentRoles as $role) {
            $guardName = $role->guard_name;
            $this->command->info("Role: {$role->name}, Guard: {$guardName}");

            // Ambil permissions yang sesuai dengan guard role
            $permissions = Permission::where('guard_name', $guardName)->get();
            $this->command->info("Total permissions untuk guard {$guardName}: " . $permissions->count());

            if ($permissions->count() > 0) {
                // Berikan semua permissions ke role
                $role->syncPermissions($permissions);
                $this->command->info("✅ Semua permissions diberikan ke role: {$role->name}");
            }
        }

        $this->command->info('');
        $this->command->info('✅ Permissions user operator@mail.com berhasil diperbaiki!');
        $this->command->info('Silakan logout dan login kembali untuk melihat perubahan.');
    }
}
