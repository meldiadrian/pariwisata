<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Models\User;

class ShowGuardsRoles extends Command
{
    protected $signature = 'show:guards-roles';
    protected $description = 'Tampilkan semua guards, roles, dan users dengan permissions mereka';

    public function handle()
    {
        $this->info('==========================================');
        $this->info('    GUARDS, ROLES & USERS INFORMATION    ');
        $this->info('==========================================');
        $this->newLine();

        // 1. Tampilkan semua Guards yang ada
        $this->info('🔐 GUARDS YANG ADA:');
        $this->info('------------------------------------------');
        $guards = Permission::select('guard_name')->distinct()->pluck('guard_name');
        foreach ($guards as $guard) {
            $permCount = Permission::where('guard_name', $guard)->count();
            $this->line("  • {$guard} (Total permissions: {$permCount})");
        }
        $this->newLine();

        // 2. Tampilkan semua Roles
        $this->info('👥 ROLES YANG ADA:');
        $this->info('------------------------------------------');
        $roles = Role::with('permissions')->get();
        foreach ($roles as $role) {
            $this->line("  • Role: {$role->name}");
            $this->line("    Guard: {$role->guard_name}");
            $this->line("    Permissions: {$role->permissions->count()}");
            $this->newLine();
        }

        // 3. Tampilkan semua Users dengan role mereka
        $this->info('👤 USERS DAN ROLES:');
        $this->info('------------------------------------------');
        $users = User::with('roles', 'permissions')->get();
        foreach ($users as $user) {
            $this->line("  • User: {$user->name}");
            $this->line("    Email: {$user->email}");
            
            if ($user->roles->count() > 0) {
                $this->line("    Roles:");
                foreach ($user->roles as $role) {
                    $this->line("      - {$role->name} (guard: {$role->guard_name}, permissions: {$role->permissions->count()})");
                }
            } else {
                $this->line("    Roles: Tidak ada");
            }
            
            if ($user->permissions->count() > 0) {
                $this->line("    Direct Permissions: {$user->permissions->count()}");
            }
            
            $this->newLine();
        }

        // 4. Tampilkan detail permissions per guard
        $this->info('📋 DETAIL PERMISSIONS PER GUARD:');
        $this->info('------------------------------------------');
        foreach ($guards as $guard) {
            $permissions = Permission::where('guard_name', $guard)->get();
            $this->line("  Guard: {$guard}");
            $this->line("  Total: {$permissions->count()} permissions");
            $this->line("  Contoh permissions:");
            foreach ($permissions->take(5) as $perm) {
                $this->line("    - {$perm->name}");
            }
            if ($permissions->count() > 5) {
                $this->line("    ... dan {$permissions->count() - 5} lainnya");
            }
            $this->newLine();
        }

        $this->info('==========================================');
        $this->info('✅ Selesai!');
        
        return 0;
    }
}
