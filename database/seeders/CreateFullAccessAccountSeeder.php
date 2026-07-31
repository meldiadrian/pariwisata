<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class CreateFullAccessAccountSeeder extends Seeder
{
    public function run(): void
    {
        $this->command->info('==========================================');
        $this->command->info('   MEMBUAT AKUN FULL ACCESS             ');
        $this->command->info('==========================================');
        $this->command->newLine();

        // Data akun dengan full access
        $email = 'fullaccess@admin.com';
        $password = 'FullAccess2024!';
        $name = 'Full Access Administrator';

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
                'email_verified_at' => now(),
            ]);
            $this->command->info("✅ User baru berhasil dibuat!");
        }

        // Cari atau buat role super_admin dengan guard "web"
        $superAdminRole = Role::firstOrCreate(
            ['name' => 'super_admin', 'guard_name' => 'web'],
            ['name' => 'super_admin', 'guard_name' => 'web']
        );

        // Ambil semua permissions yang ada dengan guard "web"
        $permissions = Permission::where('guard_name', 'web')->get();
        
        // Jika belum ada permissions, buat permissions dasar
        if ($permissions->isEmpty()) {
            $this->command->info("Membuat permissions dasar...");
            $basicPermissions = [
                'view_user',
                'create_user',
                'edit_user',
                'delete_user',
                'view_role',
                'create_role',
                'edit_role',
                'delete_role',
                'view_news',
                'create_news',
                'edit_news',
                'delete_news',
                'view_category',
                'create_category',
                'edit_category',
                'delete_category',
                'view_advertisement',
                'create_advertisement',
                'edit_advertisement',
                'delete_advertisement',
                'view_settings',
                'edit_settings',
                'view_activity_log',
                'delete_activity_log',
            ];

            foreach ($basicPermissions as $permissionName) {
                Permission::create([
                    'name' => $permissionName,
                    'guard_name' => 'web'
                ]);
            }

            $permissions = Permission::where('guard_name', 'web')->get();
        }

        // Berikan semua permissions ke role super_admin
        $superAdminRole->syncPermissions($permissions);

        // Hapus role lama dari user jika ada
        $user->roles()->detach();

        // Assign role super_admin ke user
        $user->assignRole($superAdminRole);

        // Verifikasi
        $userRoles = $user->roles->pluck('name')->toArray();
        $userPermissions = $user->getAllPermissions()->count();

        $this->command->newLine();
        $this->command->info('==========================================');
        $this->command->info('✅ AKUN FULL ACCESS BERHASIL DIBUAT!');
        $this->command->info('==========================================');
        $this->command->newLine();
        $this->command->line("📧 Email          : {$email}");
        $this->command->line("🔑 Password       : {$password}");
        $this->command->line("👤 Nama           : {$name}");
        $this->command->line("🛡️  Role           : " . implode(', ', $userRoles));
        $this->command->line("🔐 Guard          : web");
        $this->command->line("✨ Total Permissions: {$userPermissions}");
        $this->command->newLine();
        $this->command->info('INFORMASI PENTING:');
        $this->command->line('- Akun ini memiliki akses penuh ke semua fitur');
        $this->command->line('- Dapat mengakses semua resource di Filament Admin Panel');
        $this->command->line('- Memiliki semua permissions yang tersedia di sistem');
        $this->command->newLine();
        $this->command->info('Silakan login dengan kredensial di atas!');
        $this->command->info('==========================================');
    }
}
