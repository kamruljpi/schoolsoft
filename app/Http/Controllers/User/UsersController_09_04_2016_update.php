<?php

namespace Erp\Http\Controllers\User;

use Erp\Forms\FormControll;
use Erp\Forms\UserForm;
use Erp\Http\Controllers\Language\Lang;
use Erp\Lists\ListControll;
use Erp\Lists\UserList;
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

class UsersController extends Controller
{
    use Lang, FormControll ;

    private $user;
    private $fileName;
    private $extension;


    /**
     * UsersController constructor.
     * @param User $user
     */
    public function __construct(User $user)
    {

//        $this->middleware('login');
        $this->middleware('prevReq');
        $this->middleware('auth');
        $this->middleware('role:superadmin');
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
//        $usersList = $list->tbodyValues($this->user);
//        $dataArr = $list->dataArr;
        /*for datatable*/
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $users = $this->user->all();
//        dd($users);
        $usersWithPhotos = array();
        foreach($users as $user){

            if( count($user->photos)>0)

                $usersWithPhotos[$user->photos->last()->name] = $user;
        }
//        dd($usersWithPhotos);
        /*for datatable*/
        $viewType = 'User List';

        return view('default.admin.users.index',compact('users','locale','defaultLocale','viewType','usersList','model','usersWithPhotos'));
    }

    /**
     * @param Request $request
     * @return $this
     */
    public function createUserForm(UserForm $userForm)
    {
        $viewType = 'Create User';
        $createUser = $userForm;
        return view('default.admin.users.create',compact('viewType','createUser'));
    }

    /**
     * @param Email $email
     * @param Password $password
     * @param Validator $validatedRequest
     * @param Role $role
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createUser( Validator $validatedRequest,Email $email,Password $password, EmployeeHistory $employeeHistory)
    {

        if(isset($this->user->ownFields)){
            foreach($this->user->ownFields as $ownField){
                if($validatedRequest->{$ownField})
                    $this->user->{$ownField} = $validatedRequest->{$ownField} ;
            }
        }
        if($validatedRequest->password){

            $this->user->password = bcrypt($validatedRequest->get('password'));
        }

        if( $this->user->save()){
            foreach ($this->user->translatedAttributes as $field) {
                foreach($this->locales() as $locale => $value){
                    if($validatedRequest->get($field.'_'.$locale)){
                        $this->user->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                    }
                }
            }
            if($this->user->save()){
                $newlyCreatedUser =$this->user->all()->last();

                if($validatedRequest->role){
                    $roleId = $validatedRequest->role;
                    $newlyCreatedUser->roles()->attach($roleId);
                }

                $employeeHistory = ['user_id'=>$newlyCreatedUser->id,'created_at'=>date('Y-m-d')];

                if(isset($newlyCreatedUser->employeeHistoryFields)){
                    foreach($newlyCreatedUser->employeeHistoryFields as $employeeHistoryField){
                        if($validatedRequest->{$employeeHistoryField})
                            $employeeHistory[$employeeHistoryField] =$validatedRequest->{$employeeHistoryField};
                    }
                }

                if(count($employeeHistory)>2){
                    $newlyCreatedUser->employeeHistories()->create($employeeHistory);
                }


                $bankAccount = ['user_id'=>$newlyCreatedUser->id,'created_at'=>date('Y-m-d')];
                if(isset($newlyCreatedUser->bankAccountFields)){
                    foreach($newlyCreatedUser->bankAccountFields as $bankAccountField){
                        if($validatedRequest->{$bankAccountField})
                            $bankAccount[$bankAccountField] =$validatedRequest->{$bankAccountField};
                    }
                }
                if(count($bankAccount)>2){
                    $newlyCreatedUser->bankAccounts()->create($bankAccount);
                }

                $userSalary = ['user_id'=>$newlyCreatedUser->id,'created_at'=>date('Y-m-d')];

                if(isset($newlyCreatedUser->userSalaryFields)){
                    foreach($newlyCreatedUser->userSalaryFields as $userSalaryField){
                        if($validatedRequest->{$userSalaryField})
                            $userSalary[$userSalaryField] =$validatedRequest->{$userSalaryField};
                    }
                }
                if(count($userSalary)>2){
                    $newlyCreatedUser->userSalaries()->create($userSalary);
                }

                if($validatedRequest->photo):
                    $image = $validatedRequest->file('photo');
                    $this->imageUpload($image,$newlyCreatedUser);
                endif;
                if($validatedRequest->file):
                    $filesExceptImage = $validatedRequest->file('file');
                    foreach($filesExceptImage as $file) {
                        if($file):
                            $this->fileUpload($file,$newlyCreatedUser);
                        endif;
                    }
                endif;

            }
        }

        return back()->withSuccess('Successfully Created');
        
    }


    private function fileUpload($file, $newlyCreatedUser)
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
    private function imageUpload($image,$newlyCreatedUser){

        $this->fileName = time().str_random(3).$image->getClientOriginalName();
        InterImage::make($image->getRealPath())->resize(200,200)->save('uploads/'. $this->fileName);
        $photo = new Photo();
        $photo->name= $this->fileName;
        $photo->user_id = $newlyCreatedUser->id;
        $newlyCreatedUser->photo()->save($photo);
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

        return view('default.admin.users.view',compact('userProfile','locale','defaultLocale'));

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
    public function editUser($id, Validator $validatedRequest,Email $email,Password $password, EmployeeHistory $employeeHistory)
    {

        $userProfile = $this->user->findOrFail($id);

        if(isset($userProfile->ownFields)){
            foreach($userProfile->ownFields as $ownField){
                if($validatedRequest->{$ownField})
                    $userProfile->{$ownField} = $validatedRequest->{$ownField} ;
            }
        }
        if($validatedRequest->password){

            $userProfile->password = bcrypt($validatedRequest->get('password'));
        }


        if( $userProfile->save()){
            foreach ($userProfile->translatedAttributes as $field) {
                foreach($this->locales() as $locale => $value){
                    if($validatedRequest->get($field.'_'.$locale)){
                        $userProfile->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                    }
                }
            }
            if($userProfile->save()){

                $employeeHistory = ['user_id'=>$id,'updated_at'=>date('Y-m-d')];

                if(isset($userProfile->employeeHistoryFields)){
                    foreach($userProfile->employeeHistoryFields as $employeeHistoryField){
                        if($validatedRequest->{$employeeHistoryField})
                            $employeeHistory[$employeeHistoryField] =$validatedRequest->{$employeeHistoryField};
                    }
                }

                if(count($employeeHistory)>2){
                    $userProfile->employeeHistories()->create($employeeHistory);
                }


                $bankAccount = ['user_id'=>$id,'updated_at'=>date('Y-m-d')];
                if(isset($userProfile->bankAccountFields)){
                    foreach($userProfile->bankAccountFields as $bankAccountField){
                        if($validatedRequest->{$bankAccountField})
                            $bankAccount[$bankAccountField] =$validatedRequest->{$bankAccountField};
                    }
                }
                if(count($bankAccount)>2){
                    $userProfile->bankAccounts()->create($bankAccount);
                }



                $userSalary = ['user_id'=>$id,'updated_at'=>date('Y-m-d')];

                if(isset($userProfile->userSalaryFields)){
                    foreach($userProfile->userSalaryFields as $userSalaryField){
                        if($validatedRequest->{$userSalaryField})
                            $userSalary[$userSalaryField] = $validatedRequest->{$userSalaryField};
                    }
                }

                if(count($userSalary)>2){
                    $userProfile->userSalaries()->create($userSalary);
                }


                if($validatedRequest->photo):
                    $image = $validatedRequest->file('photo');
                    $this->imageUpload($image,$userProfile);
                endif;
                if($validatedRequest->file):
                    $filesExceptImage = $validatedRequest->file('file');
                    foreach($filesExceptImage as $file) {
                        if($file):
                            $this->fileUpload($file,$userProfile);
                        endif;
                    }
                endif;
            }
        }

        return back()->withSuccess('Successfully Updated');
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
