<?php

namespace Erp\Http\Controllers\Attendance;

use Erp\Http\Controllers\ProjectController;
use Erp\Models\Attendance\StudentAttendance;
use Erp\Models\Routine\Routine;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class StudentAttendanceController extends ProjectController
{

    private $studentAttendances;

    public function __construct(StudentAttendance $studentAttendance)
    {
        $this->studentAttendances = $studentAttendance;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getStudentAttendanceList()
    {
        return view('default.admin.attendance.view-student-attendance');
    }

    public function getStudentAttendanceForm()
    {
        $viewType = 'Add Student Attendane';
        return view('default.admin.attendance.add-student-attendance',compact('viewType'));
    }


    public function addStudentAttendance(Request $request, Routine $routine)
    {

        $isChecked = $request->isChecked;

        if($isChecked== "true"){
            $isChecked = true;
        }elseif($isChecked == "false"){
            $isChecked = false;
        }

        $presentType = null;

        $presentTypeId = null;

        $userId = $request->stInfo['userId'];
        $userRoll = $request->stInfo['userRoll'];
        $stClass = $request->stInfo['stClass'];
        $stClassId = $request->stInfo['stClassId'];
        $section = $request->stInfo['section'];
        $sectionId = $request->stInfo['sectionId'];
        $stSection = $request->stInfo['stSection'];
        $stSectionId = $request->stInfo['stSectionId'];
        $subject = $request->stInfo['subject'];
        $subjectId = $request->stInfo['subjectId'];
        $presentDate = $request->stInfo['attDate'];

        $presentDay = strtoupper(date("l",strtotime($presentDate)));
        $classOrSectionRoutine = $routine
            ->whereStudentClassId($stClassId)
            ->whereSectionId($sectionId)
            ->whereWeekday($presentDay)
            ->get();


        $classStartTime = date('H:i:s', time());
        $classEndTime = $classStartTime;

        if(!$classOrSectionRoutine->isEmpty()){
            $classStartTime = $classOrSectionRoutine->pluck('class_start_time')->min();
            $classEndTime = $classOrSectionRoutine->pluck('class_end_time')->max();
        }

        if(isset($request->inTime)){
            $inTime = $request->inTime;
        }else{
            $inTime = $classStartTime;
        }
        if(isset($request->outTime)){
            $outTime = $request->outTime;
        }else{
            $outTime = $classEndTime;
        }

        if($request->stInfo['stSection'] == '' &&  $request->stInfo['subject'] == ''){
            $presentType = $stClass;
            $presentTypeId = $stClassId;
        }

        if($request->stInfo['stSection'] != '' &&  $request->stInfo['subject'] == ''){
            $presentType = $stSection;
            $presentTypeId = $stSectionId;
        }

        if ( $request->stInfo['subject'] != '') {
            $presentType = $subject;
            $presentTypeId = $subjectId;

            $subjectRoutine = $routine->whereStudentClassId($stClassId)
                ->whereSectionId($sectionId)
                ->whereSubjectId($subjectId)
                ->whereWeekday($presentDay)
                ->first();
            $classStartTime = $subjectRoutine->class_start_time;
            $classEndTime = $subjectRoutine->class_end_time;

        }
        $attRowToUpdate = $this->studentAttendances
            ->whereUserId($userId)
            ->wherePresentDate($presentDate)
            ->wherePresentType($presentType)
            ->wherePresentTypeId($presentTypeId)
            ->first();

        if($isChecked && isset($request->outTime) && !is_null($attRowToUpdate)){

            $isUpdated = $attRowToUpdate->update([
                'out_time'=>$request->outTime
            ]);
            if($isUpdated){

                return 'Leave-time Updated';
            }
        }elseif($isChecked && isset($request->outTime) && is_null($attRowToUpdate)){

            return 'Please Confirm Attendance First';
        }


        $this->studentAttendances->user_id = $request->stInfo['userId'];
        $this->studentAttendances->roll_no = $request->stInfo['userRoll'];
        $this->studentAttendances->present_type = $presentType;
        $this->studentAttendances->present_type_id = $presentTypeId;
        $this->studentAttendances->in_time = $inTime;
        $this->studentAttendances->out_time = $outTime;
        $this->studentAttendances->present_date = $request->stInfo['attDate'];
        $this->studentAttendances->present_date_time = date('Y-m-d H:i:s',time());
        $this->studentAttendances->present_year = date('Y',time());
        $this->studentAttendances->present_month = date('m',time());
        $this->studentAttendances->present_day = date('d',time());

        if ($isChecked && is_null($attRowToUpdate) && !isset($request->outTime)) {
            $this->studentAttendances->save();
            return 'Attendance Given';
        }

        if(!$isChecked && !is_null($attRowToUpdate) && !isset($request->outTime) ){

            $attRowToUpdate->delete();
            return 'Absence Given';
        }
    }

}
