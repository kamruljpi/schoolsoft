<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/12/2016
 * Time: 11:38 AM
 */
namespace Erp\Models\Reference;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\Relation\Relation;

class Reference extends ProjectModel
{
    use SoftDeletes, Translatable;


    const USER = 'relation_name';
    const RELATION = 'relation_id';
    const REFERENCE = 'reference_name';
    const ORGANIZATION = 'organization';
    const DESIGNATION = 'designation';
    const ADDRESS = 'address';
    const OFFICE_PHONE = 'office_phone';
    const HOME_PHONE = 'home_phone';
    const MOBILE = 'mobile';
    const EMAIL = 'email';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'references';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::USER,
        self::RELATION,
        self::REFERENCE,
        self::ORGANIZATION,
        self::DESIGNATION,
        self::ADDRESS,
        self::OFFICE_PHONE,
        self::HOME_PHONE,
        self::MOBILE,
        self::EMAIL,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::REFERENCE,
        self::ORGANIZATION,
        self::DESIGNATION,
        self::ADDRESS
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function referenceRelation()
    {
        return $this->belongsTo(Relation::class, 'relation_id');
    }
}