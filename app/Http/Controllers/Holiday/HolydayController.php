<?php

namespace Erp\Http\Controllers\Holiday;

use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Lists\HolyDayList;
use Erp\Models\Holydays\Holyday;
use Erp\Models\Holydays\HolyDayType;

use Illuminate\Http\Request;
use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class HolydayController extends ProjectController
{
    use Lang,FormControll;


    public function __construct()
    {

    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createHolydayTypeForm()
    {
        $viewType = 'Create Holyday Type';

        return view('default.admin.holydays.create-holyday-type',compact('viewType'));
    }

    /**
     * @param HolyDayType $holyDayType
     * @param Requests\Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse|null
     */
    public function createHolydayType(HolyDayType $holyDayType,Requests\Validator $validatedRequest )
    {
        $isCreated = $holyDayType->create([
            'type'=>ucwords($validatedRequest->type),
            'status'=>$validatedRequest->status
        ]);

        return $isCreated?back():null;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createHolydayForm()
    {
        $viewType = 'Create Holyday';

        return view('default.admin.holydays.create',compact('viewType'));
    }

    /**
     * @param Holyday $holyday
     * @param Requests\Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse|null
     */
    public function createHolyday(Holyday $holyday, Requests\Validator $validatedRequest)
    {
        $isCreated = $holyday->create([
            'date'=>$validatedRequest->date,
            'occasion'=>ucwords($validatedRequest->occasion),
            'type_id'=>$validatedRequest->type_id,
            'status'=>$validatedRequest->status
        ]);

        return $isCreated?back():null;
    }
    public function getHolidayTypeList(HolyDayType $holyDayType)
    {
        $holidayTypeList = $holyDayType->paginate(20);
        $viewType = 'Holiday Type List';
//        dd($holidayTypeList);
        return view('default.admin.holydays.holiday-type-list',compact('holidayTypeList','viewType'));
    }

    public function editHolidayTypeForm($id, HolyDayType $holyDayType)
    {
        $viewType = 'Edit Holiday Type';

        $holidayTypeToEdit =$this->editFormModel($holyDayType->findOrFail($id)) ;

        return view('default.admin.holydays.holiday-type-edit',compact('holidayTypeToEdit','viewType'));
    }

    public function editHolidayType($id,HolyDayType $holyDayType, Requests\Validator $validatedRequest)
    {
        $holidayTypeToEdit = $holyDayType->findOrFail($id);

        $isEdited =  $holidayTypeToEdit->update([
            'type'=>ucwords($validatedRequest->get('type')),
            'status'=>$validatedRequest->get('status')
        ]);

        return $isEdited?back()->withSuccess('Successfully Updated'):null;

    }

    public function viewHolidayType(HolyDayType $holyDayType, $id)
    {
        $holidayTypeToView = $holyDayType->find($id);
        return view('default.admin.holydays.holiday-type-view', compact('holidayTypeToView'));
    }

    public function deleteHolidayType(HolyDayType $holyDayType, $id)
    {
        $holidayTypeToDelete = $holyDayType->findOrFail($id);

        if($holidayTypeToDelete->delete()){
            return back();
        }
        return back()->withErrors('Not successfully deleted');

    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function holydayList(Holyday $holyday)
    {

        $viewType = 'Holidays List';
        $firstDate = date('Y-m-d',mktime(0,0,0,1,1,2016));
        $lastDate = date('Y-m-d',mktime(0,0,0,1,31,2016));

        $holydays =  $holyday->with('holydayType')->whereBetween('date',[$firstDate,$lastDate])
            ->orderBy('id','desc')
            ->paginate(20);

        return view('default.admin.holydays.index',compact('viewType','holydays'));
    }

    public function editHolidayForm($id, Holyday $holyDay)
    {
        $viewType = 'Holidays Edit';
        $holidayToEdit =$this->editFormModel($holyDay->findOrFail($id)) ;
        //dd($holidayToEdit);
        return view('default.admin.holydays.holiday-edit',compact('holidayToEdit','viewType'));
    }

    public function editHoliday($id, Holyday $holyDay, Requests\Validator $validatedRequest)
    {
        $holidayToEdit = $holyDay->findOrFail($id);

        $isEdited =  $holidayToEdit->update([
            'date'=>$validatedRequest->get('date'),
            'occasion'=>ucwords($validatedRequest->get('occasion')),
            'type_id'=>$validatedRequest->get('type_id'),
            'status'=>$validatedRequest->get('status')
        ]);

        return $isEdited?back()->withSuccess('Successfully Updated'):null;
    }

    public function viewHoliday(Holyday $holyDay, $id)
    {
        $holidayToView = $holyDay->with('holydayType')->find($id);
        return view('default.admin.holydays.holiday-view', compact('holidayToView'));
    }

    public function deleteHoliday(Holyday $holyDay, $id)
    {
        $holidayToDelete = $holyDay->findOrFail($id);

        if($holidayToDelete->delete()){
            return back();
        }
        return back()->withErrors('Not successfully deleted');
    }
    /**
     * @param $monthFromList
     * @param Holyday $holyday
     * @return string
     */
    public function holydaysByMonth($year,$month,Holyday $holyday)
    {
//          $month = date("m",strtotime($holyday->first()->date));

        $firstDate = date('Y-m-d',mktime(0,0,0,$month,1,$year));
        $lastDate = date('Y-m-d',mktime(0,0,0,$month,31,$year));

        $holydays =  $holyday->with('holydayType')
                             ->whereBetween('date',[$firstDate,$lastDate])
                             ->orderBy('id','desc')
                             ->get();

        return view('default.admin.holydays.holydays-list',compact('holydays','firstDate','lastDate'));
    }

}
