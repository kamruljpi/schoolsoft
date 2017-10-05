<?php

namespace Erp\Models\Menu;

use Dimsav\Translatable\Translatable;
use Erp\Models\Permission\GroupAccess;
use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

//class Menu extends ProjectModel
class Menu extends Model
{
    use SoftDeletes, Translatable;

    const MENU_NAME = 'menu_name';
    const ICON = 'icon_name';
    const ROUTE_NAME = 'route_name';
    const PARENT_ID = 'parent_id';
    const POSITION = 'position';
    const STATUS = 'status';
    const IS_COMMON_ACCESS = 'is_common_access';
    const IS_DISPLAYABLE = 'is_displayable';

    public $timestamps = false;

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::MENU_NAME,
        self::ROUTE_NAME,
        self::PARENT_ID,
        self::POSITION,
        self::STATUS,
        self::IS_DISPLAYABLE
    ];

    public $translatedAttributes = [self::MENU_NAME];


    public function groupAccess()
    {
        return $this->hasMany(GroupAccess::class);
    }
}
