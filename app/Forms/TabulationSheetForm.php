<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 7/14/2016
 * Time: 12:02 PM
 */

namespace Erp\Forms;


class TabulationSheetForm implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        return[
            [
                'type'=>'select',
                'name'=>'exam_id',
                'label' => 'Examination',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->examinationList(),
                'value'=>0,
                'validation'=>"required|in:".$this->examinationKeys()
            ],
            [
                'type'=>'select',
                'name'=>'student_class_id',
                'label' => 'Class',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->classList(),
                'value'=>0,
                'validation'=>"required|in:".$this->classKeys()
            ],
            [
                'type'=>'select',
                'name'=>'section_id',
                'label' => 'Section',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->sectionList(),
                'value'=>0,
                'validation'=>"required|in:".$this->sectionKeys()
            ],
            [
                'type'=>'submit',
                'label' => 'Generate',
                'others'=>[
                    'class'=>'btn btn-primary',
                    'id' => 'tabulation-sheet-btn',
                    'name'=>'tabulation-sheet-btn'
                ]
            ]
        ];
    }
}