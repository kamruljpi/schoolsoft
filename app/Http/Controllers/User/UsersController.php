<?php

namespace Erp\Http\Controllers\User;

use Erp\Forms\DataHelper;
use Erp\Forms\FormControll;
use Erp\Forms\UserForm;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Lists\ListControll;
use Erp\Lists\UserList;
use Erp\Models\AddFieldTable\AddFieldToTable;
use Erp\Models\Email\Email;
use Erp\Models\Image\Photo;
use Erp\Models\Media\Media;
use Erp\Models\Password\Password;
use Erp\Models\Role\Role;
use Erp\Models\User\EmployeeHistory;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;
use Erp\Models\User\User;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Session;
use Erp\Http\Requests\Validator;
use Intervention\Image\Facades\Image as InterImage;

class UsersController extends ProjectController
{
    use Lang, FormControll, DataHelper ;

    private $user;
    private $fileName;
    private $extension;


    /**
     * UsersController constructor.
     * @param User $user
     */
    public function __construct(User $user)
    {

        $this->middleware('auth');

        $this->user = $user;

    }

    /**
     * $userList and $dataArr from  Erp\Lists\UserList containing the array and the model to pass
     * for creating dynamic lists
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(UserList $list)
    {
        $usersList =$list;
        $model = $this->user;
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $users = $this->user->paginate(20);
        $usersWithPhotos = array();
        foreach($users as $user){

            if( !$user->hasRole('Teacher')
                && !$user->hasRole('Student')
                && !$user->hasRole('Guardian')
                && count($user->photos)>0)

                $usersWithPhotos[$user->photos->last()->name] = $user;
        }
        $viewType = 'Employee List';

        return view('default.admin.users.index',compact('users','locale','defaultLocale','viewType','usersList','model','usersWithPhotos'));
    }

    /**
     * @param UserForm $userForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createUserForm(UserForm $userForm)
    {
        $viewType = 'Create Employee';
        $createUser = $userForm;
        return view('default.admin.users.create',compact('viewType','createUser'));
    }

    /**
     * @param Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createUser( Validator $validatedRequest)
    {
        $allUsers = $this->user;
        $isOwnFieldsSaved = $this->ownFieldsToSave($allUsers,$validatedRequest);
        $isTranslatedFieldsSaved = $this->translatedAttrToSave($allUsers,$validatedRequest);



        if($isOwnFieldsSaved && $isTranslatedFieldsSaved){

//                $newlyCreatedUser = $this->newlyCreatedUser($allUsers);
                $newlyCreatedUser = $isOwnFieldsSaved;
                $basicUserInfoArr =  [
                    'user_id'=>$newlyCreatedUser->id,
                    'created_at'=>date('Y-m-d')
                ];

                $this->setRole(
                    $newlyCreatedUser,
                    $validatedRequest
                );


                $this->saveEmployeeHistory(
                    $newlyCreatedUser,
                    $validatedRequest,
                    $basicUserInfoArr
                );

                $this->saveBankAccounts(
                    $newlyCreatedUser,
                    $validatedRequest,
                    $basicUserInfoArr
                );

                $this->saveUserSalary(
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
     * @param User $user
     * @param Validator $validatedRequest
     * @return bool
     */
    private function ownFieldsToSave(User $user, Validator $validatedRequest)
    {
        if(isset($user->ownFields)){
            foreach($user->ownFields as $ownField){
                if($validatedRequest->{$ownField})
                    $user->{$ownField} = $validatedRequest->{$ownField} ;
            }
        }

        $this->passwordToSave($user,$validatedRequest);

        if($user->save()){

            return $user;
        }

        return false;
    }

    /**
     * @param User $user
     * @param Validator $validatedRequest
     */
    private function passwordToSave(User $user, Validator $validatedRequest)
    {
        if($validatedRequest->password){

            $user->password = bcrypt($validatedRequest->get('password'));
        }
    }

    /**
     * @param User $user
     * @param Validator $validatedRequest
     * @return bool
     */
    private function translatedAttrToSave(User $user, Validator $validatedRequest)
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
     * @param User $user
     * @return mixed
     */
    private function newlyCreatedUser(User $user)
    {
         $newlyCreatedUser = $user->all()->last();

        return $newlyCreatedUser;
    }

    /**
     * @param User $user
     * @param Validator $validatedRequest
     */
    private function setRole(User $user, Validator $validatedRequest)
    {

        if($validatedRequest->role){
            $roleId = $validatedRequest->role;
            $user->roles()->attach($roleId);
        }
    }

    /**
     * @param User $user
     * @param Validator $validatedRequest
     * @param array $employeeHistory
     */
    private function saveEmployeeHistory(User $user, Validator $validatedRequest,array $employeeHistory = [])
    {
        $countArr = count($employeeHistory);

        if(isset($user->employeeHistoryFields)){
            foreach($user->employeeHistoryFields as $employeeHistoryField){
                if($validatedRequest->{$employeeHistoryField})
                    $employeeHistory[$employeeHistoryField] =$validatedRequest->{$employeeHistoryField};
            }
        }
//dd($employeeHistory);
        if(count($employeeHistory)>$countArr){
            $user->employeeHistories()->create($employeeHistory);
        }
    }

    /**
     * @param User $user
     * @param Validator $validatedRequest
     * @param array $bankAccount
     */
    private function saveBankAccounts(User $user, Validator $validatedRequest,array $bankAccount = [])
    {
        $countArr = count($bankAccount);

        if(isset($user->bankAccountFields)){
            foreach($user->bankAccountFields as $bankAccountField){
                if($validatedRequest->{$bankAccountField})
                    $bankAccount[$bankAccountField] =$validatedRequest->{$bankAccountField};
            }
        }
        if(count($bankAccount)>$countArr){
            $user->bankAccounts()->create($bankAccount);
        }
    }

    /**
     * @param User $user
     * @param Validator $validatedRequest
     * @param array $userSalary
     */
    private function saveUserSalary(User $user, Validator $validatedRequest,array $userSalary =[])
    {
        $countArr = count($userSalary);

        if(isset($user->userSalaryFields)){
            foreach($user->userSalaryFields as $userSalaryField){
                if($validatedRequest->{$userSalaryField})
                    $userSalary[$userSalaryField] =$validatedRequest->{$userSalaryField};
            }
        }
        if(count($userSalary)>$countArr){
            $user->userSalaries()->create($userSalary);
        }
    }

    /**
     * @param User $user
     * @param Validator $validatedRequest
     */
    private function savePhoto(User $user, Validator $validatedRequest)
    {
        if($validatedRequest->photo):
            $image = $validatedRequest->file('photo');
            $this->imageUpload($image,$user);
        endif;
    }

    /**
     * @param User $user
     * @param Validator $validatedRequest
     */
    private function saveDocuments(User $user, Validator $validatedRequest)
    {
        if($validatedRequest->file):
            $filesExceptImage = $validatedRequest->file('file');
            foreach($filesExceptImage as $file) {
                if($file):
                    $this->fileUpload($file,$user);
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
     * Upload Image
     * @param $file
     * @param $newlyCreatedUser
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
        $newFieldsForUsers = $user->getNewFieldsName('user');
        if(isset($newFieldsForUsers) && !empty($newFieldsForUsers)){
            foreach($newFieldsForUsers as $newUserField){
                $addNewFields = new AddFieldToTable();
                if($validatedRequest->{$newUserField})
                    $addNewFields->key= $newUserField;
                $addNewFields->value = $validatedRequest->{$newUserField};
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

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewUser($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $userProfile = $this->user->findOrFail($id);
        $photo = $userProfile->photo->last()->name;
//dd($photo);
        return view('default.admin.users.view',compact('userProfile','locale','defaultLocale','photo'));

    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function editUserForm($id,UserForm $userForm)
    {
        $viewType = 'Edit User';
        $editUser = $userForm;
        $userProfile =$this->editFormModel($this->user->findOrFail($id)) ;

        return view('default.admin.users.edit',compact('userProfile','viewType','editUser'));
    }


    /**
     * @patch edit user
     * @param $id
     * @param Validator $validatedRequest
     */
    public function editUser($id, Validator $validatedRequest)
    {

        $userProfile = $this->user->findOrFail($id);
        $isOwnFieldsSaved = $this->ownFieldsToSave($userProfile,$validatedRequest);
        $isTranslatedFieldsSaved = $this->translatedAttrToSave($userProfile,$validatedRequest);
        $basicUserInfoArr =  [
            'user_id'=>$userProfile->id,
            'updated_at'=>date('Y-m-d')
        ];


        if($isOwnFieldsSaved){

            if($isTranslatedFieldsSaved){

                $this->setRole(
                    $userProfile,
                    $validatedRequest
                );
                $this->saveEmployeeHistory(
                    $userProfile,
                    $validatedRequest,
                    $basicUserInfoArr
                );

                $this->saveBankAccounts(
                    $userProfile,
                    $validatedRequest,
                    $basicUserInfoArr
                );

                $this->saveUserSalary(
                    $userProfile,
                    $validatedRequest,
                    $basicUserInfoArr
                );

                $this->savePhoto(
                    $userProfile,
                    $validatedRequest
                );

                $this->saveDocuments(
                    $userProfile,
                    $validatedRequest
                );
                return back()->withSuccess('Successfully Updated');
            }
        }


    }

    /**
     * @param $id
     * @return $this|\Illuminate\Http\RedirectResponse
     */
    public function deleteUser($id)
    {
        $userToDelete = $this->user->findOrFail($id);
        if($userToDelete->delete()):
            return back();
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }




}
