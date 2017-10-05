<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/3/2016
 * Time: 10:42 AM
 */
namespace Erp\Http\Controllers\Room;

use Erp\Forms\RoomForm;
use Erp\Http\Controllers\Controller;
use Erp\Forms\DataHelper;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Http\Requests\Validator;
use Erp\Http\Requests;
use Erp\Models\Building\Building;
use Erp\Models\Floor\Floor;
use Erp\Models\Room\Room;
use Illuminate\Http\Request;

class RoomController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $room;

    /**
     * @param Room $room
     */
    public function __construct(Room $room)
    {

        $this->middleware('auth');

        $this->room = $room;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createRoomForm()
    {
        $viewType = 'Create Room';

        return view('default.admin.room.create',compact('viewType'));
    }

    /**
     * @param Validator $validatedRequest
     * @return mixed
     */
    public function createRoom(Requests\Validator $validatedRequest)
    {
        //dd($validatedRequest);
        $isCreated =  $this->room->create([
            'building_id'=>$validatedRequest->get('building_id'),
            'floor_id'=>$validatedRequest->get('floor_id'),
            'room_name'=>ucwords($validatedRequest->get('room_name')),
            'status'=>$validatedRequest->get('status')
        ]);

        return back()->withSuccess('Successfully Created');
    }

    /**
     * @param Room $room
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Room $room)
    {
        $roomList = $room->with('building', 'floor')->paginate(20);
        //dd($roomList);

        $viewType = 'Room List';

        return view('default.admin.room.index',compact('viewType', 'roomList'));
    }

    /**
     * @param $id
     * @param RoomForm $roomForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getRoomEditForm($id, RoomForm $roomForm)
    {
        $viewType = 'Edit Room';
        $editRoom = $roomForm;
        $roomData = $this->editFormModel($this->room->findOrFail($id));

        return view('default.admin.room.edit', compact('viewType', 'editRoom', 'roomData'));
    }

    /**
     * @param $id
     * @param Validator $validatedRequest
     * @return null
     */
    public function editRoom($id, Validator $validatedRequest)
    {
        $roomToEdit = $this->room->findOrFail($id);

        $isEdited = $roomToEdit->update([
            'building_id'=>$validatedRequest->get('building_id'),
            'floor_id'=>$validatedRequest->get('floor_id'),
            'room_name'=>ucwords($validatedRequest->get('room_name')),
            'status'=>$validatedRequest->get('status')
        ]);

        return $isEdited ? back()->withSuccess('Successfully updated') : null;
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteRoom($id)
    {
        $roomToDelete = $this->room->findOrFail($id);

        if($roomToDelete->delete()){
            return back()->withSuccess('Successfully deleted');
        }
        return back()->withErrors('Not successfully deleted');
    }

    public function roomOfFloor($floorId, Floor $floor, Request $request)
    {
        $selectedFloor = $floor->findOrFail($floorId);
        //dd($selectedFloor);
        $roomForFloor = $selectedFloor->rooms;
        //dd($roomForFloor);
        if( $request->ajax()){
            return response()->json( [$roomForFloor]);
        }
    }
}