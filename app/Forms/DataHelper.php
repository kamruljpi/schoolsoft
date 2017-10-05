<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 12/26/15
 * Time: 5:01 PM
 */

namespace Erp\Forms;

use Erp\Models\Attendance\StudentAttendance;
use Erp\Models\Designation\Designation;
use Erp\Models\Gender\Gender;
use Erp\Models\Department\Department;
use Erp\Models\Holydays\HolyDayType;
use Erp\Models\Leave\Leave;
use Erp\Models\Marks\MarksType;
use Erp\Models\Menu\Menu;
use Erp\Models\Meta\MetaSetting;
use Erp\Models\Permission\Permission;
use Erp\Models\Punch\Punch;
use Erp\Models\Religion\Religion;
use Erp\Models\Result\ResultSystem;
use Erp\Models\Result\TotalResultSystem;
use Erp\Models\Role\Role;
use Erp\Models\Salary\BonusRule;
use Erp\Models\Salary\OvertimeRule;
use Erp\Models\Salary\SalaryCutRule;
use Erp\Models\Salary\SalaryRule;
use Erp\Models\Salary\SalaryType;
use Erp\Models\Shift\Shift;
use Erp\Models\Site\SiteGroup;
use Erp\Models\Site\SiteType;
use Erp\Models\Status\Status;
use Erp\Models\Student\Section;
use Erp\Models\SubjectGroup\SubjectGroup;
use Erp\Models\Student\StudentClass;
use Erp\Models\Subject\Subject;
use Erp\Models\User\User;
use Erp\Models\Building\Building;
use Erp\Models\Email\Email;
use Erp\Models\Floor\Floor;
use Erp\Models\Room\Room;
use Erp\Models\Examinations\Examination;
use Erp\Models\Country\Country;
use Erp\Models\Division\Division;
use Erp\Models\Account\AccountType;
use Erp\Models\Amount\AmountType;
use Erp\Models\Amount\AmountCategory;
use Erp\Models\Book\BookCategory;
use Erp\Models\Author\Author;
use Erp\Models\ExperienceCategory\ExperienceCategory;
use Erp\Models\SkillCategory\SkillCategory;
use Erp\Models\Skill\Skill;
use Erp\Models\CvLanguage\CvLanguage;
use Erp\Models\Relation\Relation;
use Erp\Models\BusinessType\BusinessType;
use Erp\Models\Experience\Experience;
use Erp\Models\EducationLevel\EducationLevel;
use Erp\Models\Site\SiteInfo;
use Erp\Models\Account\Account;
use Carbon\Carbon;

trait DataHelper
{

    public function siteTypeList()
    {
        $siteTypes = new SiteType();
        $siteTypeList = ['select'];

        foreach($siteTypes->all() as $siteType){
            $siteTypeList[$siteType->id] = $siteType->name ;
        }
        return $siteTypeList;
    }



    /**
     * @return string
     */
    public function siteTypeKeys()
    {
        $siteTypeKeys = implode(',',array_except(array_keys($this->siteTypeList()),[0]));

        return $siteTypeKeys;
    }

    public function siteGroupList()
    {
        $siteGroups = new SiteGroup();
        $siteGroupList = ['select'];

        foreach($siteGroups->all() as $siteGroup){
            $siteGroupList[$siteGroup->id] = $siteGroup->name ;
        }
        return $siteGroupList;
    }



    /**
     * @return string
     */
    public function siteGroupKeys()
    {
        $siteGroupKeys = implode(',',array_except(array_keys($this->siteGroupList()),[0]));

        return $siteGroupKeys;
    }

    /**
     * @param $role
     * @return mixed
     */
    public function role($role)
    {
        $roles = new Role();
        $role=$roles->whereName($role)->first();
        $roleEmployee = $roles->whereName('employee')->first()->id;
        if($role){
            return $role->id;
        }

        return $roleEmployee;
    }

    /**
     * @return array
     */
    public function shiftList()
    {
        $shifts = new Shift();
        $shiftList = ['select'];
        foreach($shifts->all() as $shift){
            $shiftList[$shift->id] = $shift->name;
        }
        return $shiftList;
    }


    public function shiftKeys()
    {
        $shiftKeys = implode(',',array_except(array_keys($this->shiftList()),[0]));
        return $shiftKeys;
    }

    /**
     * @return array
     */
    public function permissionsList()
    {
        $permissions = new Permission();
        $permissionList = ['select'];
        foreach($permissions->all() as $permission){
            $permissionList[$permission->id] = $permission->name;
        }
        return $permissionList;
    }

    /**
     * @return string
     */
    public function permissionKeys()
    {
        $permissionKeys = implode(',',array_except(array_keys($this->permissionsList()),[0]));
        return $permissionKeys;
    }

    /**
     * @return array
     */
    public function rolesList()
    {
        $roles = new Role();
        $roleList = ['select'];
        foreach($roles->all() as $role){
            $roleList[$role->id] = $role->name;
        }

        return $roleList;
    }

    public function roleKeys()
    {
        $roleKeys = implode(',',array_except(array_keys($this->rolesList()),[0]));

        return $roleKeys;
    }
    public function menusList()
    {
        $menus = new Menu();
        $menuList = ['select'];
        foreach($menus->all() as $menu){
            $menuList[$menu->id] = $menu->menu_name;
        }

        return $menuList;
    }

    public function menuKeys()
    {
        $menuKeys = implode(',',array_except(array_keys($this->menusList()),[0]));

        return $menuKeys;
    }
    public function roleListForUser()
    {
        $roles = new Role();
        $roleListForUser = ['select'];
        $teacherId = $this->role('Teacher');
        $studentId = $this->role('Student');
        $guardianId = $this->role('Guardian');

        $userRole = $roles->where('id', '<>', $teacherId)
            ->where('id', '<>', $studentId)
            ->where('id', '<>', $guardianId)
            ->get();

        foreach($userRole as $role){
            $roleListForUser[$role->id] = $role->name;
        }

        return $roleListForUser;
    }

    public function roleKeysForUser()
    {
        $roleKeysForUser = implode(',',array_except(array_keys($this->roleListForUser()),[0]));
        return $roleKeysForUser;
    }

    /**
     * @return array
     */
    public function usersList()
    {
        $users = new User();

        $userList = ['select'];
        foreach($users->all() as $user){

            $firstName = $user->translate('en')?$user->translate('en')->first_name:$user->first_name;
            $lastName = $user->translate('en')?$user->translate('en')->last_name:$user->last_name;
//            dd($user->translate('en'));
            $userList[$user->id] = $firstName.' '.$lastName;
        }

        return $userList;
    }

    /**
     * @return string
     */
    public function userKeys()
    {
        $userKeys = implode(',',array_except(array_keys($this->usersList()),[0]));

        return $userKeys;
    }

    /**
     * @return array
     */
    public function employeeListForSalary()
    {
        $users = new User();
        $role = new Role();
        $guardianRoleId = $this->role('Guardian');
        $studentRoleId = $this->role('Student');

        $userList = ['select'];
        foreach($users->all() as $user){
            if( !$user->hasRole('Student')
                && !$user->hasRole('Guardian')){

                $firstName = $user->translate('en')?$user->translate('en')->first_name:$user->first_name;
                $lastName = $user->translate('en')?$user->translate('en')->last_name:$user->last_name;
                $userList[$user->id] = $firstName.' '.$lastName;
            }
        }

        return $userList;
    }

    /**
     * @return string
     */
    public function employeeKeysForSalary()
    {
        $userKeys = implode(',',array_except(array_keys($this->employeeListForSalary()),[0]));

        return $userKeys;
    }



    /**
     * @return array
     */
    public function genderList()
    {
        $genders = new Gender();
        $genderList = ['select'];

        foreach($genders->all() as $gender){
            $genderList[$gender->id] = $gender->translate('en')->gender_name ;
        }
        return $genderList;
    }



    /**
     * @return string
     */
    public function genderKeys()
    {
        $genKeys = implode(',',array_except(array_keys($this->genderList()),[0]));

        return $genKeys;
    }

    /**
     * @return array
     */
    public function multiGenderList()
    {
        $gender = new Gender();
        $locales = config('app.locales');
        $multiGenderList = [];
        foreach($locales as $locale=>$language){
            $gen = ['select'];
            foreach($gender->all() as $genList){
                app()->setLocale($locale);
                if($genList->gender_name)
                    $gen[$genList->id] = $genList->gender_name;
            }
            $multiGenderList[$locale]= $gen;
        }

        return $multiGenderList;
    }

    /**
     * @return array
     */
    public function guardianList()
    {
        $roleObject = new Role();
        $roleId = $this->role('Guardian');
        $roleOfGuardian = $roleObject->findOrFail($roleId);
        $guardians = $roleOfGuardian->users;
        $guardianList = ['select'];

        foreach($guardians->all() as $guardian){
            $guardianList[$guardian->id] = $guardian->translate('en')->first_name.' '.$guardian->translate('en')->last_name ;
        }
        return $guardianList;
    }

    /**
     * @return string
     */
    public function guardianKeys()
    {
        $guardianKeys = implode(',',array_except(array_keys($this->guardianList()),[0]));

        return $guardianKeys;
    }

    /**
     * @return array
     */
    public function teacherList()
    {
        $roleObject = new Role();
        $roleId = $this->role('Teacher');
        $roleOfTeacher = $roleObject->findOrFail($roleId);
        $teachers = $roleOfTeacher->users;
        $teacherList = ['Select'];

        foreach($teachers->all() as $teacher){
            $teacherList[$teacher->id] = $teacher->translate('en')->first_name.' '.$teacher->translate('en')->last_name ;
        }
        return $teacherList;
    }
    public function markTypeList()
    {
        $roleObject = new MarksType();
        $teacherList = [];
        foreach($roleObject->all() as $teacher){
            $teacherList[$teacher->id] = $teacher->marks_type;
        }
        return $teacherList;
    }
    public function teacherKeys()
    {
        $teacherKeys = implode(',',array_except(array_keys($this->teacherList()),[0]));

        return $teacherKeys;
    }

    /**
     * @return array
     */
    public function studentList()
    {
        $roleObject = new Role();
        $roleId = $this->role('Student');
        $roleOfStudent = $roleObject->findOrFail($roleId);
        $students = $roleOfStudent->users;
        $studentList = ['Select Student'];

        foreach($students->all() as $student){
            $studentList[$student->id] = $student->translate('en')->first_name.' '.$student->translate('en')->last_name ;
        }
        return $studentList;
    }

    public function studentKeys()
    {
        $studentKeys = implode(',',array_except(array_keys($this->studentList()),[0]));

        return $studentKeys;
    }

    /**
     * @return array
     */
    public function relegionList()
    {
        $religion = new Religion();
        $rel = ['select'];
        foreach($religion->all() as $reliList){
            $rel[$reliList->id] = $reliList->name;
        }

        return $rel;
    }

    /**
     * @return string
     */
    public function relegionKeys()
    {
        $relKeys = implode(',',array_except(array_keys($this->relegionList()),[0]));

        return $relKeys;
    }

    /**
     * @return array
     */
    public function departmentList()
    {
        $department = new Department();
        $dept = ['Select Department'];
        foreach($department->all() as $deptList){
            $dept[$deptList->id] = $deptList->name;
        }

        return $dept;
    }



    /**
     * @return string
     */
    public function departmentKeys()
    {
        $deptKeys = implode(',',array_except(array_keys($this->departmentList()),[0]));

        return $deptKeys;
    }
    /**
     * @return array
     */
    public function designationList()
    {
        $designation = new Designation();
        $designat = ['select'];
        foreach($designation->all() as $designationList){
            $designat[$designationList->id] = $designationList->name;
        }

        return $designat;
    }


    /**
     * @return string
     */
    public function designationKeys()
    {
        $designatKeys = implode(',',array_except(array_keys($this->designationList()),[0]));

        return $designatKeys;
    }
    /**
     * @return array
     */
    public function sectionList()
    {
        $sections = new Section();
        $sectionList = ['Select Section'];
        foreach($sections->all() as $section){
            $sectionList[$section->id] = $section->section_name;
        }

        return $sectionList;
    }
    /**
     * @return string
     */
    public function sectionKeys()
    {
        $sectionKeys = implode(',',array_except(array_keys($this->sectionList()),[0]));

        return $sectionKeys;
    }

    /**
     *
     */
    public function subjectGroupList()
    {
        $subjectGroups = new SubjectGroup();
        $subjectGroupList = ['Select Subject Group'];
//        dd($subjectGroups->all());
        foreach($subjectGroups->all() as $subjectGroup){
            $subjectGroupList[$subjectGroup->id] = $subjectGroup->subject_group_name;
        }
//        dd($subjectGroupList);
        return $subjectGroupList;
    }

    /**
     * @return string
     */
    public function subjectGroupKeys()
    {
        $subjectGroupKeys = implode(',',array_except(array_keys($this->subjectGroupList()),[0]));

        return $subjectGroupKeys;
    }
    /**
     * @return array
     */
    public function classList()
    {
        $classes = new StudentClass();
        $classList = ['Select Class'];
        foreach($classes->all() as $clList){
            $classList[$clList->id] = $clList->class_name;
        }

        return $classList;
    }
    /**
     * @return string
     */
    public function classKeys()
    {
        $classKeys = implode(',',array_except(array_keys($this->classList()),[0]));

        return $classKeys;
    }

    /**
     * @return array
     */
    public function subjectList()
    {
        $subjects = new Subject();
        $subjectList = ['select'];
        foreach($subjects->all() as $subject){
            $subjectList[$subject->id] = $subject->subject_name;
        }

        return $subjectList;
    }
    /**
     * @return string
     */
    public function subjectKeys()
    {
        $subjectKeys = implode(',',array_except(array_keys($this->subjectList()),[0]));

        return $subjectKeys;
    }


    /**
     * @return array
     */
    public function resultSystemList()
    {
        $resultSystems = new ResultSystem();
        $resultSystemList = ['select'];
        foreach($resultSystems->all() as $rsList){
            $resultSystemList[$rsList->id] = $rsList->name;
        }
        return $resultSystemList;
    }

    /**
     * @return string
     */
    public function resultSystemKeys()
    {
        $resultSystemKeys = implode(',',array_except(array_keys($this->resultSystemList()),[0]));

        return $resultSystemKeys;
    }

    /**
     * @return array
     */
    public function totalResultSystemList()
    {
        $totalResultSystems = new TotalResultSystem();
        $totalResultSystemList = ['select'];
        foreach($totalResultSystems->all() as $rsList){
            $totalResultSystemList[$rsList->id] = $rsList->name;
        }
        return $totalResultSystemList;
    }

    /**
     * @return string
     */
    public function totalResultSystemKeys()
    {
        $totalResultSystemKeys = implode(',',array_except(array_keys($this->totalResultSystemList()),[0]));

        return $totalResultSystemKeys;
    }

    /**
     * @return mixed
     */
    public function emailerId($emailerId)
    {
//        dd($emailerId);
        $email = new Email();

        $emailId=$email->where('emailer_id',$emailerId)->firstOrFail();

        return $emailId;
    }

    /**
     * @return array
     */
    public function statusList()
    {
        $statuses = new Status();
        $statusList = ['select'];
        foreach($statuses->all() as $status){
            $statusList[$status->id] = $status->name;
        }

        return $statusList;
    }

    /**
     * @return string
     */
    public function statusKeys()
    {
        $statusKeys = implode(',',array_except(array_keys($this->statusList()),[0]));

        return $statusKeys;
    }

    /**
     * @return array
     */
    public function leaveList()
    {
        $leaves = new Leave();
        $leaveList = ['select'];
        foreach($leaves->all() as $leave){
            $leaveList[$leave->id] = $leave->type;
        }

        return $leaveList;
    }

    /**
     * @return string
     */
    public function leaveKeys()
    {
        $leaveKeys = implode(',',array_except(array_keys($this->leaveList()),[0]));

        return $leaveKeys;
    }

    /**
     * @return array
     */
    public function holydayTypeList()
    {
        $holidayTypes = new HolyDayType();
        $holydayTypeList = ['select'];
        foreach($holidayTypes->all() as $holydayType){
            $holydayTypeList[$holydayType->id] = $holydayType->type;
        }

        return $holydayTypeList;
    }

    /**
     * @return string
     */
    public function holydayTypeKeys()
    {
        $holydayTypeKeys = implode(',',array_except(array_keys($this->holydayTypeList()),[0]));
        return $holydayTypeKeys;
    }

    /**
     * @return array
     */
    public function salaryAmountTypeList()
    {
        $amountTypeList = ['select','fixed'=>'Fixed','percent'=>'Percent'];
        return $amountTypeList;
    }

    /**
     * @return array
     */
    public function salaryAmountTypeListForOthers()
    {
        $amountTypeList = [''=>'Select','fixed'=>'Fixed','percent'=>'Percent','plus'=>'Plus','minus'=>'Minus'];
        return $amountTypeList;
    }

    /**
     * @return string
     */
    public function salaryAmountTypeKeysForOthers()
    {
        $salaryAmountTypeKeys = implode(',',array_except(array_keys($this->salaryAmountTypeListForOthers()),[0]));
        return $salaryAmountTypeKeys;
    }

    /**
     * @return string
     */
    public function salaryAmountTypeKeys()
    {
        $salaryAmountTypeKeys = implode(',',array_except(array_keys($this->salaryAmountTypeList()),[0]));
        return $salaryAmountTypeKeys;
    }

    /**
     * @return array
     */
    public function monthList()
    {
        $monthList = ['Select Month'];
        for($m = 1;$m <= 12; $m++){
            $month =  date("F", mktime(0, 0, 0, $m));
            $monthList[$m]=$month;
        }

        return $monthList;
    }

    /**
     * @return string
     */
    public function monthKeys()
    {
        $monthKeys = implode(',',array_except(array_keys($this->monthList()),[0]));
        return $monthKeys;

    }

    /**
     * @return array
     */
    public function yearList()
    {
        $yearList = ['select Year'];
        $starting_year  =date('Y', strtotime('-10 year'));
        $ending_year = date('Y', strtotime('+10 year'));
        $current_year = date('Y');

        for($starting_year; $starting_year <= $ending_year; $starting_year++){

            $yearList[$starting_year] = $starting_year;
        }

        return $yearList;
    }

    /**
     * @return string
     */
    public function yearKeys()
    {
        $yearKeys = implode(',',array_except(array_keys($this->yearList()),[0]));
        return $yearKeys;
    }

    /**
     * @return array
     */
    public function salaryType()
    {
        $salaryTypeObject = new SalaryType();

        $salaryTypes = $salaryTypeObject->all();

        $salaryTypeDetails = [];



        foreach($salaryTypes as $salaryType){

            $salaryTypeDetails[] = [
                [
                    'type'=>'label',
                    'value'=>$salaryType->name.' Details',
                    'labclass'=>'col-sm-12',
                    'wrapclass'=>'col-sm-12',
                    'others'=>[
                        'class'=>'form-control',
                        'style'=>'background-color:#aaa; color:white'
                    ],
                ],
                [
                    'type'=>'text',
                    'name'=> str_slug($salaryType->name,'_').'_amount',
                    'label'=>'Amount',
                    'labclass'=>'col-sm-12',
                    'wrapclass'=>'col-sm-12',
                    'others'=>[
                        'class'=>'form-control',
                    ],
                    'validation'=>'required'

                ],
                [
                    'type'=>'select',
                    'name'=> str_slug($salaryType->name,'_').'_amount_type',
                    'label' => 'Amount Type',
                    'others'=>['class'=>'form-control'],
                    'labclass'=>'col-sm-12',
                    'wrapclass'=>'col-sm-12',
                    'trans'=>false,
                    'options'=>$this->salaryAmountTypeList(),
                    'value'=>0,
                    'validation'=>"required|in:".$this->salaryAmountTypeKeys()
                ]
            ];



        }
        return $salaryTypeDetails;

    }
    public function marksTypes()
    {
        $marksTypeObject = new MarksType();

        $markTypes = $marksTypeObject->all();

        $markTypeDetails = [];



        foreach($markTypes as $markType){

            $markTypeDetails[] = [

                [
                    'type'=>'text',
                    'name'=> str_slug($markType->marks_type,'_').'_total',
                    'label' => $markType->marks_type.' '.'Total',
                    'others'=>['class'=>'form-control'],
                    'labclass'=>'col-sm-12',
                    'wrapclass'=>'col-sm-12',
                    'trans'=>false,
                    'value'=>null,
                    'validation'=>"required"
                ],
                [
                    'type'=>'text',
                    'name'=> str_slug($markType->marks_type),
                    'label'=>$markType->marks_type,
                    'labclass'=>'col-sm-12',
                    'wrapclass'=>'col-sm-12',
                    'others'=>[
                        'class'=>'form-control',
                    ],
                    'validation'=>'required'

                ],
            ];



        }
        return $markTypeDetails;

    }
    /**
     * @return array
     */
    public function salaryTypeList()
    {
        $salaryTypeObject = new SalaryType();
        $salaryTypes = $salaryTypeObject->all();
        $salaryTypeList = [];
        foreach($salaryTypes->all() as $salaryType){
            $salaryTypeList[snake_case($salaryType->name)] = $salaryType->id;
        }
        return $salaryTypeList;
    }

    public function salaryTypeKeys()
    {
        $salaryTypeKeys = implode(',',array_except(array_keys($this->salaryTypeList()),[0]));
        return $salaryTypeKeys;
    }

    /**
     * @return array
     */
    public function salaryTypeListForOvertime()
    {
        $salaryTypeObject = new SalaryType();

        $salaryTypes = $salaryTypeObject->all();
        $salaryTypeList = [];
//        dd($salaryTypes->all());
        foreach($salaryTypes->all() as $salaryType){
            $salaryTypeList[snake_case($salaryType->name).'_overtime'] = $salaryType->name;
        }
//        dd($salaryTypeList) ;
        return $salaryTypeList;
    }

    /**
     * @return array
     */
    public function salaryTypeListForBonus()
    {
        $salaryTypeObject = new SalaryType();

        $salaryTypes = $salaryTypeObject->all();
        $salaryTypeList = [];
//        dd($salaryTypes->all());
        foreach($salaryTypes->all() as $salaryType){
            $salaryTypeList[snake_case($salaryType->name).'_bonus'] = $salaryType->name;
        }
//        dd($salaryTypeList) ;
        return $salaryTypeList;
    }

    /**
     * @return array
     */
    public function salaryTypeListForSalaryCut()
    {
        $salaryTypeObject = new SalaryType();

        $salaryTypes = $salaryTypeObject->all();
        $salaryTypeList = [];
//        dd($salaryTypes->all());
        foreach($salaryTypes->all() as $salaryType){
            $salaryTypeList[snake_case($salaryType->name).'_salarycut'] = $salaryType->name;
        }
//        dd($salaryTypeList) ;
        return $salaryTypeList;
    }

    /**
     * @return array
     */
    public function salaryAllowanceList ()
    {
        $allowanceObject = new SalaryRule();
        $allowances = $allowanceObject->all();
        $allowanceList = ['select'];
        foreach($allowances as $allowance){
            $allowanceList[$allowance->id] = $allowance->name;
        }

        return $allowanceList;
    }

    /**
     * @return string
     */
    public function allowanceKeys()
    {
        $allowanceKeys = implode(',',array_except(array_keys($this->salaryAllowanceList()),[0]));
        return $allowanceKeys;
    }

    /**
     * @return array
     */
    public function overtimeList()
    {
        $overtimeObject = new OvertimeRule();
        $overtimes = $overtimeObject->all();
        $overtimeList = ['select'];
        foreach($overtimes as $overtime){
            $overtimeList[$overtime->id] = $overtime->name;
        }

        return $overtimeList;
    }

    /**
     * @return string
     */
    public function overtimeKeys()
    {
        $overtimeKeys = implode(',',array_except(array_keys($this->OvertimeList()),[0]));
        return $overtimeKeys;
    }

    /**
     * @return array
     */
    public function salaryCutList()
    {
        $salaryCutObject = new SalaryCutRule();
        $salaryCuts = $salaryCutObject->all();
        $salaryCutList = ['select'];
        foreach($salaryCuts as $salaryCut){
            $salaryCutList[$salaryCut->id] = $salaryCut->name;
        }

        return $salaryCutList;
    }

    /**
     * @return string
     */
    public function salaryCutKeys()
    {
        $salaryCutKeys = implode(',',array_except(array_keys($this->salaryCutList()),[0]));
        return $salaryCutKeys;
    }

    /**
     * @return array
     */
    public function bonusList()
    {
        $bonusObject = new BonusRule();
        $bonuses = $bonusObject->all();
        $bonusList = ['select'];
        foreach($bonuses as $bonus){
            $bonusList[$bonus->id] = $bonus->name;
        }

        return $bonusList;
    }


    /**
     * @return string
     */
    public function bonusKeys()
    {
        $bonusKeys = implode(',',array_except(array_keys($this->bonusList()),[0]));
        return $bonusKeys;
    }

    /**
     * @return array of punch years
     */
    public function punchYearList()
    {
        $punchYearObject = new Punch();
        $punches = $punchYearObject->all();
        $yearList = ['Select Year'];
        foreach($punches as $punch){
            $yearList[$punch->punch_year] = $punch->punch_year;
        }

        return $yearList;
    }



    /**
     * @return string
     */
    public function punchYearKeys()
    {
        $punchYearKeys = implode(',',array_except(array_keys($this->punchYearList()),[0]));
        return $punchYearKeys;
    }
    /**
     * @return array of punch years
     */
    public function stdAttendanceYeayList()
    {
        $attendanceYearObject = new StudentAttendance();
        $attendances = $attendanceYearObject->all();
        $yearList = ['Select Year'];
        foreach($attendances as $attendance){
            $yearList[$attendance->present_year] = $attendance->present_year;
        }

        return $yearList;
    }

    /**
     * @return string
     */
    public function stdAttendanceYearKeys()
    {
        $attendanceYearKeys = implode(',',array_except(array_keys($this->stdAttendanceYeayList()),[0]));
        return $attendanceYearKeys;
    }
    /**
     * get all the classNames(form names) under a single namespace ERP\Forms
     *
     * @return array
     */
    public function formClassList()
    {
        $allFiles = new \RecursiveIteratorIterator(new \RecursiveDirectoryIterator(base_path('app/Forms')));
        $phpFiles = new \RegexIterator($allFiles, '/\.php$/');

        foreach ($phpFiles as $phpFile) {

            $content = file_get_contents($phpFile->getRealPath());

            $tokens = token_get_all($content);
            $namespace = '';
            for ($index = 0; isset($tokens[$index]); $index++) {
                if (!isset($tokens[$index][0])) {
                    continue;
                }
                if (T_NAMESPACE === $tokens[$index][0]) {
                    $index += 2; // Skip namespace keyword and whitespace
                    while (isset($tokens[$index]) && is_array($tokens[$index])) {
                        $namespace .= $tokens[$index++][1];
                    }
                }
                if (T_CLASS === $tokens[$index][0]) {
                    $index += 2; // Skip class keyword and whitespace
                    $fqcns[] = $namespace.'\\'.$tokens[$index][1];
                }
            }
        }
        $formNames = ['select'];
        foreach($fqcns as $fqcn){
            $jj = explode('\\',$fqcn);
            $formName = end($jj);

            $formNames[$formName] = $formName;

        }
        return $formNames;
    }

    /**
     * @return string
     */
    public function formClassKeys()
    {
        $formClassKeys = implode(',',array_except(array_keys($this->formClassList()),[0]));

        return $formClassKeys;
    }

    /**
     * @return array
     */
    public function buildingList()
    {
        $building = new Building();
        $buil = ['Select Building'];
        foreach($building->all() as $builList){
            $buil[$builList->id] = $builList->building_name;
        }

        return $buil;
    }

    /**
     * @return string
     */
    public function buildingKeys()
    {
        $builKeys = implode(',',array_except(array_keys($this->buildingList()),[0]));

        return $builKeys;
    }

    /**
     * @return array
     */
    public function floorList()
    {
        $floor = new Floor();
        $fl = ['Select Floor'];
        foreach($floor->all() as $flList){
            $fl[$flList->id] = $flList->floor_name;
        }
        return $fl;
    }

    /**
     * @return string
     */
    public function floorKeys()
    {
        $flKeys = implode(',',array_except(array_keys($this->floorList()),[0]));

        return $flKeys;
    }

    /**
     * @return array
     */
    public function roomList()
    {
        $room = new Room();
        $ro = ['Select Room'];
        foreach($room->all() as $rList){
            $ro[$rList->id] = $rList->room_name;
        }
        return $ro;
    }

    /**
     * @return string
     */
    public function roomKeys()
    {
        $rKeys = implode(',',array_except(array_keys($this->roomList()),[0]));

        return $rKeys;
    }

    /**
     * @return array
     */
    public function examinationList()
    {
        $examination = new Examination();
        $exam = ['Select Exam'];
        foreach($examination->all() as $examList){
            $exam[$examList->id] = $examList->examination_name;
        }
        return $exam;
    }

    /**
     * @return string
     */
    public function examinationKeys()
    {
        $examKeys = implode(',',array_except(array_keys($this->examinationList()),[0]));

        return $examKeys;
    }

    /**
     * @return array
     */
    public function countryList()
    {
        $countries = new Country();
        $countryList = ['Select Country'];

        foreach($countries->all() as $country){
            $countryList[$country->id] = $country->translate('en')->country_name;
        }
        return $countryList;
    }

    /**
     * @return string
     */
    public function countryKeys()
    {
        $countryKeys = implode(',',array_except(array_keys($this->countryList()),[0]));

        return $countryKeys;
    }

    /**
     * @return array
     */
    public function divisionList()
    {
        $divisions = new Division();
        $divisionList = ['select'];

        foreach($divisions->all() as $division){
            $divisionList[$division->id] = $division->translate('en')->division_name;
        }
        return $divisionList;
    }

    /**
     * @return string
     */
    public function divisionKeys()
    {
        $divisionKeys = implode(',',array_except(array_keys($this->divisionList()),[0]));

        return $divisionKeys;
    }

    /**
     * @return array
     */
    public function accountTypeList()
    {
        $accountTypes = new AccountType();
        $accountTypeList = ['select'];

        foreach($accountTypes->all() as $accountType){
            $accountTypeList[$accountType->id] = $accountType->translate('en')->account_type_name;
        }
        return $accountTypeList;
    }

    /**
     * @return string
     */
    public function accountTypeKeys()
    {
        $accountTypeKeys = implode(',',array_except(array_keys($this->accountTypeList()),[0]));

        return $accountTypeKeys;
    }

    /**
     * @return array
     */
    public function amountTypeList()
    {
        $amountTypes = new AmountType();
        $amountTypeList = ['select'];

        foreach($amountTypes->all() as $amountType){
            $amountTypeList[$amountType->id] = $amountType->translate('en')->amount_type_name;
        }
        return $amountTypeList;
    }

    /**
     * @return string
     */
    public function amountTypeKeys()
    {
        $amountTypeKeys = implode(',',array_except(array_keys($this->amountTypeList()),[0]));

        return $amountTypeKeys;
    }

    /**
     * @return array
     */
    public function amountCategoryList()
    {
        $amountCategories = new AmountCategory();
        $amountCategoryList = ['select'];

        foreach($amountCategories->all() as $amountCategory){
            $amountCategoryList[$amountCategory->id] = $amountCategory->translate('en')->amount_category_name;
        }
        return $amountCategoryList;
    }

    /**
     * @return string
     */
    public function amountCategoryKeys()
    {
        $amountCategoryKeys = implode(',',array_except(array_keys($this->amountCategoryList()),[0]));

        return $amountCategoryKeys;
    }

    /**
     * @return array
     */
    public function bookCategoryList()
    {
        $bookCategories = new BookCategory();
        $bookCategoryList = ['Select Book Category'];

        foreach($bookCategories->all() as $bookCategory){
            $bookCategoryList[$bookCategory->id] = $bookCategory->translate('en')->book_category_name;
        }
        return $bookCategoryList;
    }

    /**
     * @return string
     */
    public function bookCategoryKeys()
    {
        $bookCategoryKeys = implode(',',array_except(array_keys($this->bookCategoryList()),[0]));

        return $bookCategoryKeys;
    }

    /**
     * @return array
     */
    public function authorList()
    {
        $authors = new Author();
        $authorList = ['Select Author'];

        foreach($authors->all() as $author){
            $authorList[$author->id] = $author->translate('en')->author_name;
        }
        return $authorList;
    }

    /**
     * @return string
     */
    public function authorKeys()
    {
        $authorKeys = implode(',',array_except(array_keys($this->authorList()),[0]));

        return $authorKeys;
    }

    /**
     *
     * Training Year List
     *
     * @return array
     */
    public function trainingYearList()
    {
        $dt = Carbon::now();
        $currentYear = $dt->year;
//        dd($currentYear);
        $trainingYearList = ['Select Year'];

        for($i = $currentYear; $i >= 1953; $i--){
            $trainingYearList[$i] = $i;
        }
        return $trainingYearList;
    }

    /**
     * @return string
     */
    public function trainingYearKeys()
    {
        $trainingYearKeys = implode(',',array_except(array_keys($this->trainingYearList()),[0]));

        return $trainingYearKeys;
    }

    /**
     * @return array
     */
    public function experienceCategoryList()
    {
        $experienceCategories = new ExperienceCategory();
        $experienceCategoryList = ['Select Experience Category'];

        foreach($experienceCategories->all() as $experienceCategory){
            $experienceCategoryList[$experienceCategory->id] = $experienceCategory->translate('en')->experience_category_name;
        }
        return $experienceCategoryList;
    }

    /**
     * @return string
     */
    public function experienceCategoryKeys()
    {
        $experienceCategoryKeys = implode(',',array_except(array_keys($this->experienceCategoryList()),[0]));

        return $experienceCategoryKeys;
    }

    /**
     * @return array
     */
    public function skillCategoryList()
    {
        $skillCategories = new SkillCategory();
        $skillCategoryList = ['Select Skill Category'];

        foreach($skillCategories->all() as $skillCategory){
            $skillCategoryList[$skillCategory->id] = $skillCategory->translate('en')->skill_category_name;
        }
        return $skillCategoryList;
    }

    /**
     * @return string
     */
    public function skillCategoryKeys()
    {
        $skillCategoryKeys = implode(',',array_except(array_keys($this->skillCategoryList()),[0]));

        return $skillCategoryKeys;
    }

    /**
     * @return array
     */
    public function skillList()
    {
        $skills = new Skill();
        $skillList = ['Select Skill'];

        foreach($skills->all() as $skill){
            $skillList[$skill->id] = $skill->translate('en')->skill_name;
        }

        return $skillList;
    }

    /**
     * @return mixed
     */
    public function languageList()
    {
        $languages = new CvLanguage();
        $languageList = ['Select Language'];
        foreach($languages->all() as $language){
            $languageList[$language->id] = $language->cv_language_name;
        }

        return $languageList;
    }

    /**
     * @return string
     */
    public function languageKeys()
    {
        $languageKeys = implode(',',array_except(array_keys($this->languageList()),[0]));

        return $languageKeys;
    }

    /**
     * @return array
     */
    public function relationList()
    {
        $relations = new Relation();
        $relationList = ['Select Relation'];
        foreach($relations->all() as $relation){
            $relationList[$relation->id] = $relation->relation_name;
        }

        return $relationList;
    }

    /**
     * @return string
     */
    public function relationKeys()
    {
        $relationKeys = implode(',',array_except(array_keys($this->relationList()),[0]));

        return $relationKeys;
    }

    /**
     * @return array
     */
    public function businessTypeList()
    {
        $businessTypes = new BusinessType();
        $businessTypeList = ['Select Business'];
        foreach($businessTypes->all() as $businessType){
            $businessTypeList[$businessType->id] = $businessType->business_type_name;
        }

        return $businessTypeList;
    }

    /**
     * @return string
     */
    public function businessTypeKeys()
    {
        $businessTypeKeys = implode(',',array_except(array_keys($this->businessTypeList()),[0]));

        return $businessTypeKeys;
    }

    /**
     * @return array
     */
    public function experienceList()
    {
        $experiences = new Experience();
        $experienceList = ['Select Experience'];
        foreach($experiences->all() as $experience){
            $experienceList[$experience->id] = $experience->experience_name;
        }

        return $experienceList;
    }

    /**
     * @return string
     */
    public function experienceKeys()
    {
        $experienceKeys = implode(',',array_except(array_keys($this->experienceList()),[0]));

        return $experienceKeys;
    }

    /**
     * @return array
     */
    public function educationLevelList()
    {
        $educationLevels = new EducationLevel();
        $educationLevelList = ['Select Education Level'];
        foreach($educationLevels->all() as $educationLevel){
            $educationLevelList[$educationLevel->id] = $educationLevel->education_level_name;
        }

        return $educationLevelList;
    }

    /**
     * @return string
     */
    public function educationLevelKeys()
    {
        $educationLevelKeys = implode(',',array_except(array_keys($this->educationLevelList()),[0]));

        return $educationLevelKeys;
    }

    /**
     * @return array
     */
    public function passingYearList()
    {
        $dt = Carbon::now();
        $currentYear = $dt->year;
//        dd($currentYear);
        $advancedYear = $currentYear + 5;
        $passingYearList = ['Select Year'];

        for($i = $advancedYear; $i >= 1953; $i--){
            $passingYearList[$i] = $i;
        }
        return $passingYearList;
    }

    /**
     * @return string
     */
    public function passingYearKeys()
    {
        $passingYearKeys = implode(',',array_except(array_keys($this->passingYearList()),[0]));

        return $passingYearKeys;
    }

    /**
     * @return array
     */
    public function siteInfoList()
    {
        $siteInfos = new SiteInfo();
        $siteInfoList = ['Select Institution'];
        foreach($siteInfos->all() as $siteInfo){
            $siteInfoList[$siteInfo->id] = $siteInfo->site_name;
        }

        return $siteInfoList;
    }

    /**
     * @return string
     */
    public function siteInfoKeys()
    {
        $siteInfoKeys = implode(',',array_except(array_keys($this->siteInfoList()),[0]));

        return $siteInfoKeys;
    }

    /**
     * @return array
     */
    public function receiptNoList()
    {
        $receiptNos = new Account();
        $receiptNoList = ['select'];

        foreach($receiptNos->all() as $receiptNo){
            $receiptNoList[$receiptNo->receipt_no] = $receiptNo->receipt_no;
        }
        return $receiptNoList;
    }

    public function getSubjectMarksTypeInfo($id=null)
    {
        $subject = (new Subject())->findOrFail($id);

        $subjectMarkTypeInfo = json_decode($subject->marks_type_info);
        $markTypeInfos = [];

        if( isset($subjectMarkTypeInfo) && is_object($subjectMarkTypeInfo) && !empty($subjectMarkTypeInfo)){
            foreach ($subjectMarkTypeInfo as $markTypeInfoKey=>$markTypeInfo){
                $markTypeInfos[$markTypeInfoKey] = $markTypeInfo;
            }
        }

        return $markTypeInfos;
    }
}