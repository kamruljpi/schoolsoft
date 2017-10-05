<?php
/**
 * Created by PhpStorm.
 * User: HP
 * Date: 1/11/2016
 * Time: 9:49 PM
 */

namespace Erp\Lists;


use Erp\Http\Controllers\Language\Lang;
use Erp\Models\Gender\Gender;

class GenderList extends Gender
{
    use Lang,ListControll;

    /**
     * for showing user list controlled here
     * $keys(Username,First Name etc) of the parent array are th value of the table
     * $values(username,first_name etc) of the parent array are users table's field names which u want to display
     * $keys(here religion,gender) of the child arrays are relational function names() in the User model
     * $values(here name,gender_name) of the child arrays
     * are the field names of the related tables(here 'name' from religions and 'gender_name' from genders)
     * @var array
     */
    public $dataArr =[

        'Gender Name'=>'gender_name',
        'Status'=>'status',

    ];

} 