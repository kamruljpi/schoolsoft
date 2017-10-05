<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 5/10/16
 * Time: 4:42 PM
 */

namespace Erp\Forms;


use Erp\Models\Marks\Marks;

class AddMarksForm extends Marks implements FormInterface
{

    use FormControll, DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        return [

            [
                'type'=>'select',
                'name'=>self::EXAM,
                'label' => 'Examination',
                'others'=>['class'=>'form-control','id'=>'add-marks-exam'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->examinationList(),
                'value'=>0,
                'validation'=>"required|in:".$this->examinationKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::STUDENT_CLASS,
                'label' => 'Class',
                'others'=>['class'=>'form-control','id'=>'add-marks-class'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->classList(),
                'value'=>0,
                'validation'=>"required|in:".$this->classKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::SECTION,
                'label' => 'Section',
                'others'=>['class'=>'form-control','id'=>'add-marks-section'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->sectionList(),
                'value'=>0,
                'validation'=>"required|in:".$this->sectionKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::SUBJECT,
                'label' => 'Subject',
                'others'=>['class'=>'form-control','id'=>'add-marks-subject'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->subjectList(),
                'value'=>0,
                'validation'=>"required|in:".$this->subjectKeys()
            ],

        ];
    }
}