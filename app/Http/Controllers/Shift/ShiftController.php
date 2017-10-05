<?php

namespace Erp\Http\Controllers\Shift;

use Erp\Forms\DataHelper;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Department\Department;
use Erp\Models\Shift\Shift;
use Erp\Models\User\User;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class ShiftController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $shift;

    /**
     * ShiftController constructor.
     * @param Shift $shift
     */
    public function __construct(Shift $shift)
    {

        $this->shift = $shift;

    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {

        $shifts = $this->shift->paginate(20);
//        dd(json_decode($shifts[0]->contents));
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $viewType = 'Shift List';

        return view('default.admin.shifts.index',compact('locale','defaultLocale','viewType','shifts'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createShiftForm()
    {
        /*date_default_timezone_set("America/New_York");
        echo "The time is " . date("h:i:sa");*/
       /* $d=mktime(11, 14, 54, 0, 0, 0);
        dd("Created date is " . date(" G", $d)) ;*/
        $statusList = $this->statusList();
        $viewType = 'Add a new Shift';

        return view('default.admin.shifts.create',compact('viewType','statusList'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createShift(Requests\Validator $validatedRequest)
    {

        foreach($this->shift->ownFields as $ownField){
            if($validatedRequest->{$ownField})
            $this->shift->{$ownField} = $validatedRequest->{$ownField} ;
        }

        if($this->shift->save()){
            foreach ($this->shift->translatedAttributes as $field) {
                foreach ($this->locales() as $locale => $value) {
                    if ($validatedRequest->get($field.'_'.$locale)) {
                        $this->shift->translateOrNew($locale)->{$field} = $validatedRequest->get($field.'_'.$locale);
                    }
                }
            }
        }

        if($this->shift->save())

            return back();

    }

    public function createShiftJson(Request $request)
    {
//        dd($request->sat_in);
//        dd(strtotime($request->sat_in." -24 hours"));
//        dd( date('D H:m',strtotime("Sun ".$request->sat_in." -1 day")));
//        dd( date('d F Y H:m',strtotime($request->sat_in." -1 day")));
        $shiftInJson = json_encode($request->except(['name_en','_token','status_id']));


        foreach ($this->shift->translatedAttributes as $field) {
            foreach ($this->locales() as $locale => $value) {
                if ($request->get($field.'_'.$locale)) {
                    $this->shift->translateOrNew($locale)->{$field} = $request->get($field.'_'.$locale);
                }
            }
        }
        $this->shift->contents = $shiftInJson;
        $this->shift->status_id = $request->status_id;

        if($this->shift->save())
            return back();



    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function assignShiftDeptForm()
    {
        $viewType = 'Assign Shift';
        return view('default.admin.shifts.assign_shift',compact('viewType'));

    }

    /**
     * @param Requests\Validator $validatedRequest
     * @param Department $department
     * @return $this|\Illuminate\Http\RedirectResponse
     */
    public function assignShift(Requests\Validator $validatedRequest, Department $department)
    {
        $assignedDepartment = $department->findOrFail($validatedRequest->department_id);
        $shiftToCheck = $this->shift->findOrFail($validatedRequest->shift_id);
//        dd($roleChecked);
        foreach( $assignedDepartment->shifts()->get() as $assignedShift){
            if($assignedShift->id == $shiftToCheck->id ){
                return back()->withErrors("$assignedDepartment->name  already holds the $assignedShift->name shift");
            }
        }
        $assignedDepartment->shifts()->attach($validatedRequest->shift_id);

        return back();
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function editShiftForm($id)
    {
        $viewType = 'Edit Shift';

        $shiftToEdit =$this->editFormModel($this->shift->findOrFail($id)) ;

        return view('default.admin.shifts.edit',compact('shiftToEdit','viewType'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse
     */
    public function editShift($id,Requests\Validator $validatedRequest)
    {
        $shiftToEdit = $this->shift->findOrFail($id);
        foreach($shiftToEdit->ownFields as $ownField){
            if($validatedRequest->{$ownField})
                $shiftToEdit->{$ownField} = $validatedRequest->{$ownField} ;
        }

        if($shiftToEdit->save()){
            foreach ($shiftToEdit->translatedAttributes as $field) {
                foreach ($this->locales() as $locale => $value) {
                    if ($validatedRequest->get($field.'_'.$locale)) {
//                        dd($validatedRequest->get($field.'_'.$locale));
                        $shiftToEdit->translateOrNew($locale)->{$field} = $validatedRequest->get($field.'_'.$locale);
                    }
                }
            }
        }

        if($shiftToEdit->save())

            return back();
    }

    /**
     * @param $id
     * @return $this|\Illuminate\Http\RedirectResponse
     */
    public function deleteShift($id)
    {
        $shiftToDelete = $this->shift->findOrFail($id);

        if($shiftToDelete->delete()){
            return back();
        }
        return back()->withErrors('Not successfully deleted');
    }

    public function shiftToEdit($userId, User $user, Request $request)
    {
        $userToEdit = $user->findOrFail($userId);
//        dd($userToEdit->shift_id);
        $shiftToEdit = $this->shift->findOrFail($userToEdit->shift_id);

        if( $request->ajax()){
            return response()->json( $shiftToEdit);
        }
    }
}
