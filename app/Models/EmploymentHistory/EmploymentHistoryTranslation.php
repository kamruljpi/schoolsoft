<?php
/**
 * Created by PhpStorm.
 * User: tiash
 * Date: 6/12/2016
 * Time: 3:02 PM
 */

namespace Erp\Models\EmploymentHistory;


use Erp\Models\ProjectModel;

class EmploymentHistoryTranslation extends ProjectModel
{
    const COMPANY_NAME = 'company_name';
    const COMPANY_LOCATION = 'company_location';
    const POSITION_HELD = 'position_held';
    const DEPARTMENT = 'department';
    const RESPONSIBILITES = 'responsibilites';

    public $timestamps = false;

    protected $fillable = [
        self::COMPANY_NAME,
        self::COMPANY_LOCATION,
        self::POSITION_HELD,
        self::DEPARTMENT,
        self::RESPONSIBILITES
    ];
}