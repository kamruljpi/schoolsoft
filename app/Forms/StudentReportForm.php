<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/25/2016
 * Time: 12:27 AM
 */

namespace Erp\Forms;


class StudentReportForm
{
    use FormControll, DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        return[
            [
                'type'=>'submit',
                'label' => 'Class Routine',
                'others'=>[
                    'class'=>'btn btn-primary',
                    'id' => 'routine-report-btn',
                    'name'=>'routine-report-btn'
                ]

            ],
            [
                'type'=>'select',
                'name'=>'examination_id',
                'label' => 'Exam Routine',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->examinationList(),
                'value'=>0,
                'validation'=>"required|in:".$this->examinationKeys()
            ],
            [
                'type'=>'submit',
                'label' => 'Exam Routine',
                'others'=>[
                    'class'=>'btn btn-primary',
                    'id' => 'exam-report-btn',
                    'name'=>'exam-report-btn'
                ]
            ],
            [
                'type'=>'submit',
                'label' => 'Account Report',
                'others'=>[
                    'class'=>'btn btn-primary',
                    'id' => 'account-report-btn',
                    'name'=>'account-report-btn'
                ]
            ],
            [
                'type'=>'submit',
                'label' => 'Testimonial',
                'others'=>[
                    'class'=>'btn btn-primary',
                    'id' => 'testimonial-report-btn',
                    'name'=>'testimonial-report-btn'
                ]
            ]
        ];
    }
}