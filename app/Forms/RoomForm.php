<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/3/2016
 * Time: 10:46 AM
 */

namespace Erp\Forms;

use Erp\Models\Room\Room;

class RoomForm extends Room implements FormInterface
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
                'type'=>'text',
                'name'=>self::ROOM_NAME,
                'label' => 'Room Name',
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