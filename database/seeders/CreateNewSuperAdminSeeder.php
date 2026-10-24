<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class CreateNewSuperAdminSeeder extends Seeder
{
    public function run(): void
    {
        $this->command->info('==========================================');
        $this->command->info('   MEMBUAT AKUN SUPER ADMIN BARU         ');
        $this->command->info('==========================================');
        $this->command->newLine();

        // Data akun baru
        $email = 'admin@superadmin.com';
        $password = 'admin123456';
        $name = 'Super Admin Utama';

        // Cek apakah user sudah ada
        $existingUser = User::where('email', $email)->first();
        if ($existingUser) {
            $this->command->warn("User dengan email {$email} sudah ada!");
            $this->command->info("Akan update user yang sudah ada...");
            $user = $existingUser;
        } else {
            // Buat user baru
            $user = User::create([
                'name' => $name,
                'email' => $email,
                'password' => bcrypt($password),
            ]);
            $this->command->info("✅ User baru berhasil dibuat!");
        }

        // Cari role super_admin dengan guard "web" (default guard untuk User model)
        $superAdminRole = Role::where('name', 'super_admin')
                              ->where('guard_name', 'web')
                              ->first();

        if (!$superAdminRole) {
            $this->command->error("Role super_admin dengan guard 'web' tidak ditemukan!");
            $this->command->info("Mencoba membuat role baru...");
            
            // Buat role super_admin dengan guard "web"
            $superAdminRole = Role::create([
                'name' => 'super_admin',
                'guard_name' => 'web'
            ]);

            // Berikan semua permissions untuk guard "web"
            $permissions = Permission::where('guard_name', 'web')->get();
            if ($permissions->count() > 0) {
                $superAdminRole->syncPermissions($permissions);
                $this->command->info("✅ Role dibuat dengan {$permissions->count()} permissions");
            }
        }

        // Hapus role lama jika ada
        $user->roles()->detach();

        // Assign role super_admin
        $user->assignRole($superAdminRole);

        // Verifikasi permissions
        $totalPermissions = $superAdminRole->permissions->count();

        $this->command->newLine();
        $this->command->info('==========================================');
        $this->command->info('✅ AKUN SUPER ADMIN BERHASIL DIBUAT!');
        $this->command->info('==========================================');
        $this->command->newLine();
        $this->command->line("📧 Email     : {$email}");
        $this->command->line("🔑 Password  : {$password}");
        $this->command->line("👤 Nama      : {$name}");
        $this->command->line("🛡️  Role      : super_admin");
        $this->command->line("🔐 Guard     : web");
        $this->command->line("✨ Permissions: {$totalPermissions}");
        $this->command->newLine();
        $this->command->info('Silakan login dengan kredensial di atas!');
        $this->command->info('==========================================');
    }
}
