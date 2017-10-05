<?php

namespace Erp\Models\Menu;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class MenuTranslation extends Model
{
    public $timestamps = false;
    protected $fillable = ['menu_name'];
}
