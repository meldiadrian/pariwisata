<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\DestinationCategory;
use Illuminate\Auth\Access\HandlesAuthorization;

class DestinationCategoryPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:DestinationCategory');
    }

    public function view(AuthUser $authUser, DestinationCategory $destinationCategory): bool
    {
        return $authUser->can('View:DestinationCategory');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:DestinationCategory');
    }

    public function update(AuthUser $authUser, DestinationCategory $destinationCategory): bool
    {
        return $authUser->can('Update:DestinationCategory');
    }

    public function delete(AuthUser $authUser, DestinationCategory $destinationCategory): bool
    {
        return $authUser->can('Delete:DestinationCategory');
    }

    public function deleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('DeleteAny:DestinationCategory');
    }

    public function restore(AuthUser $authUser, DestinationCategory $destinationCategory): bool
    {
        return $authUser->can('Restore:DestinationCategory');
    }

    public function forceDelete(AuthUser $authUser, DestinationCategory $destinationCategory): bool
    {
        return $authUser->can('ForceDelete:DestinationCategory');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:DestinationCategory');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:DestinationCategory');
    }

    public function replicate(AuthUser $authUser, DestinationCategory $destinationCategory): bool
    {
        return $authUser->can('Replicate:DestinationCategory');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:DestinationCategory');
    }

}