<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/5/2016
 * Time: 4:13 PM
 */

namespace Erp\Forms;

use Erp\Models\Rack\Rack;

class RackForm extends Rack implements FormInterface
{
    use FormControll, DataHelper;

    protected $nonEditableFields = [];

    public function formInputFields($id = null, $mode = null)
    {
        return[
            [
                'type'=>'select',
                'name'=>self::BUILDING,
                'label' => 'Building Name',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->buildingList(),
                'value'=>0,
                'validation'=>"required|in:".$this->buildingKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::FLOOR,
                'label' => 'Floor Name',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->floorList(),
                'value'=>0,
                'validation'=>"required|in:".$this->floorKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::ROOM,
                'label' => 'Room Name',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->roomList(),
                'value'=>0,
                'validation'=>"required|in:".$this->roomKeys()
            ],
            [
                'type'=>'text',
                'name'=>self::RACK_NO,
                'label' => 'Rack No',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required'
            ],
            [
                'type'=>'radio',
                'name'=>self::STATUS,
                'label' => 'Status',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'radval'=> ['Active'=>'Active','Inactive'=>'Inactive'],
                'validation'=>"required"
            ],
            /*[
                'type'=>'submit',
                'label' => 'Submit',
                'others'=>[
                    'class'=>'btn btn-success',
                    'style'=>'background-color:#0073b7',
                    'readonly'=>'readonly'
                ],
            ]*/
            submitBtn($id),
        ];
    }
}