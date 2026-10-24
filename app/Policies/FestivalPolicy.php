<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\Festival;
use Illuminate\Auth\Access\HandlesAuthorization;

class FestivalPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:Festival');
    }

    public function view(AuthUser $authUser, Festival $festival): bool
    {
        return $authUser->can('View:Festival');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:Festival');
    }

    public function update(AuthUser $authUser, Festival $festival): bool
    {
        return $authUser->can('Update:Festival');
    }

    public function delete(AuthUser $authUser, Festival $festival): bool
    {
        return $authUser->can('Delete:Festival');
    }

    public function deleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('DeleteAny:Festival');
    }

    public function restore(AuthUser $authUser, Festival $festival): bool
    {
        return $authUser->can('Restore:Festival');
    }

    public function forceDelete(AuthUser $authUser, Festival $festival): bool
    {
        return $authUser->can('ForceDelete:Festival');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:Festival');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:Festival');
    }

    public function replicate(AuthUser $authUser, Festival $festival): bool
    {
        return $authUser->can('Replicate:Festival');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:Festival');
    }

}