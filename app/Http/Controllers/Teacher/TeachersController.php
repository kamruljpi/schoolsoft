<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 4/23/2016
 * Time: 4:43 PM
 */
namespace Erp\Http\Controllers\Teacher;

use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Controller;
use Erp\Forms\FormControll;
use Erp\Forms\TeacherForm;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\AddFieldTable\AddFieldToTable;
use Erp\Models\Email\Email;
use Erp\Models\Image\Photo;
use Erp\Models\Media\Media;
use Erp\Models\Password\Password;
use Erp\Models\Role\Role;
use Erp\Models\User\User;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Session;
use Erp\Http\Requests\Validator;
use Intervention\Image\Facades\Image as InterImage;

class TeachersController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $teacher;
    private $fileName;
    private $extension;

    public function __construct(User $teacher)
    {

        $this->middleware('auth');

        $this->teacher = $teacher;
    }

    public function index(Role $role)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $roleId = $this->role('Teacher');
        $roleOfTeacher = $role->findOrFail($roleId);
        $teacherList = $roleOfTeacher->users()->paginate(20);
        //dd($roleOfTeacher->users);
        $teachersWithPhotos = array();
        foreach($teacherList as $teacher){

            if( count($teacher->photos)>0)

                $teachersWithPhotos[$teacher->photos->last()->name] = $teacher;
        }
        //dd($teachersWithPhotos);

        $viewType = 'Teacher List';

        return view('default.admin.teacher.index', compact('teacherList', 'locale', 'defaultLocale', 'teachersWithPhotos', 'viewType'));

    }
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createTeacherForm()
    {
        $viewType = 'Create Teacher';

        return view('default.admin.teacher.create',compact('viewType'));
    }

    /**
     * @param Validator $validatedRequest
     */
    public function createTeacher(Validator $validatedRequest)
    {

        $allTeachers = $this->teacher;
        $isOwnFieldsSaved = $this->ownFieldsToSave($allTeachers,$validatedRequest);
        $isTranslatedFieldsSaved = $this->translatedAttrToSave($allTeachers,$validatedRequest);

        if($isOwnFieldsSaved && $isTranslatedFieldsSaved){

                $newlyCreatedTeacher = $isOwnFieldsSaved;
                $basicTeacherInfoArr =  [
                    'user_id'=>$newlyCreatedTeacher->id,
                    'created_at'=>date('Y-m-d')
                ];

                $this->setRole(
                    $newlyCreatedTeacher,
                    $validatedRequest
                );


                $this->saveEmployeeHistory(
                    $newlyCreatedTeacher,
                    $validatedRequest,
                    $basicTeacherInfoArr
                );

                $this->saveBankAccounts(
                    $newlyCreatedTeacher,
                    $validatedRequest,
                    $basicTeacherInfoArr
                );

                $this->saveTeacherSalary(
                    $newlyCreatedTeacher,
                    $validatedRequest,
                    $basicTeacherInfoArr
                );

                $this->savePhoto(
                    $newlyCreatedTeacher,
                    $validatedRequest
                );

                $this->saveDocuments(
                    $newlyCreatedTeacher,
                    $validatedRequest
                );
                $this->saveExtraFields(
                    $newlyCreatedTeacher,
                    $validatedRequest
                );


                return back()->withSuccess('Successfully Created');
        }
    }

    /**
     * @param User $teacher
     * @param Validator $validatedRequest
     * @return bool|User
     */
    private function ownFieldsToSave(User $teacher, Validator $validatedRequest)
    {
        if(isset($teacher->ownFields)){
            foreach($teacher->ownFields as $ownField){
                if($validatedRequest->{$ownField})
                    $teacher->{$ownField} = $validatedRequest->{$ownField} ;
            }
        }

        $this->passwordToSave($teacher,$validatedRequest);

        if($teacher->save()){

            return $teacher;
        }

        return false;
    }

    private function passwordToSave(User $teacher, Validator $validatedRequest)
    {
        if($validatedRequest->password){

            $teacher->password = bcrypt($validatedRequest->get('password'));
        }
    }

    /**
     * @param Teacher $teacher
     * @param Validator $validatedRequest
     * @return bool
     */
    private function translatedAttrToSave(User $teacher, Validator $validatedRequest)
    {
        foreach ($teacher->translatedAttributes as $field) {
            foreach($this->locales() as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $teacher->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }

        if($teacher->save()){

            return true;
        }
        return false;
    }

    /**
     * @param Teacher $teacher
     * @return mixed
     */
    private function newlyCreatedTeacher(User $teacher)
    {
        $newlyCreatedTeacher = $teacher->all()->last();

        return $newlyCreatedTeacher;
    }

    /**
     * @param Teacher $teacher
     * @param Validator $validatedRequest
     */
    private function setRole(User $teacher, Validator $validatedRequest)
    {
        if($validatedRequest->role){
            $roleId = $validatedRequest->role;
            $teacher->roles()->attach($roleId);
        }
    }

    /**
     * @param Teacher $teacher
     * @param Validator $validatedRequest
     * @param array $employeeHistory
     */
    private function saveEmployeeHistory(User $teacher, Validator $validatedRequest,array $employeeHistory = [])
    {
        $countArr = count($employeeHistory);

        if(isset($teacher->employeeHistoryFields)){
            foreach($teacher->employeeHistoryFields as $employeeHistoryField){
                if($validatedRequest->{$employeeHistoryField})
                    $employeeHistory[$employeeHistoryField] =$validatedRequest->{$employeeHistoryField};
            }
        }

        if(count($employeeHistory)>$countArr){
            $teacher->employeeHistories()->create($employeeHistory);
        }
    }

    /**
     * @param Teacher $teacher
     * @param Validator $validatedRequest
     * @param array $bankAccount
     */
    private function saveBankAccounts(User $teacher, Validator $validatedRequest,array $bankAccount = [])
    {
        $countArr = count($bankAccount);

        if(isset($teacher->bankAccountFields)){
            foreach($teacher->bankAccountFields as $bankAccountField){
                if($validatedRequest->{$bankAccountField})
                    $bankAccount[$bankAccountField] =$validatedRequest->{$bankAccountField};
            }
        }
        if(count($bankAccount)>$countArr){
            $teacher->bankAccounts()->create($bankAccount);
        }
    }

    /**
     * @param Teacher $teacher
     * @param Validator $validatedRequest
     * @param array $teacherSalary
     */
    private function saveTeacherSalary(User $teacher, Validator $validatedRequest,array $teacherSalary =[])
    {
        $countArr = count($teacherSalary);

        if(isset($teacher->userSalaryFields)){
            foreach($teacher->userSalaryFields as $teacherSalaryField){
                if($validatedRequest->{$teacherSalaryField})
                    $teacherSalary[$teacherSalaryField] =$validatedRequest->{$teacherSalaryField};
            }
        }
        if(count($teacherSalary)>$countArr){
            $teacher->userSalaries()->create($teacherSalary);
        }
    }

    /**
     * @param Teacher $teacher
     * @param Validator $validatedRequest
     */
    private function savePhoto(User $teacher, Validator $validatedRequest)
    {
        if($validatedRequest->photo):
            $image = $validatedRequest->file('photo');
            $this->imageUpload($image,$teacher);
        endif;
    }

    /**
     * @param Teacher $teacher
     * @param Validator $validatedRequest
     */
    private function saveDocuments(User $teacher, Validator $validatedRequest)
    {
        if($validatedRequest->file):
            $filesExceptImage = $validatedRequest->file('file');
            foreach($filesExceptImage as $file) {
                if($file):
                    $this->fileUpload($file,$teacher);
                endif;
            }
        endif;
    }

    /**
     * @param $file
     * @param Teacher $newlyCreatedTeacher
     */
    private function fileUpload($file, User $newlyCreatedTeacher)
    {
        $this->fileName = time().str_random(3).$file->getClientOriginalName();
        $this->extension = $file->getClientOriginalExtension();
        $destinationPath = public_path('uploads');
        $file->move($destinationPath, $this->fileName);
        $media = new Media();
        $media->name= $this->fileNameWithoutExtension($this->fileName);
        $media->extension = $this->extension;
        $media->user_id = $newlyCreatedTeacher->id;
        $newlyCreatedTeacher->files()->save($media);
    }

    /**
     * @param $image
     * @param Teacher $newlyCreatedTeacher
     */
    private function imageUpload($image, User $newlyCreatedTeacher){

        $this->fileName = time().str_random(3).$image->getClientOriginalName();
        InterImage::make($image->getRealPath())->resize(200,200)->save('uploads/'. $this->fileName);
        $photo = new Photo();
        $photo->name= $this->fileName;
        $photo->user_id = $newlyCreatedTeacher->id;
        $newlyCreatedTeacher->photo()->save($photo);
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

    /**
     * @param $id
     * @param TeacherForm $teacherForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function editTeacherForm($id,TeacherForm $teacherForm)
    {
        $viewType = 'Edit Teacher';
        $editTeacher = $teacherForm;
        $teacherProfile =$this->editFormModel($this->teacher->findOrFail($id)) ;
        //dd($teacherProfile);

        return view('default.admin.teacher.edit',compact('teacherProfile','viewType','editTeacher'));
    }

    /**
     * @param User $user
     * @param Requests\Validator $validatedRequest
     */
    private function saveExtraFields(User $user, Requests\Validator $validatedRequest)
    {
        $newFieldsForTeachers = $user->getNewFieldsName('teacher');
        if(isset($newFieldsForTeachers) && !empty($newFieldsForTeachers)){
            foreach($newFieldsForTeachers as $newTeacherField){
                $addNewFields = new AddFieldToTable();
                if($validatedRequest->{$newTeacherField})
                    $addNewFields->key= $newTeacherField;
                $addNewFields->value = $validatedRequest->{$newTeacherField};
                $user->addFieldsToTable()->save($addNewFields);
            }

        }

    }

    /**
     * @param $id
     * @param Validator $validatedRequest
     * @return mixed
     */
    public function editTeacher($id, Validator $validatedRequest)
    {

        $teacherProfile = $this->teacher->findOrFail($id);
        $isOwnFieldsSaved = $this->ownFieldsToSave($teacherProfile,$validatedRequest);
        $isTranslatedFieldsSaved = $this->translatedAttrToSave($teacherProfile,$validatedRequest);
        $basicUserInfoArr =  [
            'user_id'=>$teacherProfile->id,
            'updated_at'=>date('Y-m-d')
        ];


        if($isOwnFieldsSaved ){

            if($isTranslatedFieldsSaved){


                $this->saveEmployeeHistory(
                    $teacherProfile,
                    $validatedRequest,
                    $basicUserInfoArr
                );

                $this->saveBankAccounts(
                    $teacherProfile,
                    $validatedRequest,
                    $basicUserInfoArr
                );

                $this->saveTeacherSalary(
                    $teacherProfile,
                    $validatedRequest,
                    $basicUserInfoArr
                );

                $this->savePhoto(
                    $teacherProfile,
                    $validatedRequest
                );

                $this->saveDocuments(
                    $teacherProfile,
                    $validatedRequest
                );
                return back()->withSuccess('Successfully Updated');
            }
        }


    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewTeacher($id)
    {

        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $teacherProfile = $this->teacher->with('gender','religion','photo', 'designation')->findOrFail($id);
        $photo = $teacherProfile->photo->last()->name;
//        dd($teacherProfile);

        return view('default.admin.teacher.view',compact('teacherProfile', 'locale','defaultLocale','photo'));
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteTeacher($id)
    {
        $teacherToDelete = $this->teacher->findOrFail($id);
        if($teacherToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}