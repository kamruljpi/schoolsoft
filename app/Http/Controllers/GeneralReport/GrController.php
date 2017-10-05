<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 8/9/2016
 * Time: 12:04 PM
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
use Erp\Models\Department\Department;
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


class GrController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    /**
     * @param Request $request
     * @param User $user
     * @param Role $role
     */
    public function generateStudentReport(Request $request, User $user, Role $role,StudentClass $studentClass, Section $section, Department $department)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $studentClassId = $request->studentClassId;
        $sectionId = $request->sectionId;
        $departmentId = $request->departmentId;
        $studentId = $request->studentId;
        //dd($studentClassId);

        if((int)$studentClassId == 0 && (int)$sectionId == 0 && (int)$departmentId==0 && (int)$studentId == 0){
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
        } else if((int)$studentClassId != 0 && (int)$sectionId == 0 && (int)$departmentId==0 && (int)$studentId == 0){
            $studentClass = $studentClass->findOrFail($studentClassId);
            $roleId = $this->role('Student');
            $roleOfStudent = $role->findOrFail($roleId);
            $studentList = $roleOfStudent->users()
                ->whereStudentClassId($studentClassId)
                ->orderBy('roll_no', 'asc')
                ->get();
            $studentsWithPhotos = array();
            foreach($studentList as $student){
                $student->Section = $student->section->section_name;
                if( count($student->photos)>0)

                    $studentsWithPhotos[$student->photos->last()->name] = $student;
            }
            //dd($studentsWithPhotos);
            return view('default.admin.reports.student-report-class-wise',compact('studentClass','studentList','locale','defaultLocale', 'studentsWithPhotos'));
        } else if((int)$studentClassId != 0 && (int)$sectionId != 0 && (int)$departmentId==0 && (int)$studentId == 0){
            $studentClass = $studentClass->findOrFail($studentClassId);
            $studentSection = $section->findOrFail($sectionId);
            $roleId = $this->role('Student');
            $roleOfStudent = $role->findOrFail($roleId);
            $studentList = $roleOfStudent->users()
                ->whereStudentClassId($studentClassId)
                ->whereSectionId($sectionId)
                ->orderBy('roll_no', 'asc')
                ->get();
            $studentsWithPhotos = array();
            foreach($studentList as $student){
                $student->Section = $student->section->section_name;
                if( count($student->photos)>0)

                    $studentsWithPhotos[$student->photos->last()->name] = $student;
            }
            //dd($studentSection);
            return view('default.admin.reports.student-report-section-wise',compact('studentClass','studentSection','studentList','locale','defaultLocale', 'studentsWithPhotos'));
        }else if((int)$studentClassId != 0 && (int)$sectionId != 0 && (int)$departmentId !=0 && (int)$studentId == 0){
            $studentClass = $studentClass->findOrFail($studentClassId);
            $studentSection = $section->findOrFail($sectionId);
            $studentDepartment = $department->findOrFail($departmentId);
            $roleId = $this->role('Student');
            $roleOfStudent = $role->findOrFail($roleId);
            $studentList = $roleOfStudent->users()
                ->whereStudentClassId($studentClassId)
                ->whereSectionId($sectionId)
                ->whereDepartmentId($departmentId)
                ->orderBy('roll_no', 'asc')
                ->get();
            $studentsWithPhotos = array();
            foreach($studentList as $student){
                $student->Section = $student->section->section_name;
                if( count($student->photos)>0)

                    $studentsWithPhotos[$student->photos->last()->name] = $student;
            }
            //dd($studentSection);
            return view('default.admin.reports.student-report-section-department-wise',compact('studentClass','studentSection','studentDepartment','studentList','locale','defaultLocale', 'studentsWithPhotos'));
        } else if((int)$studentClassId == 0 && (int)$sectionId == 0 && (int)$departmentId !=0 && (int)$studentId == 0){
            $studentDepartment = $department->findOrFail($departmentId);
            $roleId = $this->role('Student');
            $roleOfStudent = $role->findOrFail($roleId);
            $studentList = $roleOfStudent->users()
                ->whereDepartmentId($departmentId)
                ->orderBy('roll_no', 'asc')
                ->get();
            $studentsWithPhotos = array();
            foreach($studentList as $student){
                $student->stclass = $student->stClass->class_name;
                $student->Section = $student->section->section_name;
                if( count($student->photos)>0)

                    $studentsWithPhotos[$student->photos->last()->name] = $student;
            }
            //dd($studentSection);
            return view('default.admin.reports.student-report-department-wise',compact('studentDepartment','studentList','locale','defaultLocale', 'studentsWithPhotos'));
        } else if((int)$studentClassId != 0 && (int)$sectionId != 0 && (int)$departmentId ==0 && (int)$studentId != 0){
            $studentClass = $studentClass->findOrFail($studentClassId);
            $studentSection = $section->findOrFail($sectionId);
            $singleStudent = $user->with('department')->findOrFail($studentId);
            $guardianId = $singleStudent->guardian_id;
            $guardianData =  $user->findOrFail($guardianId);
//            dd($singleStudent);
            $photo = $singleStudent->photo->last()->name;
            return view('default.admin.reports.student-report-individual',compact('studentClass','studentSection','singleStudent', 'guardianData','locale','defaultLocale', 'photo'));
        } else if((int)$studentClassId != 0 && (int)$sectionId != 0 && (int)$departmentId !=0 && (int)$studentId != 0){
            $studentClass = $studentClass->findOrFail($studentClassId);
            $studentSection = $section->findOrFail($sectionId);
            $singleStudent = $user->with('department')->findOrFail($studentId);
            $guardianId = $singleStudent->guardian_id;
            $guardianData =  $user->findOrFail($guardianId);
//            dd($singleStudent);
            $photo = $singleStudent->photo->last()->name;
            return view('default.admin.reports.student-report-individual-with-department',compact('studentClass','studentSection','singleStudent', 'guardianData','locale','defaultLocale', 'photo'));
        } else if((int)$studentClassId == 0 && (int)$sectionId == 0 && (int)$departmentId !=0 && (int)$studentId != 0){
            $singleStudent = $user->with('stClass', 'section' ,'department')->findOrFail($studentId);
            $guardianId = $singleStudent->guardian_id;
            $guardianData =  $user->findOrFail($guardianId);
//            dd($singleStudent);
            $photo = $singleStudent->photo->last()->name;
            return view('default.admin.reports.student-report-individual-only-department',compact('singleStudent', 'guardianData','locale','defaultLocale', 'photo'));
        }
    }

    public function studentOfDepartment(User $user,Role $role, Department $department, Request $request)
    {
        $departmentId = $request->departmentId;
        $roleId = $this->role('Student');
        $roleOfStudent = $role->findOrFail($roleId);
        $studentForDepartment = $roleOfStudent->users()
            ->whereDepartmentId($departmentId)
            ->get();
//        dd($studentForDepartment);
//        $selectedDepartment = $department->findOrFail($departmentId);
//        $studentForDepartment = $selectedDepartment->users;
//        dd($studentForDepartment);
        if( $request->ajax()){
            return response()->json( [$studentForDepartment]);
        }
    }

    public function studentOfDepartmentWithSection(User $user,Role $role, Department $department, Request $request)
    {
        $sectionId = $request->sectionId;
        $departmentId = $request->departmentId;
        $roleId = $this->role('Student');
        $roleOfStudent = $role->findOrFail($roleId);
        $studentForDepartment = $roleOfStudent->users()
            ->whereSectionId($sectionId)
            ->whereDepartmentId($departmentId)
            ->get();
        if( $request->ajax()){
            return response()->json( [$studentForDepartment]);
        }
    }
}