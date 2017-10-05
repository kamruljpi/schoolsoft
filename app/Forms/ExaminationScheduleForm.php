<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/4/2016
 * Time: 4:22 PM
 */

namespace Erp\Forms;

use Erp\Models\Examinations\ExaminationSchedule;

class ExaminationScheduleForm extends ExaminationSchedule implements FormInterface
{
    use FormControll, DataHelper;

    protected $nonEditableFields = [];

    public function formInputFields($id = null, $mode = null)
    {
        return[
            [
                'type'=>'select',
                'name'=>self::EXAMINATION,
                'label' => 'Examination Name',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->examinationList(),
                'value'=>0,
                'validation'=>"required|in:".$this->examinationKeys()
            ],
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
                'type'=>'text',
                'name'=>self::EXAMINATION_DATE,
                'label' => 'Date',
                'others'=>['class'=>'form-control','data-date-format'=>"yyyy-mm-dd"],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'value'=>null,
                'validation'=>"required"
            ],
            [
                'type'=>'text',
                'name'=>self::EXAMINATION_START_TIME,
                'label' => 'Time From',
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
                'name'=>self::EXAMINATION_END_TIME,
                'label' => 'Time To',
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