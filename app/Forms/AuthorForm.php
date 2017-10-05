<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/5/2016
 * Time: 11:52 AM
 */

namespace Erp\Forms;


use Erp\Models\Author\Author;

class AuthorForm extends Author implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null,$mode=null)
    {
        return[
            [
                'type'=>'text',
                'name'=>self::AUTHOR_NAME,
                'label' => 'Author Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'file',
                'name'=>self::PHOTO,
                'label' => 'Author\'s  Photo',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                    'id'=>'file'
                ],
                'validation'=>"image"
            ],
            [
                'type'=>'text',
                'name'=>self::AUTHOR_DATE_OF_BIRTH,
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
                'name'=>self::AUTHOR_BIRTH_PLACE,
                'label' => 'Birth Place',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'textarea',
                'name'=>self::AUTHOR_NOTE,
                'label' => 'Note',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
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
                    'class'=>'btn btn-success',
                    'style'=>'background-color:#0073b7 ; color:white'
                ]

            ]*/
            submitBtn($id),
        ];
    }
}