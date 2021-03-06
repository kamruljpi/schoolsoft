<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 12/10/15
 * Time: 3:56 PM
 */


/**
 * @return string
 */

if(!defined('SITE_ID')){

    define('SITE_ID','xxsiteId');
}

function startlegend()
{
    $formField = '' ;

    return  $formField .= '<div class="row">';

}
function endlegend()
{
    $formField = '' ;

    return  $formField .= '<div class="row">';

}

function inputLangControl(){


    $languages =  config('app.locales');
    $lang_def = 'en';
    $formField = '';
    $formField .= '<select class="control_lang">';
    foreach($languages as $key=>$value){
        $formField .= '<option value="'.$key.'">'.$value.'</option>';
    }
    $formField .= '</select>';

    return  $formField;
}


/**
 * @param array $field
 * @return string
 */

function inputField($field=[]){

    $languages = config('app.locales');
    $lang_def = 'en';
    $formField =  '';


    switch (isset($field['type'])?$field['type']:'invalid') {

        case 'startlegend':
            $formField .= function_exists('startlegend')?startlegend($field):null ;
            break;
        case 'endlegend':
            $formField .= function_exists('endlegend')?endlegend($field):null ;
            break;
        case 'label':
            $formField .= function_exists('fieldLabel')?fieldLabel($field):null ;
            break;
        case 'text':
            $formField .= function_exists('fieldText')?fieldText($field,$languages):null;
            break;
        case 'textarea':
            $formField .= function_exists('fieldTextArea')?fieldTextArea($field,$languages):null;
            break;
        case 'select':
            $formField .= function_exists('fieldSelect')?fieldSelect($field,$languages):null;
            break;
        case 'checkbox':
            $formField .= function_exists('fieldCheckBox')?fieldCheckBox($field):null;
            break;
        case 'checkboxsalary':
            $formField .= function_exists('fieldCheckBoxForSalary')?fieldCheckBoxForSalary($field):null;
            break;
        case 'radio':
            $formField .= function_exists('fieldRadio')?fieldRadio($field):null;
            break;
        case 'email':
            $formField .= function_exists('fieldEmail')?fieldEmail($field):null;
            break;
        case 'file':
            $formField .= function_exists('fieldFile')?fieldFile($field):null;
            break;
        case 'password':
            $formField .= function_exists('fieldPassword')?fieldPassword($field):null;
            break;
        case 'number':
            $formField .= function_exists('fieldNumber')?fieldNumber($field):null;
            break;
        case 'date':
            $formField .= function_exists('fieldDate')?fieldDate($field):null;
            break;
        case 'hidden':
            $formField .= function_exists('fieldHidden')?fieldHidden($field):null;
            break;
        case 'submit':
            $formField .= function_exists('formSubmit')?formSubmit($field):null;
            break;
        case 'startrow':
            $formField .= function_exists('startRow')?startRow():null;
            break;
        case 'endrow':
            $formField .= function_exists('endRow')?endRow():null;
            break;
        case 'salaryfield':
            $formField .= function_exists('salaryField')?salaryField($field,$languages):null;
            break;
        case 'marksType':
            $formField .= function_exists('marksTypeField')?marksTypeField($field,$languages):null;
            break;
        case 'marksTypeTable':
            $formField .= function_exists('marksTypeTable')?marksTypeTable($field):null;
            break;

        case 'subjectTable':
            $formField .= function_exists('subjectTable')?subjectTable($field):null;
            break;

        default:
            return null;
    }

    return $formField;
}
if(!function_exists('subjectTable')){
    function subjectTable($field)
    {
        $Sl = 1;
        $formField = '';
        $formField .= '<div id="subjectTableTest">';
            $formField .= '<div id="subjectTable" class="field_wrap '.(isset($field['wrapclass'])?$field['wrapclass']:null).' ">';
            $formField .= Form::label(
                isset($field['name']) ? $field['name']:null,
                isset($field['label'])?$field['label']:null,[
                    'class'=>isset($field['labclass'])?$field['labclass']:null
                ]
            );
            $formField .= '</div>';
        $formField .= '</div>';

        return $formField;
    }
}

if(!function_exists('marksTypeTable')){

    function marksTypeTable($field)
    {

        $Sl = 1;
        $formField = '';
        $formField .= '<div class="field_wrap '.(isset($field['wrapclass'])?$field['wrapclass']:null).' ">';
        $formField .= Form::label(
            isset($field['name']) ? $field['name']:null,
            isset($field['label'])?$field['label']:null,[
                'class'=>isset($field['labclass'])?$field['labclass']:null
            ]
        );
        $table = '<table border="1">';
        $table .= '<tr>';
        $table .= '<th> Sl </th><th>Select</th><th> Mark Type </th><th>Total</th><th>Pass Mark</th>';
        $table .= '</tr>';

         $markTypes = \Erp\Models\Marks\MarksType::all();
        if(!$markTypes->isEmpty()){

            foreach ($markTypes as $markType){

                $markTypeName = isset($markType->marks_type)?$markType->marks_type:null;
                $markTypeId = isset($markType->id)?$markType->id:null;
                $table .= '<tr>';
                $table .= '<td>'. $Sl++ .'</td><td>'.Form::checkbox('subject_marks_type['.$markType->id.']', $markTypeId , isset($field['value'][$markType->id]->markTypeMax) && isset($field['value'][$markType->id]->markTypePass)?true:false).'</td>
                <td>'.$markTypeName.'</td><td>'.
                    Form::text('max_marks['.$markType->id.']',isset($field['value'][$markType->id]->markTypeMax)?$field['value'][$markType->id]->markTypeMax:0,isset($field['others'])?$field['others']:[]).
                    '</td><td>'.
                    Form::text('pass_no['.$markType->id.']',isset($field['value'][$markType->id]->markTypePass)?$field['value'][$markType->id]->markTypePass:0,isset($field['others'])?$field['others']:[]).
                    '</td>';
                $table .= '</tr>';
            }

        }

        $table .= '</table>';

        return $formField.$table;
    }

}

function marksTypeField($field,$languages){

    $languages = config('app.locales');
    $lang_def = 'en';
    $formFields =  '';
    foreach($field['value'] as $types){
        foreach($types as $type){
//            dd($type);
            switch (isset($type['type'])?$type['type']:'invalid') {
                case 'label':
//                dd($type);
                    $formFields .= function_exists('fieldLabel')?fieldLabel($type):null ;
//                dd($formFields);
                    break;
                case 'text':
                    $formFields .= function_exists('fieldText')?fieldText($type,$languages):null;
//                dd($formFields);
                    break;
                case 'textarea':
                    $formFields .= function_exists('fieldTextArea')?fieldTextArea($type,$languages):null;
                    break;
                case 'select':
                    $formFields .= function_exists('fieldSelect')?fieldSelect($type,$languages):null;
                    break;
                case 'checkbox':
                    $formFields .= function_exists('fieldCheckBoxForSalary')?fieldCheckBoxForSalary($type):null;
                    break;
                case 'radio':
                    $formFields .= function_exists('fieldRadio')?fieldRadio($type):null;
                    break;
                case 'email':
                    $formFields .= function_exists('fieldEmail')?fieldEmail($type):null;
                    break;
                case 'file':
                    $formFields .= function_exists('fieldFile')?fieldFile($type):null;
                    break;
                case 'password':
                    $formFields .= function_exists('fieldPassword')?fieldPassword($type):null;
                    break;
                case 'number':
                    $formFields .= function_exists('fieldNumber')?fieldNumber($type):null;
                    break;
                case 'date':
                    $formFields .= function_exists('fieldDate')?fieldDate($type):null;
                    break;
                case 'hidden':
                    $formFields .= function_exists('fieldHidden')?fieldHidden($type):null;
                    break;
                case 'submit':
                    $formFields .= function_exists('formSubmit')?formSubmit($type):null;
                    break;
                case 'startrow':
                    $formFields .= function_exists('startRow')?startRow():null;
                    break;
                case 'endrow':
                    $formFields .= function_exists('endRow')?endRow():null;
                    break;
            }
        }

    };

    return $formFields;

}
function salaryField($field,$languages){

    $languages = config('app.locales');
    $lang_def = 'en';
    $formFields =  '';
    foreach($field['value'] as $types){
        foreach($types as $type){
//            dd($type);
            switch (isset($type['type'])?$type['type']:'invalid') {
                case 'label':
//                dd($type);
                    $formFields .= function_exists('fieldLabel')?fieldLabel($type):null ;
//                dd($formFields);
                    break;
                case 'text':
                    $formFields .= function_exists('fieldText')?fieldText($type,$languages):null;
//                dd($formFields);
                    break;
                case 'textarea':
                    $formFields .= function_exists('fieldTextArea')?fieldTextArea($type,$languages):null;
                    break;
                case 'select':
                    $formFields .= function_exists('fieldSelect')?fieldSelect($type,$languages):null;
                    break;
                case 'checkbox':
                    $formFields .= function_exists('fieldCheckBoxForSalary')?fieldCheckBoxForSalary($type):null;
                    break;
                case 'radio':
                    $formFields .= function_exists('fieldRadio')?fieldRadio($type):null;
                    break;
                case 'email':
                    $formFields .= function_exists('fieldEmail')?fieldEmail($type):null;
                    break;
                case 'file':
                    $formFields .= function_exists('fieldFile')?fieldFile($type):null;
                    break;
                case 'password':
                    $formFields .= function_exists('fieldPassword')?fieldPassword($type):null;
                    break;
                case 'number':
                    $formFields .= function_exists('fieldNumber')?fieldNumber($type):null;
                    break;
                case 'date':
                    $formFields .= function_exists('fieldDate')?fieldDate($type):null;
                    break;
                case 'hidden':
                    $formFields .= function_exists('fieldHidden')?fieldHidden($type):null;
                    break;
                case 'submit':
                    $formFields .= function_exists('formSubmit')?formSubmit($type):null;
                    break;
                case 'startrow':
                    $formFields .= function_exists('startRow')?startRow():null;
                    break;
                case 'endrow':
                    $formFields .= function_exists('endRow')?endRow():null;
                    break;
            }
        }

    };

    return $formFields;

}
/**
 * @return string
 */

function startRow()
{
    $formField = '';

    return $formField .= '<div class="row">';

}


/**
 * @return string
 */

function endRow()
{
    $formField = '';

    return  $formField .= '</div>';
}

/**
 * @param $field
 * @param $languages
 * @return string
 */

function fieldText($field,$languages)
{

    $formField = '';
    $formField .= '<div class="field_wrap '.(isset($field['wrapclass'])?$field['wrapclass']:null).' ">';
    $formField .= Form::label(
        isset($field['name']) ? $field['name']:null,
        isset($field['label'])?$field['label']:null,[
            'class'=>isset($field['labclass'])?$field['labclass']:null
        ]
    );
    if(isset($field['trans']) && $field['trans'] == true ){
        foreach($languages as $key=>$value){
            $formField .= '<div class="translation_wrap trans_'.$key.' col-sm-11 trans_row">';
            $formField .=  Form::text(
                isset($field['name'])?$field['name'].'_'.$key:null,
                isset($field['value'])?$field['value']:null,
                isset($field['others'])?$field['others']:[]
            );

            $formField .= '</div>';
            $formField .= '<div class="translation_wrap trans_'.$key.' ">';
            $formField .= Form::label(
                isset($field['name']) ? $field['name']:null,
                $value,[
                    'class'=>'col-sm-1 text-blue',
                    'style'=>' height:35px;'
                ]
            );
            if(isset($field['prefix']) && !empty($field['prefix'])){
            	$formField .= '<span class="input-group-addon">'.$field['prefix'].'</span>';
        	}
            $formField .= '</div>';
        }
    }else{
    	if(isset($field['prefix']) && !empty($field['prefix'])){
        	$formField .= '<span class="input-group-addon">'.$field['prefix'].'</span>';
    	}
    	if(isset($field['others']['class'])){
    		$sntclass = isset($field['name'])?$field['name']:"";
        	$field['others']['class'] = $field['others']['class']." ".$sntclass;
    	}
        $formField .=  Form::text(
            isset($field['name'])?$field['name']:null,
            isset($field['value'])?$field['value']:null,
            isset($field['others'])?$field['others']:[]
        );
    }
    $formField .= '</div>';

    return $formField;

}

/**
 * @param $field
 * @param $languages
 * @return string
 */

function fieldTextArea($field,$languages)
{
    $formField = '';
    $formField .= '<div class="field_wrap '.(isset($field['wrapclass'])?$field['wrapclass']:null).' ">';
    $formField .= Form::label(
        isset($field['name']) ? $field['name']:null,
        isset($field['label'])?$field['label']:null,[
            'class'=>isset($field['labclass'])?$field['labclass']:null
        ]
    );
    if(isset($field['trans']) && $field['trans'] == true){

        foreach($languages as $key=>$value){
            $formField .= '<div class="translation_wrap trans_'.$key.' col-sm-11 trans_row">';
            $formField .=  Form::textarea(
                isset($field['name'])?$field['name'].'_'.$key:null,
                isset($field['value'])?$field['value']:null,
                isset($field['others'])?$field['others']:[]
            );
            $formField .= '</div>';
            $formField .= '<div class="translation_wrap trans_'.$key.' ">';
            $formField .= Form::label(
                isset($field['name']) ? $field['name']:null,
                $value,[
                    'class'=>'col-sm-1 text-blue',
                    'style'=>' height:35px;'
                ]
            );
            $formField .= '</div>';
        }
    }else{
        $formField .=  Form::textarea(
            isset($field['name'])?$field['name']:null,
            isset($field['value'])?$field['value']:null,
            isset($field['others'])?$field['others']:[]
        );
    }
    $formField .= '</div>';

    return $formField;
}

/**
 * @param $field
 * @param $languages
 * @return string
 */

function fieldSelect($field,$languages)
{

//    $multiple = '';
    $formField = '';
    $formField .= '<div class="field_wrap '.(isset($field['wrapclass'])?$field['wrapclass']:null).' ">';
    $formField .= Form::label(
        isset($field['name']) ? $field['name']:null,
        isset($field['label'])?$field['label']:null,[
            'class'=>isset($field['labclass'])?$field['labclass']:null
        ]
    );
//    if(isset($field['multi']) && $field['multi'] == true){
//        $multiple = '';
//    }
    if(isset($field['trans']) && $field['trans'] == true) {
        foreach ($languages as $key => $value) {
            $formField .= '<div class="translation_wrap trans_' . $key . ' col-sm-10">';
            $formField .= Form::select(
                isset($field['name'])?$field['name'].'_'.$key:null,
                isset($field['options']) ? $field['options'][$key] : [], null,
                isset($field['others'])?$field['others']:[]
            );
            $formField .= '</div>';
            $formField .= '<div class="translation_wrap trans_'.$key.' ">';
            $formField .= Form::label(
                isset($field['name']) ? $field['name']:null,
                $value,[
                    'class'=>'col-sm-1 text-blue',
                    'style'=>' height:35px;'
                ]
            );
            $formField .= '</div>';
        }
    }else{
        $formField .=  Form::select(
            isset($field['name'])?$field['name']:null,
            isset($field['options'])?$field['options']:[], null,
            isset($field['others'])?$field['others']:[]
        ) ;
    }
    $formField .= '</div>';

    return $formField;
}

/**
 * @param $field
 * @return string
 */

function fieldCheckBox($field)
{
    $formField ='';
    $formField .= '<div class="field_wrap '.(isset($field['wrapclass'])?$field['wrapclass']:null).' ">';
    $formField .= Form::label(
        isset($field['name']) ? $field['name']:null,
        isset($field['label'])?$field['label']:null,[
            'class'=>isset($field['labclass'])?$field['labclass']:null
        ]
    );
    if( isset($field['check'])){
        foreach($field['check'] as $name => $value ){
            $formField .=  Form::checkbox($name, $value , $field['bool']).'  '.studly_case($value);;
            $formField .= '<br>';
        }
    }else{
        $formField = '<strong>check</strong> is not defined';
    }
    $formField .= '</div>';

    return $formField;
}

/**
 * @param $field
 * @return string
 */
function fieldCheckBoxForSalary($field)
{
    $formField ='';
    $formField .= '<div class="field_wrap '.(isset($field['wrapclass'])?$field['wrapclass']:null).' ">';
    $formField .= Form::label(
        isset($field['name']) ? $field['name']:null,
        isset($field['label'])?$field['label']:null,[
            'class'=>isset($field['labclass'])?$field['labclass']:null
        ]
    );
    if( isset($field['check'])){
        foreach($field['check'] as $name => $value ){
            $formField .=  Form::checkbox($name, $value , $field['bool']).'  '.ucwords(str_replace('_',' ',$name));
            /*$formField .= '<br>';*/
        }
    }else{
        $formField = '<strong>check</strong> is not defined';
    }
    $formField .= '</div>';

    return $formField;
}

/**
 * @param $field
 * @return string
 */

function fieldRadio($field)
{
    $formField = '';
    $formField .= '<div class="field_wrap '.(isset($field['wrapclass'])?$field['wrapclass']:null).' ">';
    $formField .= Form::label(
        isset($field['name']) ? $field['name']:null,
        isset($field['label'])?$field['label']:null,[
            'class'=>isset($field['labclass'])?$field['labclass']:null
        ]
    );
    if(isset($field['radval'])){
        foreach($field['radval'] as $radValue=>$radLabel){
//            dd($radValue);//
            $formField .=  Form::radio(
                    isset($field['name'])?$field['name']:null,
                    $radValue,
                    isset($field['bool'])?$field['bool']:null
                ).'  '.ucwords($radLabel);
            // $formField .= '<br>';
        }
    } else{
        $formField = '<strong>radval</strong> is not defined';
    }
    $formField .= '</div>';

    return $formField;
}

/**
 * @param $field
 * @return string
 */

function fieldEmail($field)
{
    $formField = '';
    $formField .= '<div class="field_wrap '.(isset($field['wrapclass'])?$field['wrapclass']:null).' ">';
    $formField .= Form::label(
        isset($field['name']) ? $field['name']:null,
        isset($field['label'])?$field['label']:null,[
            'class'=>isset($field['labclass'])?$field['labclass']:null
        ]
    );
    $formField .=  Form::email(
        isset($field['name'])?$field['name']:null,
        isset($field['value'])?$field['value']:null,
        isset($field['others'])?$field['others']:[]
    );
    $formField .= '</div>';

    return $formField;

}

function fieldFile($field)
{
    $formField = '';
    $formField .= '<div class="field_wrap '.(isset($field['wrapclass'])?$field['wrapclass']:null).' " id = "filediv">';
    $formField .= Form::label(
        isset($field['name']) ? $field['name']:null,
        isset($field['label'])?$field['label']:null,[
            'class'=>isset($field['labclass'])?$field['labclass']:null
        ]
    );
    $formField .=  Form::file(
        isset($field['name'])?$field['name']:null,
        isset($field['others'])?$field['others']:[]
    );
    $formField .= '</div>';

    return $formField;

}

/**
 * @param $field
 * @return string
 */

function fieldPassword($field)
{
    $formField = '';
    $formField .= '<div class="field_wrap '.(isset($field['wrapclass'])?$field['wrapclass']:null).' ">';
    $formField .= Form::label(
        isset($field['name']) ? $field['name']:null,
        isset($field['label'])?$field['label']:null,[
            'class'=>isset($field['labclass'])?$field['labclass']:null
        ]
    );
    $formField .=  Form::password(
        isset($field['name'])?$field['name']:null,
        isset($field['others'])?$field['others']:[]
    );
    $formField .= '<br>';
    $formField .= '</div>';

    return $formField;
}

/**
 * @param $field
 * @return string
 */

function fieldNumber($field)
{
    $formField = '';
    $formField .= '<div class="field_wrap '.(isset($field['wrapclass'])?$field['wrapclass']:null).' ">';
    $formField .= Form::label(
        isset($field['name']) ? $field['name']:null,
        isset($field['label'])?$field['label']:null,[
            'class'=>isset($field['labclass'])?$field['labclass']:null
        ]
    );
    $formField .=  Form::number(
        isset($field['name'])?$field['name']:null,
        isset($field['value'])?$field['value']:null,
        isset($field['others'])?$field['others']:[]
    );
    $formField .= '<br>';
    $formField .= '</div>';

    return $formField;
}

/**
 * @param $field
 * @return string
 */

function fieldDate($field)
{
    $formField = '';
    $formField .= '<div class="field_wrap '.(isset($field['wrapclass'])?$field['wrapclass']:null).' ">';
    $formField .= Form::label(
        isset($field['name']) ? $field['name']:null,
        isset($field['label'])?$field['label']:null, [
            'class'=>isset($field['labclass'])?$field['labclass']:null
        ]
    );
    $formField .=  Form::date(
        isset($field['name'])?$field['name']:null,
        /*\Carbon\Carbon::now(),*/ isset($field['value'])?$field['value']:null,
        isset($field['others'])?$field['others']:[]
    );
    $formField .= '<br>';
    $formField .= '</div>';

    return $formField;
}

/**
 * @param $field
 * @return string
 */

function fieldHidden($field)
{
    $formField = '';
    $formField .= Form::hidden(
        isset($field['name'])?$field['name']:null,
        isset($field['value'])?$field['value']:null,
        isset($field['others'])?$field['others']:[]
    );

    return $formField;
}

/**
 * @param $field
 * @return string
 */

function formSubmit($field)
{
    $formField = '';
    // $formField .= '<br>';
    $formField .= '<div class="submig_button">';
    $formField .= Form::submit(
        isset($field['label'])?$field['label']:null,
        isset($field['others'])?$field['others']:[]
    );
    $formField .= '</div>';

    return $formField;
}

/**
 * @param $field
 * @return string
 */

function fieldLabel($field)
{
    $formField = '';
    $formField .= '<br><div class="field_wrap '.(isset($field['wrapclass'])?$field['wrapclass']:null).' ">';
    $formField .= Form::label(
        isset($field['name'])?$field['name']:null,
        isset($field['value'])?$field['value']:null,
        isset($field['others'])?$field['others']:[]
    );
    $formField .= '</div><br>';

    return $formField;
}

/**
 * @param $formFields
 * @return string
 */

function formFields ($formFields,$mode=null,$id=null)
{

    $id = isset($id)?$id:null;
    $mode = isset($mode)?$mode:null;
//    dd($mode);
    $hiddenField =  inputField(['type'=>'startrow']) ;
    $hiddenField .=    inputField([
        'type'=>'hidden',
        'name'=>$formFields->fieldName(),
        'value'=>$formFields->currentClass()
    ]);

    $hiddenField .= inputField(['type'=>'endrow']) ;

    $inputField = '';
    foreach($formFields->filteredForm($id,$mode) as $field){
        $requred_cls = '';
        if(isset($field['validation']) && $field['label'] != '&nbsp;'){
            if($is_required = strpos($field['validation'],'quired')){
                $requred_cls = '*';
            }
        }
        $inputField .= inputField(['type'=>'startrow']) ;
        $inputField .= inputField([
            'type'=>isset($field['type'])?$field['type']:null,
            'name'=>isset($field['name'])?$field['name']:null,
            'label'=>isset($field['label'])?$field['label'].$requred_cls:null,
            'value'=>isset($field['value'])?$field['value']:null,
            'labclass'=>isset($field['labclass'])?$field['labclass']:null,
            'wrapclass'=>isset($field['wrapclass'])?$field['wrapclass']:null,
            'trans'=>isset($field['trans'])?$field['trans']:null,
            'options'=>isset($field['options'])?$field['options']:null,
            'bool'=>isset($field['bool'])?$field['bool']:null,
            'radval'=>isset($field['radval'])?$field['radval']:null,
            'check'=>isset($field['check'])?$field['check']:null,
            'validation'=>isset($field['validation'])?$field['validation']:null,
            'prefix'=>isset($field['prefix'])?$field['prefix']:null,
            'others'=>isset($field['others'])?$field['others']:[]

        ]);
        $inputField .= inputField(['type'=>'endrow']) ;
    }

    return $hiddenField.$inputField ;
}


/**
 * called from the blade page where list is shown in a table
 * @param $usersList
 * @param $locale
 * @param $defaultLoacle
 * @param $dataArr
 * @return string
 */
function dataTableList ($list =null,$locale=null,$defaultLoacle=null,$model=null)
{

    $req = request()->segment(1);

    $infoList = $list->tbodyValues($model);
    $dataArr = $list->dataArr;
    $dataList = "<table  id='example1' class=' table-stripped' style='overflow-y: scroll' >";
    $dataList .='<tr>';
    $SL = 1;

    $dataList .= "<th>SL</th>";
    //for th values to display
    //$keys are th values
    foreach($dataArr as $key=>$val):

        if(!is_array($val) || (is_array($val)&& count($val)>0))
            $dataList .= "<th>$key</th>";

    endforeach;
    $dataList .= "<th>Action</th>";
    $dataList .='</tr>';

    //for dilplaying dynamic relevant td values from database
    foreach($infoList as $info):

        $dataList .='<tr>';
        $dataList .= "<td>".$SL++."</td>";

        //$keys are th values
        //$vals are td values if not array themselves
//        dd($dataArr);
        foreach($dataArr as $key=>$val):


            if(is_array($val)):
                //for td values from related table
                //$ks(relational function name in the model) are the keys of $val  if $val is array
                //$vs(field name of the related table) are the values of $val if $val is array
//                dd($val);
                foreach($val as $k => $v):
//dd($info->designation);
                    if(isset($info->$k->$v)):
                        $data = $info->$k->$v;
                    endif;
                    $dataList .= "<td>".$data."</td>";

                endforeach ;
            //for td values from main table
            elseif(!is_array($val) && $val != ''):
                $dataList .= "<td>".$info->$val."</td>";
            elseif($val==''):
                $dataList .= "<td><span class='glyphicon glyphicon-user fa-man' aria-hidden='true'></span></td>";

            endif;
        endforeach;

        $dataList .= ' <td>';

        $dataList .= '<a class="btn btn-primary btn-xs mrg" data-original-title="View" data-toggle="tooltip" href="'.url($req.'/view/'.$info->id).'"><i class="fa fa-check-square-o"></i></a>';
        $dataList .='<a class="btn btn-warning btn-xs mrg" data-original-title="Edit" data-toggle="tooltip" href=" '.url($req.'/edit/'.$info->id).' "><i class="fa fa-edit"></i></a>';
        $dataList .= '<a  class="btn btn-danger btn-xs mrg" data-original-title="Delete" data-toggle="tooltip" href=" '.url($req.'/delete/'.$info->id).' "><i class="fa fa-trash-o"></i></a>';

        $dataList .= ' </td>';

        $dataList .='</tr>';

    endforeach;

    $dataList .='</table>';

    return $dataList;
}

/**
 * get the year list
 * @return string
 */

function yearList()
{
    $year = '<select name="year" id="year"><option>Select Year</option>';

    $starting_year  =date('Y', strtotime('-10 year'));
    $ending_year = date('Y', strtotime('+10 year'));
    $current_year = date('Y');

    for($starting_year; $starting_year <= $ending_year; $starting_year++){

        $year .= '<option value='.$starting_year.' >'.$starting_year.'</option>';
    }

    $year .='</select>';

    return $year;
}

/**
 * get the month list for holidays
 * @return string
 */
function monthsList()
{

    $list = yearList().'<ul class=" nav nav-pills nav-stacked">';
    for($m = 1;$m <= 12; $m++){
        $month =  date("F", mktime(0, 0, 0, $m));
        $list .= "<li class='active month' value='$m' ><a href='#'><i class='fa fa-calendar'></i>$month</a></li>";
    }
    $list .= "</ul>";

    return $list;

}

/**
 * get monthlist for getting timesheet report
 * @return string
 */
function monthsListForTimesheet()
{

    $list = "<select name='month'><option >Select Month</option>";
    for($m = 1;$m <= 12; $m++){
        $month =  date("F", mktime(0, 0, 0, $m));
        $list .= "<option  value='$m' >$month</option>";
    }
    $list .= "</select>";

    return $list;

}

function is_json($string,$return_data = false) {
    $data = json_decode($string);
    return (json_last_error() == JSON_ERROR_NONE) ? ($return_data ? $data : TRUE) : FALSE;
}

function displayableMenus($model=null,$id_parent=0,$display = true,$status=true){

    $siteId = \Illuminate\Support\Facades\Session::get(SITE_ID);
    $role_id = request()->user()->roles()->first()->id;
    $menusForGroup = request()->user()->roles()->first()->groupAccess()->get();
    $displayedMenus = $model->whereParentId($id_parent)
        ->whereIsDisplayable($display)
        ->whereStatus($status)
        ->get();
    $menus = [];
    $accessmenus = [];
    foreach($menusForGroup as $mgssss){
        if(($mgssss->role_id == (int)$role_id) && ($mgssss->view == 1) && ($mgssss->site_id == (int)$siteId)){
            $accessmenus[] = $mgssss->menu_id;
        }
    }
    foreach($displayedMenus as $dm){
        if(in_array($dm->id,$accessmenus)){
            $menus[] = $dm;
        }
        if($dm->is_common_access){
            $menus[] = $dm;
        }
    }

   return $menus;
}

function isAccessable($model = null, $roleId = null, $menuId = null/*, $siteId = 1*/)
{

    $siteId = (int)\Illuminate\Support\Facades\Session::get(SITE_ID);

    $isAccessable = $model
//        ->whereRoleId($roleId)->whereMenuId($menuId)->wherSiteId($siteId)->first();
        ->whereRoleId($roleId)->whereMenuId($menuId)->first();
//dd($isAccessable->view == true);
    return $isAccessable;
}

function submitBtn ($id = null)
{
   $submitButton = $id?"Upgrade":"Submit";
   return [
        'type'=>'submit',
        'label' => $submitButton,
        'others'=>[
            'class'=>'btn btn-success',
            'style'=>'background-color:#0073b7',
            'readonly'=>'readonly'
        ],
    ];
}


function cleanNonUnicodeSupport($pattern)
{
    if (!$pattern) {
        return false;
    }
    return preg_replace('/\\\[px]\{[a-z]{1,2}\}|(\/[a-z]*)u([a-z]*)$/i', '$1$2', $pattern);
}
function isEmail($email)
{
    return !empty($email) && preg_match(cleanNonUnicodeSupport('/^[a-z\p{L}0-9!#$%&\'*+\/=?^`{}|~_-]+[.a-z\p{L}0-9!#$%&\'*+\/=?^`{}|~_-]*@[a-z\p{L}0-9]+(?:[.]?[_a-z\p{L}0-9-])*\.[a-z\p{L}0-9]+$/ui'), $email);
}



