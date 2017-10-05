<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 12/21/15
 * Time: 3:43 PM
 */

namespace Erp\Forms;


use Erp\Models\Email\Email;

trait FormControll
{

    private  $fieldname ;
    private  $model;
//    private  $fieldname = 'field_name';

    /**
     * @return string
     */
    public function currentClass(){

        return get_class($this);
    }

    /**
     * @return array
     */
    public function hiddenField(){

        return [

            'type'=>'hidden',
            'name'=>$this->fieldName(),
            'value'=>$this->currentClass()

        ];
    }

    /**
     * @return string
     */
    public function fieldName(){

        $this->fieldname = 'field_name';

        return $this->fieldname;
    }



    public function creatableFields()
    {

    }

    /**
     * @param $formFields
     * @param array $fieldName
     * @param $id
     * @return mixed
     */
    public function filteredForm($id=null,$mode=null)
    {
        $id = isset($id)?$id:null;
        $mode = isset($mode)?$mode:null;
        $formFields = $this->formInputFields($id,$mode);
        if($id){
            foreach( $formFields as $key=>$value){
                if(isset($value['name']) && isset($this->nonEditableFields) && in_array($value['name'],$this->nonEditableFields)){
                    unset($formFields[$key]) ;
                }
            }
            return $formFields;
        }
        return $formFields;
    }

    /**
     * @param $model
     * @return mixed
     */
    public function editFormModel($model)
    {
        $this->model = $model;
        if(isset($this->model->translatedAttributes)){
            $translatedAttributes = $this->model->translatedAttributes;
        }

        if(isset($translatedAttributes)){
            foreach($translatedAttributes as $attribute){
                foreach(config('app.locales') as $locale => $language){
                    if(!is_null($this->model->translate($locale)))
                        $this->model->{$attribute.'_'.$locale} = $this->model->translate($locale)->$attribute;
                }
            }
        }

        if(isset($this->model->hasManyFunctions )){
            foreach($this->model->hasManyFunctions as $function=>$functionValues){
                foreach($functionValues as $value){
                    if(isset($this->model->{$function}->last()->{$value})):
                        $this->model->{$value} = $this->model->{$function}->last()->{$value};
                    endif;
                }
            }
        }
        /*if(isset($this->model->belongsToFunctions )){

            foreach($this->model->belongsToFunctions as $function=>$fieldName){
//                $belongsToClass = new $className;
                $this->model->{$fieldName} = $this->model->{$function}->name;
            }

        }*/
//dd( $this->model);
        return $this->model;
    }

}