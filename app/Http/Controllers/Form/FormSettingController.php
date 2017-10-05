<?php

namespace Erp\Http\Controllers\Form;

use Erp\Forms\FormControll;
use Erp\Forms\MetaDataForm;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Meta\MetaSetting;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class FormSettingController extends ProjectController
{

    use FormControll;

    public function construct()
    {

    }

    public function index(MetaSetting $metaSetting)
    {

        $viewType = 'Form SiteSetting List';
        $allSettings = $metaSetting->paginate(5);

        return view('default.admin.form.index',compact('allSettings','viewType'));

    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createSettingsForm()
    {
        $viewType = 'Form SiteSetting Options';
        return view('default.admin.form.create-setting',compact('viewType'));
    }

    /**
     * @param MetaSetting $metaSetting
     * @param Request $request
     * @return mixed
     */
    public function createSettings(MetaSetting $metaSetting, Requests\Validator $request)
    {
        if(isset($metaSetting->ownFields)){
            foreach($metaSetting->ownFields as $ownField){
                if($request->{$ownField})
                    $metaSetting->{$ownField} = $request->{$ownField} ;
            }
        }

        $metaSetting->save();

        return back()->withSuccess('successfully created');
    }

    /**
     * @param $id
     * @param MetaSetting $metaSetting
     * @param MetaDataForm $metaDataForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function editSettingForm($id,MetaSetting $metaSetting,MetaDataForm $metaDataForm)
    {
        $viewType = 'Edit Settings';
        $editSettingForm = $metaDataForm;
        $settingsToEdit =$this->editFormModel($metaSetting->findOrFail($id)) ;

        return view('default.admin.form.edit-setting',compact('settingsToEdit','viewType','editSettingForm'));

    }

    /**
     * @param $id
     * @param MetaSetting $metaSetting
     * @param Request $request
     * @return mixed
     */
    public function editSettings($id,MetaSetting $metaSetting, Requests\Validator $request)
    {
        $settingToEdit = $metaSetting->findOrFail($id);

        if(isset($settingToEdit->ownFields)){
            foreach($settingToEdit->ownFields as $ownField){
                if($request->{$ownField})
                    $settingToEdit->{$ownField} = $request->{$ownField} ;
            }
        }

        $settingToEdit->save();

        return back()->withSuccess('Successfully Updated');
    }

    /**
     * @param $id
     * @param MetaSetting $metaSetting
     * @return $this|\Illuminate\Http\RedirectResponse
     */
    public function deleteSettigs($id,MetaSetting $metaSetting)
    {
        $settingToDelete = $metaSetting->findOrFail($id);

        if($settingToDelete->delete()){

            return back();
        }
        return back()->withErrors('Not successfully deleted');
    }


}
