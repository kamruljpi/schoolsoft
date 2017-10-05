<?php
/**
 * Created by PhpStorm.
 * User: tiash
 * Date: 5/3/2016
 * Time: 3:16 PM
 */

namespace Erp\Forms;

use Erp\Models\Routine\Routine;


class RoutineForm extends Routine implements FormInterface
{
    use FormControll, DataHelper;

    protected $nonEditableFields = [];

    public function formInputFields($id = null, $mode = null)
    {
        return[
            [
                'type'=>'select',
                'name'=>self::STUDENT_CLASS,
                'label' => 'Class Name',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->classList(),
                'value'=>0,
                'validation'=>"required|in:".$this->classKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::SECTION,
                'label' => 'Section Name',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->sectionList(),
                'value'=>0,
                'validation'=>"required|in:".$this->sectionKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::SUBJECT,
                'label' => 'Subject Name',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->subjectList(),
                'value'=>0,
                'validation'=>"required|in:".$this->subjectKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::TEACHER,
                'label' => 'Teacher Name',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->teacherList(),
                'value'=>0,
                'validation'=>"required|in:".$this->teacherKeys()
            ],
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
                'type'=>'select',
                'name'=>self::WEEKDAY,
                'label' => 'Day',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>[
                    'SATURDAY'=>'SATURDAY',
                    'SUNDAY'=>'SUNDAY',
                    'MONDAY'=>'MONDAY',
                    'TUESDAY'=>'TUESDAY',
                    'WEDNESDAY'=>'WEDNESDAY',
                    'THURSDAY'=>'THURSDAY',
                    'FRIDAY'=>'FRIDAY'
                ],
                'value'=>0,
                'validation'=>"required"
            ],
            [
                'type'=>'text',
                'name'=>self::START_TIME,
                'label' => 'Start Time',
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
                'type'=>'text',
                'name'=>self::END_TIME,
                'label' => 'End Time',
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
                'type'=>'select',
                'name'=>self::COORDINATOR,
                'label' => 'Coordinator Name',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->teacherList(),
                'value'=>0,
                'validation'=>"required|in:".$this->teacherKeys()
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