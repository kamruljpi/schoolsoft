<?php

namespace Erp\Models\Role;

use Erp\Models\AddFieldTable\AddFieldToTable;
use Erp\Models\Permission\GroupAccess;
use Erp\Models\Permission\Permission;
use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;
use Erp\Models\User\GlobalUser;

class GlobalRole extends Model
{

    const NAME = 'name';
    const LABEL = 'label';
    const STATUS = 'status';
    const POSITION = 'position';
    const SITE_ID = 'site_id';

    protected $table = 'roles';
    public $timestamps = false;

    protected $fillable = [self::NAME,self::LABEL,self::STATUS,self::POSITION];


    /**
     * A role may have various users
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function users()
    {
        return $this->belongsToMany(User::class);
    }

    /**
     * Assign the choosen user to the role
     *
     * @param $user
     * @return Model
     */
    public function assignUser($user)
    {
        return $this->users()->save(
            User::whereName($user)->firstOrFail()
        );
    }

    /**
     * A role may be given various permissions.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function permissions()
    {
        return $this->belongsToMany(Permission::class);
    }

    /**
     * Grant the given permission to a role.
     *
     * @param  Permission $permission
     * @return mixed
     */
    /*public function grantPermissionToRole(Permission $permission)
    {
        return $this->permissions()->save($permission);
    }*/
    /**
     * @param array $permissions
     * @return array
     */
    public function grantPermissionToRole($permissions = [])
    {

        foreach ($permissions as $permission) {

            $per[] = $this->permissions()->save(

                Permission::whereName($permission)->firstOrFail()
            );


        }
//        return $per;

    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\MorphMany
     */
    public function addFieldsToTable()
    {
        return $this->morphMany(AddFieldToTable::class,'field');
    }

    public function groupAccess()
    {
        return $this->hasMany(GroupAccess::class);
    }
}
