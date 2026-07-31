<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Models\User;

class ShowGuardsRolesSeeder extends Seeder
{
    public function run(): void
    {
        $this->command->info('==========================================');
        $this->command->info('    GUARDS, ROLES & USERS INFORMATION    ');
        $this->command->info('==========================================');
        $this->command->newLine();

        // 1. Tampilkan semua Guards yang ada
        $this->command->info('🔐 GUARDS YANG ADA:');
        $this->command->info('------------------------------------------');
        $guards = Permission::select('guard_name')->distinct()->pluck('guard_name');
        foreach ($guards as $guard) {
            $permCount = Permission::where('guard_name', $guard)->count();
            $this->command->line("  • {$guard} (Total permissions: {$permCount})");
        }
        $this->command->newLine();

        // 2. Tampilkan semua Roles
        $this->command->info('👥 ROLES YANG ADA:');
        $this->command->info('------------------------------------------');
        $roles = Role::with('permissions')->get();
        foreach ($roles as $role) {
            $this->command->line("  • Role: {$role->name}");
            $this->command->line("    Guard: {$role->guard_name}");
            $this->command->line("    Permissions: {$role->permissions->count()}");
            $this->command->newLine();
        }

        // 3. Tampilkan semua Users dengan role mereka
        $this->command->info('👤 USERS DAN ROLES:');
        $this->command->info('------------------------------------------');
        $users = User::with('roles', 'permissions')->get();
        foreach ($users as $user) {
            $this->command->line("  • User: {$user->name}");
            $this->command->line("    Email: {$user->email}");
            
            if ($user->roles->count() > 0) {
                $this->command->line("    Roles:");
                foreach ($user->roles as $role) {
                    $this->command->line("      - {$role->name} (guard: {$role->guard_name}, permissions: {$role->permissions->count()})");
                }
            } else {
                $this->command->line("    Roles: Tidak ada");
            }
            
            if ($user->permissions->count() > 0) {
                $this->command->line("    Direct Permissions: {$user->permissions->count()}");
            }
            
            $this->command->newLine();
        }

        // 4. Tampilkan detail permissions per guard
        $this->command->info('📋 DETAIL PERMISSIONS PER GUARD:');
        $this->command->info('------------------------------------------');
        foreach ($guards as $guard) {
            $permissions = Permission::where('guard_name', $guard)->get();
            $this->command->line("  Guard: {$guard}");
            $this->command->line("  Total: {$permissions->count()} permissions");
            $this->command->line("  Contoh permissions:");
            foreach ($permissions->take(10) as $perm) {
                $this->command->line("    - {$perm->name}");
            }
            if ($permissions->count() > 10) {
                $remaining = $permissions->count() - 10;
                $this->command->line("    ... dan {$remaining} lainnya");
            }
            $this->command->newLine();
        }

        $this->command->info('==========================================');
        $this->command->info('✅ Selesai!');
    }
}
