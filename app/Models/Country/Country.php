<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/7/2016
 * Time: 11:07 AM
 */
namespace Erp\Models\Country;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\Division\Division;
use Erp\Models\District\District;
use Erp\Models\Training\Training;

class Country extends ProjectModel
{
    use SoftDeletes;
    use Translatable;

    const NAME = 'country_name';
    const STATUS = 'status';

    public $timestamps = false;

    protected $dates = ['deleted_at'];

    protected $fillable = [self::NAME, self::STATUS];
    public $translatedAttributes = [self::NAME];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function divisions()
    {
        return $this->hasMany(Division::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function district()
    {
        return $this->hasMany(District::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function training()
    {
        return $this->hasMany(Training::class);
    }
}