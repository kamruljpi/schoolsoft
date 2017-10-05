<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/7/2016
 * Time: 10:44 AM
 */
namespace Erp\Models\Training;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\User\User;
use Erp\Models\Country\Country;

class Training extends ProjectModel
{
    use SoftDeletes, Translatable;

    const USER = 'user_id';
    const TRAINING_TITLE = 'training_title';
    const TRAINING_COVER = 'training_cover';
    const INSTITUTE = 'institute_name';
    const COUNTRY = 'country_id';
    const LOCATION = 'location';
    const TRAINING_YEAR = 'training_year';
    const DURATION = 'duration';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'trainings';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::USER,
        self::TRAINING_TITLE,
        self::TRAINING_COVER,
        self::INSTITUTE,
        self::COUNTRY,
        self::LOCATION,
        self::TRAINING_YEAR,
        self::DURATION,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::TRAINING_TITLE,
        self::TRAINING_COVER,
        self::INSTITUTE,
        self::LOCATION
    ];

    // Training belongsTo User
    public function trainingUser()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    // Training belongsTo Country
    public function trainingCountry()
    {
        return $this->belongsTo(Country::class, 'country_id');
    }
}