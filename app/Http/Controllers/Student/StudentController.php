<?php

namespace Erp\Http\Controllers\Student;

use Erp\Forms\DataHelper;
use Erp\Forms\FormControll;
use Erp\Forms\StudentForm;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\AddFieldTable\AddFieldToTable;
use Erp\Models\Department\Department;
use Erp\Models\Student\Section;
use Erp\Models\Student\Student;
use Erp\Models\Student\StudentClass;
use Erp\Models\Subject\Subject;
use Erp\Models\User\User;
use Erp\Models\Site\SiteInfo;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;
use Intervention\Image\Facades\Image as InterImage;
use Erp\Models\Image\Photo;
use Erp\Models\Media\Media;
use Erp\Models\Role\Role;
use Erp\Models\Student\StudentHistory;
use Erp\Models\Examinations\Examination;

class StudentController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $student;
    private $fileName;
    private $extension;


    /**
     * StudentController constructor.
     * @param User $student
     */
    public function __construct(User $student)
    {



        $this->middleware('auth');

        $this->student = $student;

    }

    public function index(Role $role)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $roleId = $this->role('Student');
        $roleOfStudent = $role->findOrFail($roleId);
        $studentList = $roleOfStudent->users()->orderBy('student_class_id', 'asc')->orderBy('roll_no', 'asc')->paginate(20);
//        $studentList = $this->modelList($roleOfStudent->users);
        $studentsWithPhotos = array();
        foreach($studentList as $student){

            if( count($student->photos)>0)

                $studentsWithPhotos[$student->photos->last()->name] = $student;
        }
        $viewType = 'Student List';

        return view('default.admin.students.index', compact('studentList', 'locale', 'defaultLocale', 'studentsWithPhotos', 'viewType'));

    }

    /**
     * @param $classId
     * @param $attDate
     * @param Role $role
     * @param StudentClass $studentClass
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getStudentListByClass($classId,$attDate,Role $role, StudentClass $studentClass)
    {
        $attDate = $attDate;
        $studentClass = $studentClass->findOrFail($classId);
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $roleId = $this->role('Student');
        $roleOfStudent = $role->with('users')->findOrFail($roleId);
        $studentList = $roleOfStudent->users()->with('studentAttendances')->whereStudentClassId($classId)->get();

        $studentsWithPhotos = array();

        if (!$studentList->isEmpty()) {

            foreach($studentList as $student){

                if( count($student->photos)>0)

                    $studentsWithPhotos[$student->photos->last()->name] = $student;
            }
        }

        $viewType = 'Student List';
        if (request()->ajax())
        {
            return view('default.admin.students.student-list-for-attendance', compact('studentsWithPhotos','locale','defaultLocale', 'viewType','attDate','studentClass'));
        }

    }

    /**
     * @param $sectionId
     * @param Role $role
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getStudentListBySection($classId,$sectionId,$attDate, Role $role, StudentClass $studentClass, Section $section)
    {
        $attDate = $attDate;
        $studentClass = $studentClass->findOrFail($classId);
        $studentSection = $section->findOrFail($sectionId);
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $roleId = $this->role('Student');
        $roleOfStudent = $role->with('users')->findOrFail($roleId);
        $studentList = $roleOfStudent->users()
            ->whereStudentClassId($classId)
            ->whereSectionId($sectionId)
            ->get();

        $studentsWithPhotos = array();
        foreach($studentList as $student){

            if( count($student->photos)>0)

                $studentsWithPhotos[$student->photos->last()->name] = $student;
        }
//        dd($studentsWithPhotos);
        $viewType = 'Student List';
        if (request()->ajax())
        {
            return view('default.admin.students.student-list-for-attendance', compact('studentsWithPhotos','locale','defaultLocale', 'viewType','attDate','studentClass','studentSection'));
        }

    }

    public function getStudentListBySubject($classId,$sectionId,$attDate,$subjectId,Role $role, StudentClass $studentClass,Section $section, Subject $subject)
    {
        $attDate = $attDate;
        $studentClass = $studentClass->findOrFail($classId);
        $studentSection = $section->findOrFail($sectionId);
        $studentSubject = $subject->findOrFail($subjectId);

        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $roleId = $this->role('Student');
        $roleOfStudent = $role->with('users')->findOrFail($roleId);
        $studentList = $roleOfStudent->users()
            ->whereStudentClassId($classId)
            ->whereSectionId($sectionId)
            ->get();

        $studentsWithPhotos = array();
        foreach($studentList as $student){

            if( count($student->photos)>0)

                $studentsWithPhotos[$student->photos->last()->name] = $student;
        }
        $viewType = 'Student List';
        if (request()->ajax())
        {
            return view('default.admin.students.student-list-for-attendance', compact('studentsWithPhotos','locale','defaultLocale', 'viewType','attDate','studentClass','$studentSection','studentSubject'));
        }

    }


    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createStudentForm()
    {

        $viewType = 'Create Student';

        return view('default.admin.students.create',compact('viewType'));
    }

    /**
     * @param $departmentId
     * @param Department $department
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function getClassForDepartment($departmentId, Department $department,Request $request)
    {
        $selectedDepertment = $department->findOrFail($departmentId);
        $classesForDept = $selectedDepertment->studentClasses;
        if( $request->ajax()){
            return response()->json( [$classesForDept]);
        }
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return mixed
     */
    public function createStudent(Requests\Validator $validatedRequest)
    {
        $allStudents = $this->student;
        $isOwnFieldsSaved = $this->ownFieldsToSave($allStudents,$validatedRequest);
        $isTranslatedFieldsSaved = $this->translatedAttrToSave($allStudents,$validatedRequest);

        if($isOwnFieldsSaved && $isTranslatedFieldsSaved){

                $newlyCreatedUser = $isOwnFieldsSaved;
                $basicUserInfoArr =  [
                    'user_id'=>$newlyCreatedUser->id,
                    'created_at'=>date('Y-m-d')
                ];

                $this->setRole(
                    $newlyCreatedUser,
                    $validatedRequest
                );


                $this->saveStudentHistory(
                    $newlyCreatedUser,
                    $validatedRequest,
                    $basicUserInfoArr
                );

                $this->savePhoto(
                    $newlyCreatedUser,
                    $validatedRequest
                );

                $this->saveDocuments(
                    $newlyCreatedUser,
                    $validatedRequest
                );
                $this->saveExtraFields(
                    $newlyCreatedUser,
                    $validatedRequest
                );

                return back()->withSuccess('Successfully Created');
        }
    }

    /**
     * @param User $student
     * @param Requests\Validator $validatedRequest
     * @return bool
     */
    private function ownFieldsToSave(User $student, Requests\Validator $validatedRequest)
    {
        if(isset($student->studentFields)){
            foreach($student->studentFields as $ownField){
                if($validatedRequest->{$ownField})
                    $student->{$ownField} = $validatedRequest->{$ownField} ;
            }
        }

        $this->passwordToSave($student,$validatedRequest);

        if($student->save()){

            return $student;
        }

        return false;
    }

    /**
     * @param User $student
     * @param Requests\Validator $validatedRequest
     */
    private function passwordToSave(User $student, Requests\Validator $validatedRequest)
    {
        if($validatedRequest->password){

            $student->password = bcrypt($validatedRequest->get('password'));
        }
    }

    /**
     * @param User $user
     * @param Requests\Validator $validatedRequest
     * @return bool
     */
    private function translatedAttrToSave(User $user, Requests\Validator $validatedRequest)
    {
        foreach ($user->translatedAttributes as $field) {
            foreach($this->locales() as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $user->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }

        if($user->save()){

            return true;
        }
        return false;
    }

    /**
     * @param User $student
     * @return mixed
     */
    private function newlyCreatedUser(User $student)
    {
        $newlyCreatedUser = $student->all()->last();

        return $newlyCreatedUser;
    }

    /**
     * @param User $student
     * @param Requests\Validator $validatedRequest
     */
    private function setRole(User $student, Requests\Validator $validatedRequest)
    {
        if($validatedRequest->role){
            $roleId = $validatedRequest->role;
            $student->roles()->attach($roleId);
        }
    }

    /**
     * @param User $student
     * @param Requests\Validator $validatedRequest
     * @param array $studentHistory
     */
    private function saveStudentHistory(User $student, Requests\Validator $validatedRequest,array $studentHistory = [])
    {
        $countArr = count($studentHistory);

        if(isset($student->studentHistoryFields)){
            foreach($student->studentHistoryFields as $studentHistoryField){
                if($validatedRequest->{$studentHistoryField})
                    $studentHistory[$studentHistoryField] =$validatedRequest->{$studentHistoryField};
            }
        }

        if(count($studentHistory)>$countArr){
            $student->studentHistories()->create($studentHistory);
        }
    }


    /**
     * @param User $student
     * @param Requests\Validator $validatedRequest
     */
    private function savePhoto(User $student, Requests\Validator $validatedRequest)
    {
        if($validatedRequest->photo):
            $image = $validatedRequest->file('photo');
            $this->imageUpload($image,$student);
        endif;
    }

    /**
     * @param User $student
     * @param Requests\Validator $validatedRequest
     */
    private function saveDocuments(User $student, Requests\Validator $validatedRequest)
    {
        if($validatedRequest->file):
            $filesExceptImage = $validatedRequest->file('file');
            foreach($filesExceptImage as $file) {
                if($file):
                    $this->fileUpload($file,$student);
                endif;
            }
        endif;
    }

    /**
     * @param $file
     * @param $newlyCreatedUser
     */
    private function fileUpload($file, User $newlyCreatedUser)
    {
        $this->fileName = time().str_random(3).$file->getClientOriginalName();
        $this->extension = $file->getClientOriginalExtension();
        $destinationPath = public_path('uploads');
        $file->move($destinationPath, $this->fileName);
        $media = new Media();
        $media->name= $this->fileNameWithoutExtension($this->fileName);
        $media->extension = $this->extension;
        $media->user_id = $newlyCreatedUser->id;
        $newlyCreatedUser->files()->save($media);
    }

    /**
     * @param $image
     * @param User $newlyCreatedUser
     */
    private function imageUpload($image,User $newlyCreatedUser){

        $this->fileName = time().str_random(3).$image->getClientOriginalName();
        InterImage::make($image->getRealPath())->resize(200,200)->save('uploads/'. $this->fileName);
        $photo = new Photo();
        $photo->name= $this->fileName;
        $photo->user_id = $newlyCreatedUser->id;
        $newlyCreatedUser->photo()->save($photo);
    }

    /**
     * @param User $user
     * @param Requests\Validator $validatedRequest
     */
    private function saveExtraFields(User $user, Requests\Validator $validatedRequest)
    {
        $newFieldsForStudents = $user->getNewFieldsName('student');
        if(isset($newFieldsForStudents) && !empty($newFieldsForStudents)){
            foreach($newFieldsForStudents as $newStdField){
                $addNewFields = new AddFieldToTable();
                if($validatedRequest->{$newStdField})
                    $addNewFields->key= $newStdField;
                    $addNewFields->value = $validatedRequest->{$newStdField};
                    $user->addFieldsToTable()->save($addNewFields);
            }

        }

    }

    /**
     * get FileName without Extension
     * @param $fileName
     * @return string
     */
    private function fileNameWithoutExtension($fileName)
    {
        $ext = strtolower(substr($fileName, strrpos($fileName, '.') + 1));
        $fileNameWithoutExt =  basename($fileName,'.'.$ext); // output: "youFileName" only

        return $fileNameWithoutExt;
    }

    public function getStudentEditForm($id, StudentForm $studentForm)
    {
        $viewType = 'Edit Student';
        $editStudent = $studentForm;
        $studentProfile =$this->editFormModel($this->student->findOrFail($id)) ;
        //dd($studentProfile);

        return view('default.admin.students.edit',compact('studentProfile','viewType','editStudent'));
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewStudent($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $studentProfile = $this->student->with('gender','religion','photo', 'stClass')->find($id);
        $photo = $studentProfile->photo->last()->name;
        $studentData = $this->student->findOrFail($id);
        $guardianId = $studentData->guardian_id;
        $guardianData = $this->student->findOrFail($guardianId);
//        dd($studentProfile);

        return view('default.admin.students.view',compact('studentProfile', 'guardianData', 'locale','defaultLocale','photo'));
    }
    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return mixed
     */
    public function editStudent($id, Requests\Validator $validatedRequest)
    {
        $studentProfile = $this->student->findOrFail($id);
        $isOwnFieldsSaved = $this->ownFieldsToSave($studentProfile,$validatedRequest);
        $isTranslatedFieldsSaved = $this->translatedAttrToSave($studentProfile,$validatedRequest);
        $basicUserInfoArr =  [
            'user_id'=>$studentProfile->id,
            'updated_at'=>date('Y-m-d')
        ];

        if($isOwnFieldsSaved ){

            if($isTranslatedFieldsSaved){

                $this->saveStudentHistory(
                    $studentProfile,
                    $validatedRequest,
                    $basicUserInfoArr
                );

                $this->savePhoto(
                    $studentProfile,
                    $validatedRequest
                );

                $this->saveDocuments(
                    $studentProfile,
                    $validatedRequest
                );
                return back()->withSuccess('Successfully Updated');
            }
        }
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteStudent($id)
    {
        $studentToDelete = $this->student->findOrFail($id);
        if($studentToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }

    public function idCardPage()
    {
        $viewType = 'Get Student Id Card';
        return view('default.admin.students.student-id-card',compact('viewType'));
    }

    public function studentOfSection($sectionId, User $user, Section $section, Request $request)
    {
        $selectedSection = $section->findOrFail($sectionId);
        $studentForSection = $selectedSection->users;
        //dd($selectedSection);
        if( $request->ajax()){
            return response()->json( [$studentForSection]);
        }
    }

    public function studentIdCard($studentClassId, $sectionId, $studentId, User $user, StudentClass $studentClass, SiteInfo $siteInfo)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $siteId = request()->user()->site_id;
        $siteData = $siteInfo->findOrFail($siteId);
//        dd($siteData);
//        dd($siteData->site_name);

        $file_name = 'id_card.txt';
        $base_path = base_path('reports/default/en/');
        $studentData = $user->with('photos')->findOrFail($studentId);
        $guardianId = $studentData->guardian_id;
        $guardianData = $this->student->findOrFail($guardianId);
        $classData = $studentClass->findOrFail($studentClassId);
        //dd($classData->class_name);
        $studentData = $user->with('photos')->findOrFail($studentId);
        // $studentPhoto = \Html::image('imagecache/dummy/'.$studentData->photo->last()->name);
        $studentPhoto = "/imagecache/dummy/".$studentData->photo->last()->name;
        // dd($studentPhoto);
        $student_extra_data = array();
        $student_extra_data['guardian_first_name'] = $guardianData->first_name;
        $student_extra_data['guardian_last_name'] = $guardianData->last_name;
        $student_extra_data['class_name'] = $classData->class_name;
        $student_extra_data['site_name'] = $siteData->site_name;
        $student_extra_data['site_address'] = $siteData->address;
        $student_extra_data['studentPhoto'] = $studentPhoto;
        //dd($studentData);
        $rep_key = array("username","roll_no","first_name","last_name","guardian_first_name", "guardian_last_name", "phone", "class_name", "site_name", "site_address", "studentPhoto");
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

    public function admitCardPage()
    {
        $viewType = 'Get Admit Card';
        return view('default.admin.students.student-admit-card',compact('viewType'));
    }

    public function studentAdmitCard($examinationId, $studentClassId, $sectionId, $studentId, User $user, StudentClass $studentClass, Examination $examination, SiteInfo $siteInfo)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $siteId = request()->user()->site_id;
        $siteData = $siteInfo->findOrFail($siteId);
//        dd($siteData);

        $file_name = 'admit_card.txt';
        $base_path = base_path('reports/default/en/');

        $studentData = $user->with('photos')->findOrFail($studentId);
        // $studentPhoto = \Html::image('imagecache/dummy/'.$studentData->photo->last()->name);
        $studentPhoto = "/imagecache/dummy/".$studentData->photo->last()->name;
        // dd($studentPhoto);
        $classData = $studentClass->findOrFail($studentClassId);
        $examData = $examination->findOrFail($examinationId);
        //dd($examData->examination_name);
        //dd($classData->class_name);
        $student_extra_data = array();
        $student_extra_data['examination_name'] = $examData->examination_name;
        $student_extra_data['class_name'] = $classData->class_name;
        $student_extra_data['studentPhoto'] = $studentPhoto;
        $student_extra_data['site_name'] = $siteData->site_name;
        //dd($studentData);
        $rep_key = array("username","roll_no","first_name","last_name", "father_name", "mother_name" ,"examination_name", "phone", "class_name","studentPhoto", "site_name");
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

    public function testimonialPage()
    {
        $viewType = 'Get Testimonial';
        return view('default.admin.students.testimonial',compact('viewType'));
    }

    public function studentTestimonial($studentClassId, $sectionId, $studentId, User $user, StudentClass $studentClass, SiteInfo $siteInfo)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $siteId = request()->user()->site_id;
        $siteData = $siteInfo->findOrFail($siteId);
//        dd($siteData);

        $file_name = 'testimonial.txt';
        $base_path = base_path('reports/default/en/');
        $studentData = $user->with('photos')->findOrFail($studentId);
        $guardianId = $studentData->guardian_id;
        $guardianData = $this->student->findOrFail($guardianId);
        $classData = $studentClass->findOrFail($studentClassId);
        //dd($classData->class_name);
        $today = \Carbon\Carbon::now()->format('Y-m-d');
        $student_extra_data = array();
        $student_extra_data['guardian_first_name'] = $guardianData->first_name;
        $student_extra_data['guardian_last_name'] = $guardianData->last_name;
        $student_extra_data['student_address'] = $studentData->address;
        $student_extra_data['class_name'] = $classData->class_name;
        $student_extra_data['site_name'] = $siteData->site_name;
        $student_extra_data['site_address'] = $siteData->address;
        $student_extra_data['site_email'] = $siteData->site_email;
        $student_extra_data['site_phone'] = $siteData->site_phone;
        $student_extra_data['today'] = $today;
        //dd($studentData);
        $rep_key = array("username","roll_no","first_name","last_name","father_name", "mother_name", "birthday", "phone", "class_name", "today", "student_address","site_name", "site_address", "site_email", "site_phone");
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

    public function tcPage()
    {
        $viewType = 'Get TC';
        return view('default.admin.students.tc',compact('viewType'));
    }

    public function studentTc($applicationSubject, $studentClassId, $sectionId, $studentId, User $user, StudentClass $studentClass)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $file_name = 'tc.txt';
        $base_path = base_path('reports/default/en/');
        $studentData = $user->with('photos')->findOrFail($studentId);
        $guardianId = $studentData->guardian_id;
        $guardianData = $this->student->findOrFail($guardianId);
        $classData = $studentClass->findOrFail($studentClassId);
        //dd($classData->class_name);
        $today = \Carbon\Carbon::now()->format('Y-m-d');
        $student_extra_data = array();
        $student_extra_data['guardian_first_name'] = $guardianData->first_name;
        $student_extra_data['guardian_last_name'] = $guardianData->last_name;
        $student_extra_data['class_name'] = $classData->class_name;
        $student_extra_data['today'] = $today;
        $student_extra_data['application_subject'] = $applicationSubject;
        //dd($studentData);
        $rep_key = array("username","roll_no","first_name","last_name","father_name", "mother_name", "address" ,"birthday", "phone", "class_name", "today", "application_subject");
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

    public function clearancePage()
    {
        $viewType = 'Get Clearance';
        return view('default.admin.students.clearance',compact('viewType'));
    }

    public function studentClearance($studentClassId, $sectionId, $studentId, User $user, StudentClass $studentClass)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $file_name = 'clearance.txt';
        $base_path = base_path('reports/default/en/');
        $studentData = $user->with('photos')->findOrFail($studentId);
        $guardianId = $studentData->guardian_id;
        $guardianData = $this->student->findOrFail($guardianId);
        $classData = $studentClass->findOrFail($studentClassId);
        //dd($classData->class_name);
        $today = \Carbon\Carbon::now()->format('Y-m-d');
        $student_extra_data = array();
        $student_extra_data['guardian_first_name'] = $guardianData->first_name;
        $student_extra_data['guardian_last_name'] = $guardianData->last_name;
        $student_extra_data['class_name'] = $classData->class_name;
        $student_extra_data['today'] = $today;
        //dd($studentData);
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

    public function certificationPage()
    {
        $viewType = 'Get Certification';
        return view('default.admin.students.certification',compact('viewType'));
    }

    public function studentCertification($studentClassId, $sectionId, $studentId, User $user, StudentClass $studentClass, SiteInfo $siteInfo)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $siteId = request()->user()->site_id;
        $siteData = $siteInfo->findOrFail($siteId);

        $file_name = 'certification.txt';
        $base_path = base_path('reports/default/en/');
        $studentData = $user->with('photos')->findOrFail($studentId);
        $guardianId = $studentData->guardian_id;
        $guardianData = $this->student->findOrFail($guardianId);
        $classData = $studentClass->findOrFail($studentClassId);
        //dd($classData->class_name);
        $today = \Carbon\Carbon::now()->format('Y-m-d');
        $student_extra_data = array();
        $student_extra_data['guardian_first_name'] = $guardianData->first_name;
        $student_extra_data['guardian_last_name'] = $guardianData->last_name;
        $student_extra_data['class_name'] = $classData->class_name;
        $student_extra_data['site_name'] = $siteData->site_name;
        $student_extra_data['site_address'] = $siteData->address;
        $student_extra_data['today'] = $today;
        //dd($studentData);
        $rep_key = array("username","roll_no","first_name","last_name","father_name", "mother_name", "address" ,"birthday", "phone", "class_name", "today", "site_name", "site_address");
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
