<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 3/19/16
 * Time: 11:35 AM
 */

namespace Erp\Forms;


use Erp\Models\Attendance\StudentAttendance;
use Erp\Models\Punch\Punch;

class StudentAttendanceForm extends StudentAttendance implements FormInterface
{
    use FormControll,DataHelper;

    public function formInputFields($id = null, $mode = null)
    {

        return [

            [
                'type'=>'text',
                'name'=>self::ATTENDANCE_DATE,
                'label' => 'Date',
                'others'=>['class'=>'form-control','data-date-format'=>"yyyy-mm-dd"],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'value'=>null,
                'validation'=>"required"
            ],
            [
                'type'=>'select',
                'name'=>self::STUDENT_CLASS,
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
                'name'=>self::SECTION,
                'label' => 'Section',
                'others'=>['class'=>'form-control'],
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
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->subjectList(),
                'value'=>0,
                'validation'=>"in:".$this->subjectKeys()
            ],

        ];
    }

}