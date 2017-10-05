<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/7/2016
 * Time: 11:17 AM
 */

namespace Erp\Models\Country;


use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class CountryTranslation extends ProjectModel
{
    public $timestamps = false;
    protected $fillable = ['country_name'];
}