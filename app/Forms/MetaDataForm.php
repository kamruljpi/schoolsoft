<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 4/28/16
 * Time: 3:27 PM
 */

namespace Erp\Forms;


use Erp\Models\Meta\MetaSetting;

class MetaDataForm extends MetaSetting implements FormInterface
{

    use FormControll, DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        return [

            [
                'type'=>'text',
                'name'=>self::FIELD_NAME,
                'label' => 'Field Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>"required|unique:meta_settings,".self::FIELD_NAME.",".$id
            ],
            [
                'type'=>'text',
                'name'=>self::FIELD_LEVEL,
                'label' => 'Field Label',
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
                'type'=>'select',
                'name'=>self::FIELD_TYPE,
                'label' => 'Field Type',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>['Select Field Type',
                    'text'=>'text',
                    'select'=>'select',
                    'radio'=>'radio',
                    'check'=>'check',
                    'textarea'=>'textarea',
                ],
                'value'=>0,
                'validation'=>"required|in:text,select,radio,check,textarea"

            ],
            [
                'type'=>'text',
                'name'=>self::FIELD_OPTION,
                'label' => 'Field Option',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
            ],
            [
                'type'=>'text',
                'name'=>self::DEFAULT_VALUE,
                'label' => 'Default value',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
            ],
            [
                'type'=>'hidden',
                'name'=>self::LABEL_CLASS,
                'label' => 'Label Class',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
            ],
            [
                'type'=>'hidden',
                'name'=>self::WRAP_CLASS,
                'label' => 'Wrap Class',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
            ],
            [
                'type'=>'hidden',
                'name'=>self::FIELD_CLASS,
                'label' => 'Field Class',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
            ],
            [
                'type'=>'select',
                'name'=>self::FORM_NAME,
                'label' => 'Form Name',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'options'=>['Select Form Name',
                    'user'=>'user',
                    'student'=>'student',
                    'teacher'=>'teacher',
                    'guardian'=>'guardian',
                ],
//                'options'=>$this->formClassList(),
                'value'=>0,
//                'validation'=>"required|in:".$this->formClassKeys()
                'validation'=>"required|in:student,user,teacher,guardian"
            ],
            [
                'type'=>'hidden',
                'name'=>self::VALIDATION_TYPE,
                'label' => 'Validation Type',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
            ],
            [
                'type'=>'hidden',
                'name'=>self::DESCRIPTION,
                'label' => 'Description',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
            ],
            [
                'type'=>'radio',
                'name'=>self::IS_REQUIRED,
                'label' => 'Is Required ?',
                'radval'=> [true=>'yes',false=>'no'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'others'=>[
                    'class'=>'form-control',
                ],
            ],
            [
                'type'=>'radio',
                'name'=>self::IS_DISPLAYABLE,
                'label' => 'Show in Display List',
                'radval'=> [true=>'yes',false=>'no'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'others'=>[
                    'class'=>'form-control',
                ],
            ],
  /*          [
                'type'=>'radio',
                'name'=>self::IS_TRANSLATABLE,
                'label' => 'Is Translatable ?',
                'radval'=> [true=>'yes',false=>'no'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'others'=>[
                    'class'=>'form-control',
                ],
            ],*/
            [
                'type'=>'radio',
                'name'=>self::IS_DELETED,
                'label' => 'Is Deleted ?',
                'radval'=> [true=>'yes',false=>'no'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'others'=>[
                    'class'=>'form-control',
                ],
            ],
            [
                'type'=>'radio',
                'name'=>self::STATUS,
                'label' => 'Status',
                'radval'=> ['Active'=>'Active','Inactive'=>'Inactive'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required',
            ],
            /*[
                'type'=>'submit',
                'label' => 'Submit',
                'others'=>[
                    'class'=>'btn btn-success',
                    'style'=>'background-color:#0073b7 ; color:white',
                    'readonly'=>'readonly'
                ]
            ]*/
            submitBtn($id),
        ];
    }

}