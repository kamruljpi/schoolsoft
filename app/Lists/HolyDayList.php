<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 1/26/16
 * Time: 4:28 PM
 */

namespace Erp\Lists;


use Erp\Http\Controllers\Language\Lang;
use Erp\Models\Holydays\Holyday;

class HolyDayList extends Holyday
{
    use Lang,ListControll;

    public $dataArr =[

        'Date'=>'date',
        'Occasion'=>'occasion',
        'Leave Type'=>[
            'holydayType'=>'type'
        ],
        'Status'=>[
            'status'=>'name'
        ]

    ];


}