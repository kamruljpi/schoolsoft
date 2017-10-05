<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/2/2016
 * Time: 12:40 PM
 */

namespace Erp\Http\Controllers\Building;

use Erp\Forms\BuildingForm;
use Erp\Http\Controllers\Controller;
use Erp\Forms\DataHelper;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Http\Requests\Validator;
use Erp\Http\Requests;
use Erp\Models\Building\Building;

class BuildingController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $building;

    /**
     * @param Building $building
     */
    public function __construct(Building $building)
    {

        $this->middleware('auth');

        $this->building = $building;
    }

    /**
     * @param Building $building
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Building $building)
    {
        $buildingList = $building->with('floors')->paginate(20);
        //dd($buildingList);

        $viewType = 'Building List';

        return view('default.admin.building.index',compact('viewType', 'buildingList'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createBuildingForm()
    {
        $viewType = 'Create Building';

        return view('default.admin.building.create',compact('viewType'));
    }

    /**
     * @param Validator $validatedRequest
     * @return mixed
     */
    public function createBuilding(Requests\Validator $validatedRequest)
    {

        $isCreated =  $this->building->create([
            'building_name'=>ucwords($validatedRequest->get('building_name')),
            'status'=>$validatedRequest->get('status')
        ]);

        return back()->withSuccess('Successfully Created');

    }

    /**
     * @param $id
     * @param BuildingForm $buildingForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getBuildingEditForm($id, BuildingForm $buildingForm)
    {
        $viewType = 'Edit Subject';
        $editBuilding = $buildingForm;
        $buildingData = $this->editFormModel($this->building->findOrFail($id));

        return view('default.admin.building.edit', compact('viewType', 'editBuilding', 'buildingData'));
    }

    /**
     * @param $id
     * @param Validator $validatedRequest
     * @return null
     */
    public function editBuilding($id, Validator $validatedRequest)
    {
        $buildingToEdit = $this->building->findOrFail($id);

        $isEdited = $buildingToEdit->update([
            'building_name'=>ucwords($validatedRequest->get('building_name')),
            'status'=>$validatedRequest->get('status')
        ]);

        return $isEdited ? back()->withSuccess('Successfully updated') : null;
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteBuilding($id)
    {
        $buildingToDelete = $this->building->findOrFail($id);

        if($buildingToDelete->delete()){
            return back()->withSuccess('Successfully deleted');
        }
        return back()->withErrors('Not successfully deleted');
    }
}