<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 1/23/16
 * Time: 12:54 PM
 */

namespace Erp\Lists;


use Erp\Http\Controllers\Language\Lang;
use Erp\Models\Leave\Leave;

class LeaveList extends Leave
{
    use Lang,ListControll;

    public $dataArr =[

        'Leave Type'=>'type',
        'Status'=>'status',

    ];

}