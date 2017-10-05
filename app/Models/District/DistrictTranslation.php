<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/8/2016
 * Time: 10:33 AM
 */

namespace Erp\Models\District;


use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class DistrictTranslation extends ProjectModel
{
    public $timestamps = false;
    protected $fillable = ['district_name'];
}