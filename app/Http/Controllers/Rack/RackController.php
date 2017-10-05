<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/5/2016
 * Time: 4:20 PM
 */
namespace Erp\Http\Controllers\Rack;

use Erp\Http\Controllers\Controller;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\ProjectController;
use Erp\Http\Requests;
use Erp\Http\Requests\Validator;
use Carbon\Carbon;
use Erp\Models\Rack\Rack;
use Erp\Forms\RackForm;

class RackController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $rack;

    /**
     * @param Rack $rack
     */
    public function __construct(Rack $rack)
    {

        $this->middleware('auth');

        $this->rack = $rack;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createRackForm()
    {
        $viewType = 'Create Rack';

        return view('default.admin.racks.create',compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return mixed
     */
    public function createRack(Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $isCreated =  $this->rack->create([
            'building_id'=>$validatedRequest->get('building_id'),
            'floor_id'=>$validatedRequest->get('floor_id'),
            'room_id'=>$validatedRequest->get('room_id'),
            'rack_no'=>$validatedRequest->get('rack_no'),
            'status'=>$validatedRequest->get('status'),
            'created_at'=>$current_date_time
        ]);

        return back()->withSuccess('Successfully Created');
    }

    /**
     * @param Rack $rack
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Rack $rack)
    {
        $rackList = $rack->with('building', 'floor', 'room')->paginate(5);
//        dd($rackList);

        $viewType = 'Rack List';

        return view('default.admin.racks.index',compact('viewType', 'rackList'));
    }

    /**
     * @param $id
     * @param RackForm $rackForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getRackEditForm($id, RackForm $rackForm)
    {
        $viewType = 'Edit Rack';
        $editRack = $rackForm;
        $rackData = $this->editFormModel($this->rack->findOrFail($id));

        return view('default.admin.racks.edit', compact('viewType', 'editRack', 'rackData'));
    }

    /**
     * @param $id
     * @param Validator $validatedRequest
     * @return null
     */
    public function editRack($id, Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $rackToEdit = $this->rack->findOrFail($id);

        $isEdited = $rackToEdit->update([
            'building_id'=>$validatedRequest->get('building_id'),
            'floor_id'=>$validatedRequest->get('floor_id'),
            'room_id'=>$validatedRequest->get('room_id'),
            'rack_no'=>$validatedRequest->get('rack_no'),
            'status'=>$validatedRequest->get('status'),
            'updated_at'=>$current_date_time
        ]);

        return $isEdited ? back()->withSuccess('Successfully updated') : null;
    }

    /**
     * @param $id
     */
    public function deleteRack($id)
    {
        $rackToDelete = $this->rack->findOrFail($id);

        if($rackToDelete->delete()){
            return back()->withSuccess('Successfully deleted');
        }
        return back()->withErrors('Not successfully deleted');
    }
}