<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\BlockedIp;
use Illuminate\Auth\Access\HandlesAuthorization;

class BlockedIpPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:BlockedIp');
    }

    public function view(AuthUser $authUser, BlockedIp $blockedIp): bool
    {
        return $authUser->can('View:BlockedIp');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:BlockedIp');
    }

    public function update(AuthUser $authUser, BlockedIp $blockedIp): bool
    {
        return $authUser->can('Update:BlockedIp');
    }

    public function delete(AuthUser $authUser, BlockedIp $blockedIp): bool
    {
        return $authUser->can('Delete:BlockedIp');
    }

    public function deleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('DeleteAny:BlockedIp');
    }

    public function restore(AuthUser $authUser, BlockedIp $blockedIp): bool
    {
        return $authUser->can('Restore:BlockedIp');
    }

    public function forceDelete(AuthUser $authUser, BlockedIp $blockedIp): bool
    {
        return $authUser->can('ForceDelete:BlockedIp');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:BlockedIp');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:BlockedIp');
    }

    public function replicate(AuthUser $authUser, BlockedIp $blockedIp): bool
    {
        return $authUser->can('Replicate:BlockedIp');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:BlockedIp');
    }

}