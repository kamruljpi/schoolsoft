<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/7/2016
 * Time: 3:02 PM
 */

namespace Erp\Models\Division;


use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class DivisionTranslation extends ProjectModel
{
    public $timestamps = false;
    protected $fillable = ['division_name'];
}