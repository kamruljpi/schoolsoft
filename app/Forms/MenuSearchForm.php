<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/26/2016
 * Time: 2:34 PM
 */

namespace Erp\Forms;


use Erp\Models\Menu\Menu;

class MenuSearchForm implements FormInterface
{
    use FormControll;

    public function formInputFields($id = null, $mode = null)
    {
        return[
            [
                'type'=>'text',
                'name'=>'menu_name',
                'label' => 'Menu name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-6',
//                'validation'=>'required|unique:menu_translations,menu_name,'.$id,
                'validation'=>'required',
                'others'=>[
                    'class'=>'form-control',
                    'placeholder'=>'Search'
                ]
            ]
        ];
    }
}