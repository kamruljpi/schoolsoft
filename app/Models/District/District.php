<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/7/2016
 * Time: 5:12 PM
 */
namespace Erp\Models\District;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\Country\Country;
use Erp\Models\Division\Division;

class District extends ProjectModel
{
    use SoftDeletes;
    use Translatable;

    const COUNTRY = 'country_id';
    const DIVISION = 'division_id';
    const NAME = 'district_name';
    const STATUS = 'status';

    public $timestamps = false;

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::COUNTRY,
        self::DIVISION,
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
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function division()
    {
        return $this->belongsTo(Division::class);
    }
}