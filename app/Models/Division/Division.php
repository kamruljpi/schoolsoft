<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/7/2016
 * Time: 2:59 PM
 */
namespace Erp\Models\Division;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\Country\Country;
use Erp\Models\District\District;

class Division extends ProjectModel
{
    use SoftDeletes;
    use Translatable;

    const COUNTRY = 'country_id';
    const NAME = 'division_name';
    const STATUS = 'status';

    public $timestamps = false;

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::COUNTRY,
        self::NAME,
        self::STATUS
    ];
    public $translatedAttributes = [self::NAME];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function country()
    {
        return $this->belongsTo(Country::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function district()
    {
        return $this->hasMany(District::class);
    }
}