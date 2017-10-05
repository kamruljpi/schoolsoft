<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/25/2016
 * Time: 12:13 AM
 */
namespace Erp\Http\Controllers\StudentReport;

use Erp\Http\Controllers\Controller;
use Erp\Forms\DataHelper;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Role\Role;
use Erp\Models\Student\Section;
use Erp\Models\Student\StudentClass;
use Erp\Models\User\User;
use Erp\Models\Examinations\Examination;
use Erp\Models\Examinations\ExaminationSchedule;
use Erp\Models\Routine\Routine;
use Erp\Models\Account\Account;
use Illuminate\Http\Request;
use Erp\Http\Requests;

class StudentReportController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function studentReportPage()
    {
        $viewType = 'Get Student Report';
        return view('default.admin.student_reports.student-report',compact('viewType'));
    }

    public function generateClassRoutineReport(Request $request, User $user, Role $role,StudentClass $studentClass, Section $section, Routine $routine)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $studentClassId = request()->user()->student_class_id;
        $studentSectionId = request()->user()->section_id;
        $studentClass = $studentClass->findOrFail($studentClassId);
        $section = $section->findOrFail($studentSectionId);
        $routineList = $routine->with('subject', 'building', 'floor', 'room', 'teacher', 'coordinator')
            ->whereStudentClassId($studentClassId)
            ->whereSectionId($studentSectionId)
            ->get();

//        dd($studentSectionId);
        $routineArray = [];
//        dd($studentSectionId);
        foreach($routineList as $routine){

            $routineArray[$routine->weekday][] =  $routine;

        }


        return view('default.admin.student_reports.student-class-routine-report',compact('studentClass','section','routineList','mostNumberOfClasses', 'routineArray','locale','defaultLocale'));
        
    }

    public function generateExamRoutineReport(Request $request, StudentClass $studentClass, Section $section, Examination $examination, ExaminationSchedule $examinationSchedule)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $examId = $request->examId;
        $loggerId = request()->user()->id;
        $studentClassId = request()->user()->student_class_id;
        $studentSectionId = request()->user()->section_id;
        $examName = $examination->findOrFail($examId);
        $className = $studentClass->findOrFail($studentClassId);
        $sectionName = $section->findOrFail($studentSectionId);
//        dd($studentSectionId);
        $examinationScheduleList = $examinationSchedule->with('subject', 'building', 'floor', 'room')
            ->whereExaminationId($examId)
            ->whereStudentClassId($studentClassId)
            ->whereSectionId($studentSectionId)
            ->get();
//        dd($examinationScheduleList);

        return view('default.admin.student_reports.student-exam-routine-report',compact('examName','className','sectionName','examinationScheduleList','locale','defaultLocale'));
    }

    public function generateStudentAccountReport(Account $account)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $loggerId = request()->user()->id;

        $accountReport = $account->with('accountType', 'amountType', 'amountCategory', 'toRole', 'fromRole', 'toUser', 'fromUser')
            ->where('from_user_id', $loggerId)
            ->get();

//        dd($accountReport);
        return view('default.admin.student_reports.student-account-report-details',compact('accountReport','locale','defaultLocale'));
    }

    public function generateStudentTestimonialReport(User $user, StudentClass $studentClass)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $studentId = request()->user()->id;
        $studentClassId = request()->user()->student_class_id;
        $studentSectionId = request()->user()->section_id;

        $file_name = 'testimonial.txt';
        $base_path = base_path('reports/default/en/');
        $studentData = $user->with('photos')->findOrFail($studentId);
        $classData = $studentClass->findOrFail($studentClassId);
//        dd($classData);
        $today = \Carbon\Carbon::now()->format('Y-m-d');
        $student_extra_data = array();
        $student_extra_data['class_name'] = $classData->class_name;
        $student_extra_data['today'] = $today;
        $rep_key = array("username","roll_no","first_name","last_name","father_name", "mother_name", "address" ,"birthday", "phone", "class_name", "today");
        if(file_exists($base_path.$file_name)){
            $content = file_get_contents($base_path.$file_name);
        }else{
            $content = file_get_contents($base_path.$file_name);
        }
        if(isset($rep_key) && !empty($rep_key)){
            foreach($rep_key as $key){
                if(isset($studentData->{$key})){
                    $content = str_replace("%%{$key}%%",$studentData->{$key},$content);
                }else{
                    if(isset($student_extra_data[$key])){
                        $content = str_replace("%%{$key}%%",$student_extra_data[$key],$content);
                    }
                }
            }
        }
        return $content;
    }
}