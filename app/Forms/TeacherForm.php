<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 4/23/2016
 * Time: 3:42 PM
 */

namespace Erp\Forms;


use Erp\Models\User\User;

class TeacherForm extends User implements FormInterface
{
    use FormControll, DataHelper;

    protected $nonEditableFields = [
        self::ROLE,
        self::EMPLOYEE_DOCUMENT,
        self::FILES_TO_UPLOAD,
        self::AUTHENTICATION_INFO,
        self::EMAIL,
        self::PASSWORD,
        self::CONFIRM_PASSWORD,
        self::BANK_ACCOUNT,
        self::BANK,
        self::PAN,
        self::BRANCH,
        self::ACCOUNT_NO,
        self::IFSC
    ];
    public function formInputFields($id=null,$mode=null)
    {
        $isRequired = $id?"":"required";

        $teacherFields1 =  [
                [
                    'type'=>'hidden',
                    'name'=>self::ROLE,
                    'value'=>$this->role('teacher')
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
                    'label' => 'Teacher\'s  Photo',
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
                    'label' => 'Teacher Id',
                    'value'=>null,
                    'labclass'=>'col-sm-12',
                    'wrapclass'=>'col-sm-12 ',
                    'trans'=>false,
                    'others'=>[
                        'class'=>'form-control',
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
                        'class'=>'form-control'

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
                        'class'=>'form-control'
                    ],
                    'validation'=>'required',
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
                ],

        ];

        $teacherFields2 = [
            [
                'type'=>'text',
                'name'=>self::EMERGENCY_CONTACT,
                'label' => 'Emergency Contact',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'validation'=>'required',
                'others'=>[
                    'class'=>'form-control',
                ],
            ],
            [
                'type'=>'text',
                'name'=>self::NID_NUMBER,
                'label' => 'NID Number',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'validation'=>'required',
                'others'=>[
                    'class'=>'form-control',
                ],
            ],
            [
                'type'=>'text',
                'name'=>self::PASSPORT_NUMBER,
                'label' => 'Passport Number',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control',
                ],
            ],
            [
                'type'=>'text',
                'name'=>self::BIRTH_CERTIFICATE_NUMBER,
                'label' => 'Birth Certificate Number',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control',
                ],
            ],
            [
                'type'=>'label',
                'name'=>self::COMPANY_DETAILS,
                'value' => 'Official Details',
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
                'validation'=>"required|in:".$this->departmentKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::DESIGNATION,
                'label' => 'Designation',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>[],
                'value'=>0,
                'validation'=>"required|in:".$this->designationKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::SHIFT,
                'label' => 'Shift',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>[],
                'value'=>0,
                'validation'=>"required|in:".$this->shiftKeys()
            ],
            [
                'type'=>'text',
                'name'=>self::DETP_JOIN_DATE,
                'label' => 'Joining Date',
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
                'name'=>self::SALARY_DETAILS,
                'value' => 'Salary Details',
                'others'=>[
                    'class'=>'form_headering'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',

            ],
            [
                'type'=>'text',
                'name'=>self::BASIC,
                'label' => 'Basic',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'validation'=>'required',
                'others'=>[
                    'class'=>'form-control'
                ],
            ],
            [
                'type'=>'select',
                'name'=>self::ALLOWANCE,
                'label' => 'Allowance',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->salaryAllowanceList(),
                'value'=>0,
                'validation'=>"required|in:".$this->allowanceKeys()

            ],
            [
                'type'=>'select',
                'name'=>self::OVERTIME,
                'label' => 'Overtime',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->overtimeList(),
                'value'=>0,
                'validation'=>"required|in:".$this->overtimeKeys()

            ],
            [
                'type'=>'select',
                'name'=>self::SALARY_CUT,
                'label' => 'Salary Cut',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->salaryCutList(),
                'value'=>0,
                'validation'=>"required|in:".$this->salaryCutKeys()

            ],
            [
                'type'=>'select',
                'name'=>self::BONUS,
                'label' => 'Bonus',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->bonusList(),
                'value'=>0,
                //                'validation'=>"required|in:".$this->bonusKeys()

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
                'wrapclass'=>'col-sm-6',
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
                'wrapclass'=>'col-sm-6',
            ],
            [
                'type'=>'label',
                'name'=>self::BANK_ACCOUNT,
                'value' => 'Bank Account Information',
                'others'=>[
                    'class'=>'form_headering'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',

            ],
            [
                'type'=>'text',
                'name'=>self::ACCOUNT_NO,
                'label' => 'Account No',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>"required"
            ],
            [
                'type'=>'text',
                'name'=>self::BRANCH,
                'label' => 'Branch Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>"required"
            ],
            [
                'type'=>'text',
                'name'=>self::BANK,
                'label' => 'Bank Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>"required"
            ],
            [
                'type'=>'text',
                'name'=>self::IFSC,
                'label' => 'IFSC No',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                //   'validation'=>"required"
            ],
            [
                'type'=>'text',
                'name'=>self::PAN,
                'label' => 'Pan No',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                // 'validation'=>"required"
            ],
            [
                'type'=>'label',
                'name'=>self::EMPLOYEE_DOCUMENT,
                'value' => 'Teacher Documents',
                'others'=>[
                    'class'=>'form_headering'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',

            ],
            [
                'type'=>'file',
                'name'=>self::FILES_TO_UPLOAD,
                'label' => 'Resume',
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
                'label' => 'Offer Letter',
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
                'label' => 'Joining Letter',
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
                'label' => 'Contract and Agreement',
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
                'label' => 'ID Proof',
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
                    'class'=>'btn btn-primary',
                    'readonly'=>'readonly'
                ]
            ]*/
            submitBtn($id),
        ];

        if(empty($this->getNewFields('teacher')))
            $teacherFields3 = array();
        else
            $teacherFields3 = $this->getNewFields('teacher');


        $teacherFields = array_merge($teacherFields1,$teacherFields3,$teacherFields2);

        return $teacherFields;
    }

}