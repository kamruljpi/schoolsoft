<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/26/2016
 * Time: 4:03 PM
 */
namespace Erp\Http\Controllers\GeneralReport;

use Erp\Http\Controllers\Controller;
use Erp\Forms\DataHelper;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Role\Role;
use Erp\Models\Student\Section;
use Erp\Models\Student\StudentClass;
use Erp\Models\Subject\Subject;
use Erp\Models\User\User;
use Erp\Models\Examinations\Examination;
use Erp\Models\Examinations\ExaminationSchedule;
use Erp\Models\Routine\Routine;
use Erp\Models\Marks\Marks;
use Erp\Models\Marks\MarksType;
use Erp\Models\Result\ResultSetting;
use Illuminate\Http\Request;
use Erp\Http\Requests;

class GeneralReportController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function generalReportPage()
    {
        $viewType = 'Get General Report';
        return view('default.admin.reports.general-report',compact('viewType'));
    }

    /**
     * @param null $teacherId
     */
    public function generateTeacherReport(Request $request, User $user, Role $role)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $teacherId = $request->teacherId;
        //dd($teacherId);

        if((int)$teacherId == 0){
            $roleId = $this->role('Teacher');
            $roleOfTeacher = $role->findOrFail($roleId);
            $teacherList = $roleOfTeacher->users;
            $teachersWithPhotos = array();
            foreach($teacherList as $teacher){

                if( count($teacher->photos)>0)

                    $teachersWithPhotos[$teacher->photos->last()->name] = $teacher;
            }
            //dd($teachersWithPhotos);
            return view('default.admin.reports.teacher-report-all',compact('teacherList','locale','defaultLocale', 'teachersWithPhotos'));
        }else {
            $teacherProfile = $user->findOrFail($teacherId);
            $photo = $teacherProfile->photo->last()->name;
            $teacherReport = $user->with('designation', 'gender', 'religion', 'department')->findOrFail($teacherId);

            return view('default.admin.reports.teacher-report-individual',compact('teacherReport','locale','defaultLocale', 'photo'));
        }

    }

    /**
     * @param Request $request
     * @param User $user
     * @param Role $role
     */
    public function generateStudentReport(Request $request, User $user, Role $role,StudentClass $studentClass, Section $section)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $studentClassId = $request->studentClassId;
        $sectionId = $request->sectionId;
        $studentId = $request->studentId;
        //dd($studentClassId);

        if((int)$studentClassId == 0 && (int)$sectionId == 0 && (int)$studentId == 0){
            $roleId = $this->role('Student');
            $roleOfStudent = $role->findOrFail($roleId);
            $studentList = $roleOfStudent->users;
            $studentsWithPhotos = array();
            foreach($studentList as $student){
                $student->stclass = $student->stClass->class_name;
                $student->Section = $student->section->section_name;

                //dd($student->stclass->class_name);
                if( count($student->photos)>0)

                    $studentsWithPhotos[$student->photos->last()->name] = $student;
            }
            //dd($studentsWithPhotos);
            return view('default.admin.reports.student-report-all',compact('studentList','locale','defaultLocale', 'studentsWithPhotos'));
        } else if((int)$studentClassId != 0 && (int)$sectionId == 0 && (int)$studentId == 0){
            $studentClass = $studentClass->findOrFail($studentClassId);
            $roleId = $this->role('Student');
            $roleOfStudent = $role->findOrFail($roleId);
            $studentList = $roleOfStudent->users()
                ->whereStudentClassId($studentClassId)
                ->get();
            $studentsWithPhotos = array();
            foreach($studentList as $student){
                $student->Section = $student->section->section_name;
                if( count($student->photos)>0)

                    $studentsWithPhotos[$student->photos->last()->name] = $student;
            }
            //dd($studentsWithPhotos);
            return view('default.admin.reports.student-report-class-wise',compact('studentClass','studentList','locale','defaultLocale', 'studentsWithPhotos'));
        } else if((int)$studentClassId != 0 && (int)$sectionId != 0 && (int)$studentId == 0){
            $studentClass = $studentClass->findOrFail($studentClassId);
            $studentSection = $section->findOrFail($sectionId);
            $roleId = $this->role('Student');
            $roleOfStudent = $role->findOrFail($roleId);
            $studentList = $roleOfStudent->users()
                ->whereStudentClassId($studentClassId)
                ->whereSectionId($sectionId)
                ->get();
            $studentsWithPhotos = array();
            foreach($studentList as $student){
                $student->Section = $student->section->section_name;
                if( count($student->photos)>0)

                    $studentsWithPhotos[$student->photos->last()->name] = $student;
            }
            //dd($studentSection);
            return view('default.admin.reports.student-report-section-wise',compact('studentClass','studentSection','studentList','locale','defaultLocale', 'studentsWithPhotos'));
        } else{
            $studentClass = $studentClass->findOrFail($studentClassId);
            $studentSection = $section->findOrFail($sectionId);
            $singleStudent = $user->findOrFail($studentId);
            $guardianId = $singleStudent->guardian_id;
            $guardianData =  $user->findOrFail($guardianId);
            //dd($singleStudent);
            $photo = $singleStudent->photo->last()->name;
            return view('default.admin.reports.student-report-individual',compact('studentClass','studentSection','singleStudent', 'guardianData','locale','defaultLocale', 'photo'));
        }
    }

    public function generateRoutineReport(Request $request, User $user, Role $role,StudentClass $studentClass, Section $section, Routine $routine)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $studentClassId = $request->studentClassId;
        $sectionId = $request->sectionId;
        $studentClass = $studentClass->findOrFail($studentClassId);
        $section = $section->findOrFail($sectionId);
        $routineList = $routine->with('subject', 'building', 'floor', 'room', 'teacher', 'coordinator')
            ->whereStudentClassId($studentClassId)
            ->whereSectionId($sectionId)
            ->get();

        $routineArray = [];
//        dd($routineList);
        foreach($routineList as $routine){

                $routineArray[$routine->weekday][] =  $routine;

        }


        return view('default.admin.reports.class-routine-report',compact('studentClass','section','routineList','mostNumberOfClasses', 'routineArray','locale','defaultLocale'));
    }

    public function generateExamRoutineReport(Request $request, StudentClass $studentClass, Section $section, Examination $examination, ExaminationSchedule $examinationSchedule)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $examId = $request->examId;
        $studentClassId = $request->studentClassId;
        $sectionId = $request->sectionId;
        $examName = $examination->findOrFail($examId);
        $className = $studentClass->findOrFail($studentClassId);
        $sectionName = $section->findOrFail($sectionId);
//        dd($examName);

        $examinationScheduleList = $examinationSchedule->with('subject', 'building', 'floor', 'room')
            ->whereExaminationId($examId)
            ->whereStudentClassId($studentClassId)
            ->whereSectionId($sectionId)
            ->get();
//        dd($examinationScheduleList);

        return view('default.admin.reports.exam-routine-report',compact('examName','className','sectionName','examinationScheduleList','locale','defaultLocale'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function tabulationSheetPage()
    {
        $viewType = 'Get Tabulation Sheet';
        return view('default.admin.reports.tabulation-sheet',compact('viewType'));
    }

    public function generateTabulationSheetReport(Request $request, Examination $examination, StudentClass $studentClasses, Section $sections)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $examId = $request->examId;
        $studentClassId = $request->studentClassId;
        $sectionId = $request->sectionId;
        $markTypes = (new MarksType())->all();
        $subjectsOfTheClass = (new Subject())->whereStudentClassId($studentClassId)->get();
        $subjectMarksTypeName = $this->subjectMarksTypeInArray($studentClassId,$subjectsOfTheClass);
        $studentsOfTheClass = $studentClasses->find($studentClassId)->students;
        $resultSettings = new ResultSetting();

        $subjectGradePoint= 0;
        $subjectGrade = 'F';
        $subjectGrades = [];
        $totalGradePoint = 0;
        $gradePointAvg = 0;
        $stuentResult = [];


        foreach ($studentsOfTheClass as $studentOfTheClass) {
//        $studentOfTheClass = (new User())->find(146);
            $studentId = $studentOfTheClass->id;
//            $studentId = 147;
            $studentMarks = $this->marksInfo($examId,$studentClassId,$sectionId,$studentId);
//dd($studentMarks);
            if (isset($studentMarks) && !empty($studentMarks)) {
//dd($studentMarks);
                foreach ($studentMarks as $subjectId => $markDetails) {
//                    dd($markDetails);
                    $subjectTotal = isset($markDetails->total)?$markDetails->total:0;
                    $marksTypePass = isset($markDetails->marks_type_info)?json_decode($markDetails->marks_type_info):null;
                    $subjectMarkTypes = isset($markDetails->mark_types)?json_decode($markDetails->mark_types):null;
                    $resultSettingIds = isset($markDetails->setting_ids)?explode(',',json_decode($markDetails->setting_ids)):[];

                    if(isset($markDetails->result_rule) && $markDetails->result_rule='grade'){
                        $totalCredit = $subjectsOfTheClass->pluck('subject_credit')->reduce(function($total,$value){

                            return $total+$value;
                        });

                        if (isset($resultSettingIds) && !empty($resultSettingIds)) {
                            foreach ($resultSettingIds as $resultSettingId) {

                                $resultSettingObject = $resultSettings->find($resultSettingId);
                                $resultSetting = !is_null($resultSettingObject)?json_decode($resultSettingObject->settings):null;

                                if(!is_null($resultSetting)
                                    && $subjectTotal>=$resultSetting->sub_min
                                    && $subjectTotal <= $resultSetting->sub_max){

                                    $subjectGradePoint = $resultSetting->gpa;
                                    $totalGradePoint += $resultSetting->gpa*(isset($markDetails->subject_credit)?$markDetails->subject_credit:1);
                                    $subjectGrade = $resultSetting->grade_class;
//                                break;
                                }
                                $subjectGrades[$markDetails->subject_name]= [
                                    'subjectGrade'=>$subjectGrade,
                                    'subjectGradePoint'=>$subjectGradePoint,
                                    'marksTypes'=>$subjectMarkTypes,
                                    'subjectTotal'=>$subjectTotal
                                ];
                            }
                            //grade point average with subject type marks...

                        }
                    }

                    if (isset($markDetails->result_rule) && $markDetails->result_rule='division') {


                    }
                }
                $gradePointAvg = $totalGradePoint/$totalCredit;
                $studentOfTheClass->subject_grades = $subjectGrades;
                $studentOfTheClass->gpa = $gradePointAvg;
                $stuentResult[$studentId]=$studentOfTheClass;
//                dd($subjectGrades);
            }else{
                $subjectGrades = [];
            }



        }
        dd($stuentResult);
        return view('default.admin.reports.tabulation-sheet-report',compact('students','studentMarks','subjectMarksTypeName','markTypes','stuentResult'));
    }

    private function marksInfo($examId,$studentClassId,$sectionId, $studentId)
    {
        $marksInfo = \DB::table('users')
            ->join('student_classes', 'users.student_class_id', '=', 'student_classes.id')
            ->join('user_translations', 'users.id', '=', 'user_translations.user_id')
            ->join('sections', 'users.section_id', '=', 'sections.id')
            ->join('marks', 'marks.user_id' ,'=', 'users.id')
            ->join('examinations','marks.examination_id','=','examinations.id' )
            ->join('subjects','marks.subject_id','=','subjects.id' )
//            ->join('result_systems','result_systems.id','=','student_classes.result_system_id' )
            ->join('result_systems','result_systems.id','=','subjects.result_system_id' )
            ->select(
                'user_translations.first_name',
                'user_translations.last_name' ,
                'student_classes.class_name',
                'student_classes.result_system_id',
                'sections.section_name',
                'examinations.examination_name',
                'subjects.subject_name',
                'subjects.id as subjectid',
                'subjects.marks_type_info',
                'subjects.result_system_id as subject_result_system',
                'result_systems.result_rule',
                'result_systems.setting_ids',
                'marks.mark_types',
                'marks.total',
                'users.id as userid',
                'marks.id as marksid',
                'subjects.id as subjectid',
                'subjects.subject_credit'
            )
            ->where([
                'marks.student_class_id'=>$studentClassId,
                'marks.section_id'=>$sectionId,
                'marks.examination_id'=>$examId,
                'marks.user_id'=>$studentId,
                'users.section_id'=>$sectionId,
                'users.student_class_id'=>$studentClassId,
            ])
            ->orderBy('marks.user_id')
            ->get();
//dd($marksInfo);
        $marksOfStudent = [];
        if(!empty($marksInfo)){

            foreach ($marksInfo as $studentMark){

                if (!is_null($studentMark)) {
                    $marksOfStudent[$studentMark->subjectid] = $studentMark;
                }
            }
        }
        return $marksOfStudent;
    }

    private function subjectMarksType($studentClassId)
    {

        $marksTypes = \DB::table('subjects')

                       ->join('student_classes', 'student_classes.id', '=', 'subjects.student_class_id')

               ->select('subjects.subject_name','subjects.subject_marks_type','subjects.marks_type_info')

               ->get();


      return $marksTypes;
    }
    private function subjectMarksTypeInArray($studentClassId,$subjects)
    {
        $markTypeName = [];
        if (!$subjects->isEmpty()) {
            foreach ($subjects as $subject) {
                $subjectMarkTypes =  explode(',',$subject->subject_marks_type);
                if (is_array($subjectMarkTypes) && !empty($subjectMarkTypes)) {
                    foreach ($subjectMarkTypes as $subjectMarkTypeId) {
                        $markTypes = (new MarksType())->find($subjectMarkTypeId);
                        if (!is_null($markTypes) && isset($markTypes->marks_type)) {
                            $markTypeName[$subject->subject_name][$markTypes->id] = $markTypes->marks_type;
                        }
                    }
                }
            }
        }

        return $markTypeName;
    }

    private function rejected()
    {
        /*$studentClass =$studentClasses
           ->with('subjects','resultSystem','classTeacher','students')
           ->findOrFail($studentClassId);

       $section = $sections->with('users','classTeacher','studentClass')->findOrFail($sectionId);
       $students = $studentClass->students->where('section_id',$section->id);
//        dd($students);
       $subjectsOfTheClass = collect([]);

       if (isset($studentClass) && !is_null($studentClass)) {

           $subjectsOfTheClass = $studentClass->subjects;
       }
       $numberOfSubjects = $subjectsOfTheClass->count();
       $resultSystem = $studentClass->resultSystem;
       $resultSystemForTheClass = explode(',',json_decode($resultSystem->setting_ids));




       $resultRule = 'grade';
       if(!is_null($resultSystem)){
           $resultRule = $resultSystem->result_rule;
       }

       if ($resultRule == 'grade') {

       }

       if ($resultRule=='division') {

       }

       $resultSettings = new ResultSetting();*/
    }
}