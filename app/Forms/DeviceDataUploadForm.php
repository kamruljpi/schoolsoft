<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 3/28/16
 * Time: 4:32 PM
 */

namespace Erp\Forms;


use Erp\Models\Punch\Punch;

class DeviceDataUploadForm extends Punch implements FormInterface
{
    use FormControll, DataHelper;


    public function formInputFields($id = null, $mode = null)
    {
        return [

            [
                'type'=>'file',
                'name'=>self::DEVICE_DATA,
                'label' => 'Upload Device Data',
                'others'=>['class'=>'form-control','id'=>'file'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'validation'=>"required|mimes:txt"
            ],

        ];

    }

}