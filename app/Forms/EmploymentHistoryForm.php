<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/12/2016
 * Time: 3:06 PM
 */

namespace Erp\Forms;


use Erp\Models\EmploymentHistory\EmploymentHistory;

class EmploymentHistoryForm extends EmploymentHistory implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null,$mode=null)
    {
        return[
            [
                'type'=>'text',
                'name'=>self::COMPANY_NAME,
                'label' => 'Company Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'select',
                'name'=>self::BUSINESS_TYPE,
                'label' => 'Company Business',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->businessTypeList(),
                'value'=>0,
                'validation'=>"required|in:".$this->businessTypeKeys()
            ],
            [
                'type'=>'text',
                'name'=>self::COMPANY_LOCATION,
                'label' => 'Company Location',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::POSITION_HELD,
                'label' => 'Position Held',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::DEPARTMENT,
                'label' => 'Department',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'textarea',
                'name'=>self::RESPONSIBILITES,
                'label' => 'Responsibilities',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::FROM_DATE,
                'label' => 'From Date',
                'others'=>['class'=>'form-control','data-date-format'=>"yyyy-mm-dd"],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'validation'=>'required',
                'value'=>null
            ],
            [
                'type'=>'text',
                'name'=>self::TO_DATE,
                'label' => 'To Date',
                'others'=>['class'=>'form-control','data-date-format'=>"yyyy-mm-dd"],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'validation'=>'required',
                'value'=>null
            ],
            [
                'type'=>'select',
                'name'=>self::EXPERIENCE_CATEGORY,
                'label' => 'Experience Category',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->experienceCategoryList(),
                'value'=>0,
                'validation'=>"required|in:".$this->experienceCategoryKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::EXPERIENCE_ALL.'[]',
                'label' => 'Experience',
                'others'=>[
                    'class'=>'form-control',
                    'multiple'=>'multiple',
                    'id'=>'experience_all'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->experienceList(),
                'value'=>0,
//                'validation'=>"required|in:".$this->experienceKeys()
            ],
            [
                'type'=>'radio',
                'name'=>self::STATUS,
                'label' => 'Status',
                'radval'=> ['Active'=>'Active','Inactive'=>'Inactive'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            /*[
                'type'=>'submit',
                'label' => 'Submit',
                'others'=>[
                    'class'=>'btn btn-primary'
                ]

            ]*/
            submitBtn($id),
        ];
    }
}