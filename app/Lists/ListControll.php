<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 1/9/16
 * Time: 10:46 AM
 */

namespace Erp\Lists;




trait ListControll
{

    private $model;
    /**
     * @return array
     */
    public function tbodyValues($model)
    {

        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $this->model = $model->all();
        $modelsArr =[];

//dd($this->model);
        foreach ($this->model as $model) {
            if(isset($model->translatedAttributes)){
                $translatedAttributes = $model->translatedAttributes;
            }
            if(isset($translatedAttributes)){
                foreach($translatedAttributes as $attribute){
                    $model->{$attribute} = isset($model->translate($locale)->$attribute)?$model->$attribute:$model->translate($defaultLocale)->$attribute;
//                    $model->{$attribute} = $model->translate($locale,$defaultLocale)->$attribute;
                }
            }

            $modelsArr[] = $model;
        }


//        return $this->model;
//        dd($modelsArr[1]->first_name);
        return $modelsArr;
    }
}