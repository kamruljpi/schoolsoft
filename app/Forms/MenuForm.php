<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 5/24/16
 * Time: 2:33 PM
 */

namespace Erp\Forms;


use Erp\Models\Menu\Menu;

class MenuForm extends Menu implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        $mod_class = (isset($id) && !empty($id)) ? "modifyreadonly" : "";
        return [
            [
                'type'=>'text',
                'name'=>self::MENU_NAME,
                'label' => 'Menu',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
//                'validation'=>'required|unique:menu_translations,menu_name,'.$id,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::ICON,
                'label' => 'Icon name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::ROUTE_NAME,
                'label' => 'Route',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'validation'=>'required|unique:menus,route_name,'.$id,
                'others'=>["class"=>"form-control {$mod_class}"]
            ],
            [
                'type'=>'select',
                'name'=>self::PARENT_ID,
                'label' => 'Parent',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->menusList(),
                'value'=>0,
//                'validation'=>"required|in:".$this->roleKeys()
            ],
            [
                'type'=>'radio',
                'name'=>self::STATUS,
                'label' => 'Status',
                'radval'=> [true=>'Active',false=>'Inactive'],
                'bool'=>true,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required',

            ],
            [
                'type'=>'radio',
                'name'=>self::IS_COMMON_ACCESS,
                'label' => 'Is accessable for all',
                'radval'=> [true=>'Yes',false=>'No'],
                'bool'=>true,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required',

            ],
            [
                'type'=>'radio',
                'name'=>self::IS_DISPLAYABLE,
                'label' => 'Is displayable',
                'radval'=> [true=>'Yes',false=>'No'],
                'bool'=>true,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required',

            ],
            /*[
                'type'=>'submit',
                'label' => 'Submit',
                'others'=>['class'=>'btn btn-success']

            ]*/
            submitBtn($id),
        ];
    }
}