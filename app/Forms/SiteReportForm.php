<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/23/2016
 * Time: 11:45 AM
 */

namespace Erp\Forms;


class SiteReportForm implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        return[
            [
                'type'=>'select',
                'name'=>'site_id',
                'label' => 'Institution Name',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->siteInfoList(),
                'value'=>0,
                'validation'=>"required|in:".$this->siteInfoKeys()
            ],
            [
                'type'=>'select',
                'name'=>'role_id',
                'label' => 'User Type',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->rolesList(),
                'value'=>0,
                'validation'=>"required"
            ],
            [
                'type'=>'submit',
                'label' => 'Generate',
                'others'=>[
                    'class'=>'btn btn-primary',
                    'id' => 'site-report-btn',
                    'name'=>'site-report-btn'
                ]

            ]
        ];
    }
}