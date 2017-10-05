<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 4/23/16
 * Time: 4:58 PM
 */

namespace Erp\Forms;


use Erp\Models\Student\Student;
use Erp\Models\User\User;

class StudentForm extends User implements FormInterface
{

    use FormControll, DataHelper;//must

    protected $nonEditableFields = [
        self::ROLE,
        self::EMPLOYEE_DOCUMENT,
        self::FILES_TO_UPLOAD,
        self::AUTHENTICATION_INFO,
        self::EMAIL,
        self::PASSWORD,
        self::CONFIRM_PASSWORD
    ];


    public function formInputFields($id = null, $mode = null)
    {
        $isRequired = $id?"":"required";

            $studentForm = [

            [
                'type'=>'hidden',
                'name'=>self::ROLE,
                'value'=>$this->role('student')
            ],
            [
                'type'=>'label',
                'name'=>self::PHOTO,
                'value' => 'Photograph',
                'others'=>[
                    'class'=>'form_headering'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',

            ],

            [
                'type'=>'file',
                'name'=>self::PHOTO,
                'label' => 'Student\'s  Photo',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                    'id'=>'file'
                ],
                'validation'=>"image|$isRequired"
            ],
            [
                'type'=>'label',
                'value' => 'Personal Information',
                'others'=>[
                    'class'=>'form_headering'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
            ],
            [
                'type'=>'text',
                'name'=>self::EMPLOYEE_ID,
                'label' => 'Student Id',
                'value'=>null,
                'prefix'=>'1',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                                   'maxlength'=>9,
                                   'minlength'=>9,
                ],
                'validation'=>"required|unique:users,".self::EMPLOYEE_ID.",".$id
            ],
            [
                'type'=>'text',
                'name'=>self::USER_NAME,
                'label' => 'User Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>"required|unique:users,".self::USER_NAME.",".$id
            ],
            [
                'type'=>'text',
                'name'=>self::FIRST_NAME,
                'label' => 'First Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>true,
                'others'=>[
                    'class'=>'form-control',
                    'id'=>'first_name'
                ],
                'validation'=>'required',

            ],
            [
                'type'=>'text',
                'name'=>self::LAST_NAME,
                'label' => 'Last Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>[
                    'class'=>'form-control',

                ],
            ],
            [
                'type'=>'text',
                'name'=>self::FATHER,
                'label' => 'Father\'s Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>[
                    'class'=>'form-control',

                ],
            ],
            [
                'type'=>'text',
                'name'=>self::MOTHER,
                'label' => 'Mother\'s Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>[
                    'class'=>'form-control',
                ],
            ],
            [
                'type'=>'select',
                'name'=>self::GUARDIAN,
                'label' => 'Guardian',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->guardianList(),
                'value'=>0,
                'validation'=>"required|in:".$this->guardianKeys()

            ],
            [
                'type'=>'textarea',
                'name'=>self::ADDRESS,
                'label' => 'Local Address',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'others'=>[
                    'class'=>'form-control',
//                                    'maxlength'=>10,
//                                    'minlength'=>5,
                ],
                'validation'=>'required',

            ],
            [
                'type'=>'textarea',
                'name'=>self::PERMANENT_ADDRESS,
                'label' => 'Permanent Address',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'others'=>[
                    'class'=>'form-control'
                ],
                'validation'=>'required',

            ],
            [
                'type'=>'text',
                'name'=>self::BIRTHDAY,
                'label' => 'Date of Birth',
                'others'=>[
                    'class'=>'form-control',
                    'data-date-format'=>'yyyy-mm-dd'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                //'value'=>date('m/d/Y'),
                'value'=>null,
                'validation'=>"required"
            ],
            [
                'type'=>'text',
                'name'=>self::PHONE,
                'label' => 'Phone',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'bool'=> true,
                'radval'=> ['1','2','3'],
                'others'=>[
                    'class'=>'form-control',
                    /*'maxlength'=>10,
                    'minlength'=>5,*/
                ],
                'validation'=>'required',
            ],
            [
                'type'=>'text',
                'name'=>self::EMERGENCY_CONTACT,
                'label' => 'Emergency Contact',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'bool'=> true,
                'radval'=> ['1','2','3'],
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required',
            ],
            [
                'type'=>'text',
                'name'=>self::NID_NUMBER,
                'label' => 'National ID Number',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'bool'=> true,
                'radval'=> ['1','2','3'],
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required',
            ],
            [
                'type'=>'text',
                'name'=>self::PASSPORT_NUMBER,
                'label' => 'Passport Number',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'bool'=> true,
                'radval'=> ['1','2','3'],
                'others'=>[
                    'class'=>'form-control',
                ],
//                'validation'=>'required',
            ],
            [
                'type'=>'text',
                'name'=>self::BIRTH_CERTIFICATE_NUMBER,
                'label' => 'Birth Certificate Number',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'bool'=> true,
                'radval'=> ['1','2','3'],
                'others'=>[
                    'class'=>'form-control',
                ],
//                'validation'=>'required',
            ],

            [
                'type'=>'select',
                'name'=>self::GENDER,
                'label' => 'Gender',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->genderList(),
                'value'=>0,
                'validation'=>"required|in:".$this->genderKeys()

            ],
            [
                'type'=>'select',
                'name'=>self::RELIGION,
                'label' => 'Religion',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->relegionList(),
                'value'=>0,
                'validation'=>"required|in:".$this->relegionKeys()
            ],];

        $studentForm2 = [
            [
                'type'=>'label',
                'name'=>'Institutional_info',
                'value' => 'Institutional Details',
                'others'=>[
                    'class'=>'form_headering'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',

            ],
            [
                'type'=>'select',
                'name'=>self::DEPARTMENT,
                'label' => 'Department',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->departmentList(),
                'value'=>0,
//                'validation'=>"required|in:".$this->departmentKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::STUDENT_CLASS,
                'label' => 'Class',
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
                'label' => 'Section',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->sectionList(),
                'value'=>0,
                'validation'=>"required|in:".$this->sectionKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::SUBJECT_GROUP,
                'label' => 'Subject Group',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->subjectGroupList(),
                'value'=>0,
                'validation'=>"required|in:".$this->subjectGroupKeys()
            ],
            [
                'type'=>'text',
                'name'=>self::ROLL_NO,
                'label' => 'Roll No',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'bool'=> true,
                'radval'=> ['1','2','3'],
                'others'=>[
                    'class'=>'form-control',
                    /*'maxlength'=>10,
                    'minlength'=>5,*/
                ],
                'validation'=>'required',
            ],
            [
                'type'=>'text',
                'name'=>self::DETP_JOIN_DATE,
                'label' => 'Admission Date',
                'others'=>[
                    'class'=>'form-control',
                    'data-date-format'=>'yyyy-mm-dd'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'value'=>null,
                //'value'=>date('m/d/Y'),
                'validation'=>"required"
            ],

            [
                'type'=>'label',
                'name'=>self::AUTHENTICATION_INFO,
                'value' => 'Authentication Information',
                'others'=>[
                    'class'=>'form_headering'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',

            ],
            [
                'type'=>'email',
                'name'=>self::EMAIL,
                'label' => 'Email',
                'others'=>[
                    'class'=>'form-control'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'validation'=>"required|unique:users,email,".$id."|unique:emails,email"
            ],
            [
                'type'=>'password',
                'name'=>self::PASSWORD,
                'label' => 'Password',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control'
                ],
                'validation'=>$id==null?'required|confirmed':'required'

            ],
            [
                'type'=>'password',
                'name'=>self::CONFIRM_PASSWORD,
                'label' => 'Confirm Password',
                'others'=>[
                    'class'=>'form-control'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
            ],

            [
                'type'=>'label',
                'name'=>self::EMPLOYEE_DOCUMENT,
                'value' => 'Student Documents',
                'others'=>[
                    'class'=>'form_headering'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',

            ],
            [
                'type'=>'file',
                'name'=>self::FILES_TO_UPLOAD,
                'label' => 'Birth Certificate',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                //                'validation'=>"required"
            ],
            [
                'type'=>'file',
                'name'=>self::FILES_TO_UPLOAD,
                'label' => 'Testimonial(If Any)',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'others'=>[
                    'class'=>'form-control',
                ],
                //                'validation'=>"required"
            ],
            [
                'type'=>'file',
                'name'=>self::FILES_TO_UPLOAD,
                'label' => 'Transfer Certificate(If Any)',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                //                'validation'=>"required"
            ],

            /*[
                'type'=>'submit',
                'label' => $submitButton,
                'others'=>[
                    'class'=>'btn btn-success',
                    'style'=>'background-color:#0073b7 ; color:white',
                    'readonly'=>'readonly'
                ]
            ]*/
            submitBtn($id),
        ];
        if(empty($this->getNewFields('student')))
            $studentForm3 = array();
        else
            $studentForm3 = $this->getNewFields('student');


        $totalForm = array_merge($studentForm,$studentForm3,$studentForm2);

        return $totalForm;

    }

}