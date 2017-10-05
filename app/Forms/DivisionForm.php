<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/7/2016
 * Time: 3:11 PM
 */

namespace Erp\Forms;
use Erp\Models\Division\Division;

class DivisionForm extends Division implements FormInterface
{
    use FormControll, DataHelper;

    protected $nonEditableFields = [];

    public function formInputFields($id = null,$mode=null)
    {
        return[
            [
                'type'=>'select',
                'name'=>self::COUNTRY,
                'label' => 'Country Name',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->countryList(),
                'value'=>0,
                'validation'=>"required|in:".$this->countryKeys()
            ],
            [
                'type'=>'text',
                'name'=>self::NAME,
                'label' => 'Division Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required|unique:division_translations,division_name,'.$id,
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
                'others'=>['class'=>'btn btn-success']

            ]*/
            submitBtn($id),
        ];
    }
}