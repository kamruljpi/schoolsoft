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

        $user = $this->user;

        $user->{$user::USER_NAME} = $validatedRequest->{$user::USER_NAME};
        $user->{$user::EMPLOYEE_ID} = $validatedRequest->{$user::EMPLOYEE_ID};
        $user->{$user::GENDER} = $validatedRequest->{$user::GENDER};
        $user->{$user::RELIGION} = $validatedRequest->{$user::RELIGION};
        $user->{$user::DEPARTMENT} = $validatedRequest->{$user::DEPARTMENT};
        $user->{$user::DESIGNATION} = $validatedRequest->{$user::DESIGNATION};
        $user->{$user::DETP_JOIN_DATE} = $validatedRequest->{$user::DETP_JOIN_DATE};
        $user->{$user::PHONE} = $validatedRequest->{$user::PHONE};
        $user->{$user::PASSWORD} = $validatedRequest->{$user::PASSWORD};
        $user->{$user::EMAIL} = $validatedRequest->{$user::EMAIL};
        $user->{$user::BIRTHDAY} = $validatedRequest->{$user::BIRTHDAY};
        $user->{$user::SHIFT} = $validatedRequest->{$user::SHIFT};


        if( $user->save()){
            foreach ($user->translatedAttributes as $field) {
                foreach($this->locales() as $locale => $value){
                    if($validatedRequest->get($field.'_'.$locale)){
                        $user->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                    }
                }
            }
            if($user->save()){
                $newlyCreatedUser =$user->all()->last();
                $email->{$email::EMAIL} = $validatedRequest->get($email::EMAIL);

                if($validatedRequest->role){
                    $roleId = $validatedRequest->role;
                    $newlyCreatedUser->roles()->attach($roleId);
                }

                $newlyCreatedUser->emails()->save($email);

                $newlyCreatedUser->passwords()->create([
                    'user_id'=>$this->user->id,
                    'password'=>$this->user->password
                ]);

                $newlyCreatedUser->employeeHistories()->create([
                    'user_id'=>$this->user->id,
                    'department_id'=>$this->user->department_id,
                    'designation_id'=>$this->user->designation_id,
                    'dept_join_date'=>$this->user->dept_join_date,
                    'shift_id'=>$this->user->shift_id,
                    'created_at'=>date('Y-m-d')
                ]);

                $newlyCreatedUser->bankAccounts()->create([
                    'user_id'=>$this->user->id,
                    'account_no'=>$validatedRequest->account_no,
                    'bank_name'=>$validatedRequest->bank_name,
                    'ifsc_code'=>$validatedRequest->ifsc_code,
                    'pan_no'=>$validatedRequest->pan_no,
                    'branch'=>$validatedRequest->branch,
                    'status'=>'Active',
                    'position'=>1

                ]);
                $newlyCreatedUser->userSalaries()->create([

                    'user_id' => $this->user->id,
                    'basic' => $validatedRequest->basic,
                    'salary_rule_id'=>$validatedRequest->salary_rule_id,
                    'overtime_rule_id'=>$validatedRequest->overtime_rule_id,
                    'salary_cut_rule_id'=>$validatedRequest->salary_cut_rule_id,
                    'bonus_rule_id' => $validatedRequest->bonus_rule_id


                ]);
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

        $userProfile->{$userProfile::USER_NAME} = $validatedRequest->{$userProfile::USER_NAME};
        $userProfile->{$userProfile::EMPLOYEE_ID} = $validatedRequest->{$userProfile::EMPLOYEE_ID};
        $userProfile->gender_id = $validatedRequest->get('gender_id');
        $userProfile->religion_id = $validatedRequest->get('religion_id');
        $userProfile->department_id = $validatedRequest->get('department_id');
        $userProfile->designation_id = $validatedRequest->get('designation_id');
        $userProfile->phone = $validatedRequest->get('phone');
        $userProfile->password = bcrypt($validatedRequest->get('password'));
        $userProfile->email = $validatedRequest->get('email');
        $userProfile->dept_join_date = $validatedRequest->get('dept_join_date');
        $userProfile->birthday = $validatedRequest->get('birthday');
        $userProfile->shift_id =$validatedRequest->shift_id;


        if( $userProfile->save()){
            foreach ($userProfile->translatedAttributes as $field) {
                foreach($this->locales() as $locale => $value){
                    if($validatedRequest->get($field.'_'.$locale)){
                        $userProfile->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                    }
                }
            }
            if($userProfile->save()){
                $email->email = $validatedRequest->get('email');

               $userProfile->emails()->save($email);
                $userProfile->passwords()->create([
                    'user_id'=>$userProfile->id,
                    'password'=>$userProfile->password
                ]);
                $userProfile->employeeHistories()->create([
                    'user_id'=>$userProfile->id,
                    'department_id'=>$userProfile->department_id,
                    'designation_id'=>$userProfile->designation_id,
                    'dept_join_date'=>$userProfile->dept_join_date,
                    'shift_id'=>$userProfile->shift_id,
                    'updated_at'=>date('Y-m-d')
                ]);
                $userProfile->bankAccounts()->create([
                    'user_id'=>$this->user->id,
                    'account_no'=>$validatedRequest->account_no,
                    'bank_name'=>$validatedRequest->bank_name,
                    'ifsc_code'=>$validatedRequest->ifsc_code,
                    'pan_no'=>$validatedRequest->pan_no,
                    'branch'=>$validatedRequest->branch,
                    'status'=>'Active',
                    'position'=>1

                ]);

                $userProfile->userSalaries()->create([
                    'user_id' => $this->user->id,
                    'basic' => $validatedRequest->basic,
                    'salary_rule_id'=>$validatedRequest->salary_rule_id,
                    'overtime_rule_id'=>$validatedRequest->overtime_rule_id,
                    'salary_cut_rule_id'=>$validatedRequest->salary_cut_rule_id,
                    'bonus_rule_id' => $validatedRequest->bonus_rule_id
                ]);

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
