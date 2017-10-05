<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 1/23/16
 * Time: 5:38 PM
 */

namespace Erp\Lists;


use Erp\Http\Controllers\Language\Lang;
use Erp\Models\Leave\LeaveApplication;

class LeaveApplicationList extends LeaveApplication
{
    use Lang,ListControll;

    public $dataArr =[


        'First Name'=>[
            'user'=>'first_name'

        ],
        'Last Name'=>[

            'user'=>'last_name'
        ],
        'Leave Type'=>[
            'leave'=>'type'
        ],
        'Subject'=>'subject',
        'Explanation'=>'explanation',
        'From'=>'from',
        'To'=>'to',
        'Applied On'=>'applied_on',
        'Status'=>[
            'status'=>'name'
        ],

    ];

}