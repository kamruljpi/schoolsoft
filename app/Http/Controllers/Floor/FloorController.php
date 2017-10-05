<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/2/2016
 * Time: 3:42 PM
 */
namespace Erp\Http\Controllers\Floor;

use Erp\Http\Controllers\Controller;
use Erp\Forms\FloorForm;
use Erp\Forms\DataHelper;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Http\Requests\Validator;
use Erp\Http\Requests;
use Illuminate\Http\Request;
use Erp\Models\Building\Building;
use Erp\Models\Floor\Floor;

class FloorController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $floor;

    /**
     * @param Floor $floor
     */
    public function __construct(Floor $floor)
    {

        $this->middleware('auth');

        $this->floor = $floor;
    }

    public function index(Floor $floor)
    {
        $floorList = $floor->with('building')->paginate(20);
        //$floorList = $floor->all();
        //dd($floorList);

        $viewType = 'Floor List';

        return view('default.admin.floor.index',compact('viewType', 'floorList'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createFloorForm()
    {
        $viewType = 'Create Floor';

        return view('default.admin.floor.create',compact('viewType'));
    }

    /**
     * @param Validator $validatedRequest
     * @return mixed
     */
    public function createFloor(Requests\Validator $validatedRequest)
    {
        //dd($validatedRequest);
        $isCreated =  $this->floor->create([
            'building_id'=>$validatedRequest->get('building_id'),
            'floor_name'=>ucwords($validatedRequest->get('floor_name')),
            'status'=>$validatedRequest->get('status')
        ]);

        return back()->withSuccess('Successfully Created');
    }

    /**
     * @param $id
     * @param FloorForm $floorForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getFloorEditForm($id, FloorForm $floorForm)
    {
        $viewType = 'Edit Floor';
        $editFloor = $floorForm;
        $floorData = $this->editFormModel($this->floor->findOrFail($id));

        return view('default.admin.floor.edit', compact('viewType', 'editFloor', 'floorData'));
    }

    /**
     * @param $id
     * @param Validator $validatedRequest
     * @return null
     */
    public function editFloor($id, Validator $validatedRequest)
    {
        $floorToEdit = $this->floor->findOrFail($id);

        $isEdited = $floorToEdit->update([
            'building_id'=>$validatedRequest->get('building_id'),
            'floor_name'=>ucwords($validatedRequest->get('floor_name')),
            'status'=>$validatedRequest->get('status')
        ]);

        return $isEdited ? back()->withSuccess('Successfully updated') : null;
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteFloor($id)
    {
        $floorToDelete = $this->floor->findOrFail($id);

        if($floorToDelete->delete()){
            return back()->withSuccess('Successfully deleted');
        }
        return back()->withErrors('Not successfully deleted');
    }

    /**
     * @param $buildId
     * @param Floor $floor
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function floorOfBuilding($buildId, Building $building, Request $request)
    {
        $selectedBuilding = $building->findOrFail($buildId);
        //dd($selectedBuilding);
        $floorForBuilding = $selectedBuilding->floors;
        if( $request->ajax()){
            return response()->json( [$floorForBuilding]);
        }
    }
}