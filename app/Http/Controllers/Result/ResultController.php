<?php

namespace Erp\Http\Controllers\Result;

use Erp\Http\Controllers\ProjectController;
use Erp\Models\Result\ResultSetting;
use Erp\Models\Result\ResultSystem;
use Erp\Models\Result\TotalResultSetting;
use Erp\Models\Result\TotalResultSystem;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class ResultController extends ProjectController
{

    public function construct()
    {

    }

    /**
     * @param ResultSystem $resultSystem
     */
    public function index(ResultSystem $resultSystem)
    {
//        $resultSystemList = $resultSystem->with('studentClass')->paginate(10);
        $resultSystemList = $resultSystem->paginate(10);

        $viewType = 'Result System List';

        return view('default.admin.result.index', compact('resultSystemList', 'viewType'));
    }

    public function viewResultSystem($id, ResultSystem $resultSystem, ResultSetting $resultSetting)
    {
//        $resultSystemData = $resultSystem->with('studentClass')->findOrFail($id);
        $resultSystemData = $resultSystem->findOrFail($id);
        //dd($resultSystemData->setting_ids);

        $resultSystem =  explode(',',json_decode($resultSystemData->setting_ids));
        //dd($resultSystem);
        foreach($resultSystem as $key=> $value){
            $test[] = $resultSetting->findOrFail($value);
        }
        //dd($test);

        return view('default.admin.result.view', compact('resultSystemData', 'test'));
    }
    public function createResultSystemForm()
    {
        $viewType = 'Add Result System';
        return view('default.admin.result.create-result-system',compact('viewType'));
    }

    public function createResultSystem(ResultSystem $resultSystem, Request $request)
    {

        $resultSystem->name = $request->get('name');
        $resultSystem->result_rule = $request->get('result_rule');
        $resultSystem->setting_ids = json_encode($request->get('rule_ids'));

        $resultSystem->save();

        return back()->withSuccess('Successfully Result System Created');
    }

    public function createResultSettings(ResultSetting $resultSetting, Request $request)
    {
        $resultSetting->settings = json_encode($request->get('params'));
        if($resultSetting->save()){
            return $resultSetting->all()->last() ;
        }
    }

    public function deleteResultSettings($id, ResultSetting $resultSetting)
    {

        $resultSettingToDelete = $resultSetting->findOrFail($id);

        if($resultSettingToDelete->delete()){

            return 'settings deleted';
        }

    }

    /**
     * @param TotalResultSetting $totalResultSetting
     * @param Request $request
     */
    public function createTotalResultSettings(TotalResultSetting $totalResultSetting, Request $request)
    {
        $totalResultSetting->settings = json_encode($request->get('params'));
        if($totalResultSetting->save()){
            return $totalResultSetting->all()->last() ;
        }
    }

    /**
     * @param $id
     * @param TotalResultSetting $totalResultSetting
     * @return string
     */
    public function deleteTotalResultSettings($id, TotalResultSetting $totalResultSetting)
    {
        $totalResultSettingToDelete = $totalResultSetting->findOrFail($id);

        if($totalResultSettingToDelete->delete()){

            return 'settings deleted';
        }
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createTotalResultSystemForm()
    {
        $viewType = 'Add Result System';
        return view('default.admin.result.create-total-result-system',compact('viewType'));
    }

    /**
     * @param TotalResultSystem $totalResultSystem
     * @param Request $request
     */
    public function createTotalResultSystem(TotalResultSystem $totalResultSystem, Request $request)
    {
        $totalResultSystem->name = $request->get('name');
        $totalResultSystem->result_rule = $request->get('result_rule');
        $totalResultSystem->setting_ids = json_encode($request->get('rule_ids'));

        $totalResultSystem->save();

        return back()->withSuccess('Successfully Total Result System Created');
    }

    /**
     * @param TotalResultSystem $totalResultSystem
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function totalResultSystemList(TotalResultSystem $totalResultSystem)
    {
        $totalResultSystemList = $totalResultSystem->paginate(10);
//        dd($totalResultSystemList);

        $viewType = 'Total Result System List';

        return view('default.admin.result.total-result-system-list', compact('totalResultSystemList', 'viewType'));
    }

    /**
     * @param $id
     * @param TotalResultSystem $totalResultSystem
     * @param TotalResultSetting $totalResultSetting
     */
    public function viewTotalResultSystem($id, TotalResultSystem $totalResultSystem, TotalResultSetting $totalResultSetting)
    {
        $totalResultSystemData = $totalResultSystem->findOrFail($id);
        //dd($totalResultSystemData->setting_ids);

        $totalResultSystem =  explode(',',json_decode($totalResultSystemData->setting_ids));
        //dd($totalResultSystem);
        foreach($totalResultSystem as $key=> $value){
            $test[] = $totalResultSetting->findOrFail($value);
        }
        //dd($test);

        return view('default.admin.result.total-result-system-view', compact('totalResultSystemData', 'test'));
    }
}
