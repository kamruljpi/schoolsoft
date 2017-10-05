<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/26/2016
 * Time: 4:10 PM
 */

namespace Erp\Forms;


class GeneralReportForm implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        return[
            [
                'type'=>'select',
                'name'=>'teacher_id',
                'label' => 'Teacher Details',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->teacherList(),
                'value'=>0,
                'validation'=>"required|in:".$this->teacherKeys()
            ],
            [
                'type'=>'submit',
                'label' => 'Generate',
                'others'=>[
                    'class'=>'btn btn-primary',
                    'id' => 'teacher-report-btn',
                    'name'=>'teacher-report-btn'
                ]

            ],
            [
                'type'=>'select',
                'name'=>'student_class_id',
                'label' => 'Student Details',
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
                'label' => false,
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12 hidden_v',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->sectionList(),
                'value'=>0,
                'validation'=>"required|in:".$this->sectionKeys()
            ],
            [
                'type'=>'select',
                'name'=>'department_id',
                'label' => false,
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12 hidden_v',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->departmentList(),
                'value'=>0,
                'validation'=>"required|in:".$this->departmentKeys()
            ],
            [
                'type'=>'select',
                'name'=>'student_id',
                'label' => false,
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12 hidden_v',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->studentList(),
                'value'=>0,
                'validation'=>"required|in:".$this->studentKeys()
            ],
            [
                'type'=>'submit',
                'label' => 'Generate',
                'others'=>[
                    'class'=>'btn btn-primary',
                    'id' => 'student-report-btn',
                    'name'=>'student-report-btn'
                ]

            ],
            [
                'type'=>'select',
                'name'=>'routine_class_id',
                'label' => 'Class Routine',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->classList(),
                'value'=>0,
                'validation'=>"required|in:".$this->classKeys()
            ],
            [
                'type'=>'select',
                'name'=>'routine_section_id',
                'label' => false,
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12 hidden_v',
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
                'type'=>'select',
                'name'=>'exam_class_id',
                'label' => false,
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12 hidden_v',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->classList(),
                'value'=>0,
                'validation'=>"required|in:".$this->classKeys()
            ],
            [
                'type'=>'select',
                'name'=>'exam_section_id',
                'label' => false,
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12 hidden_v',
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
                    'id' => 'exam-report-btn',
                    'name'=>'exam-report-btn'
                ]

            ]
        ];
    }
}