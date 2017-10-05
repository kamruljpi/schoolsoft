<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 4/24/2016
 * Time: 11:14 AM
 */
namespace Erp\Http\Controllers\Guardian;

use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Controller;
use Erp\Forms\FormControll;
use Erp\Forms\GuardianForm;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
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

class GuardiansController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $guardian;
    private $fileName;
    private $extension;

    /**
     * @param User $guardian
     */
    public function __construct(User $guardian)
    {



        $this->middleware('auth');

        $this->guardian = $guardian;

    }

    public function index(Role $role)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $roleId = $this->role('Guardian');
        $roleOfGuardian = $role->findOrFail($roleId);
        $guardianList = $roleOfGuardian->users()->paginate(20);
        //dd($roleOfGuardian->users);
        $guardiansWithPhotos = array();
        foreach($guardianList as $guardian){

            if( count($guardian->photos)>0)

                $guardiansWithPhotos[$guardian->photos->last()->name] = $guardian;
        }
        //dd($guardiansWithPhotos);

        $viewType = 'Guardian List';

        return view('default.admin.guardian.index', compact('guardianList', 'locale', 'defaultLocale', 'guardiansWithPhotos', 'viewType'));

    }
    public function createGuardianForm()
    {
        $viewType = 'Create Guardian';

        return view('default.admin.guardian.create',compact('viewType'));
    }

    public function createGuardian(Validator $validatedRequest)
    {
        $allGuardiants = $this->guardian;
        $isOwnFieldsSaved = $this->ownFieldsToSave($allGuardiants,$validatedRequest);
        $isTranslatedFieldsSaved = $this->translatedAttrToSave($allGuardiants,$validatedRequest);

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

    private function ownFieldsToSave(User $guardian, Validator $validatedRequest)
    {
        if(isset($guardian->gurdianFields)){
            foreach($guardian->gurdianFields as $ownField){
                if($validatedRequest->{$ownField})
                    $guardian->{$ownField} = $validatedRequest->{$ownField} ;
            }
        }

        $this->passwordToSave($guardian,$validatedRequest);

        if($guardian->save()){

            return $guardian;
        }

        return false;
    }

    private function passwordToSave(User $guardian, Validator $validatedRequest)
    {
        if($validatedRequest->password){

            $guardian->password = bcrypt($validatedRequest->get('password'));
        }
    }

    private function translatedAttrToSave(User $guardian, Validator $validatedRequest)
    {
        foreach ($guardian->translatedAttributes as $field) {
            foreach($this->locales() as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $guardian->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }

        if($guardian->save()){

            return true;
        }
        return false;
    }

    /**
     * @param User $user
     * @return mixed
     */
    private function newlyCreatedUser(User $guardian)
    {
        $newlyCreatedUser = $guardian->all()->last();

        return $newlyCreatedUser;
    }

    /**
     * @param User $user
     * @param Validator $validatedRequest
     */
    private function setRole(User $guardian, Requests\Validator $validatedRequest)
    {
        if($validatedRequest->role){
            $roleId = $validatedRequest->role;
            $guardian->roles()->attach($roleId);
        }
    }

    /**
     * @param User $user
     * @param Validator $validatedRequest
     */
    private function savePhoto(User $guardian, Requests\Validator $validatedRequest)
    {
        if($validatedRequest->photo):
            $image = $validatedRequest->file('photo');
            $this->imageUpload($image,$guardian);
        endif;
    }

    /**
     * @param User $user
     * @param Validator $validatedRequest
     */
    private function saveDocuments(User $guardian, Requests\Validator $validatedRequest)
    {
        if($validatedRequest->file):
            $filesExceptImage = $validatedRequest->file('file');
            foreach($filesExceptImage as $file) {
                if($file):
                    $this->fileUpload($file,$guardian);
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
        $newFieldsForGuardians = $user->getNewFieldsName('user');
        if(isset($newFieldsForGuardians) && !empty($newFieldsForGuardians)){
            foreach($newFieldsForGuardians as $newGuardianField){
                $addNewFields = new AddFieldToTable();
                if($validatedRequest->{$newGuardianField})
                    $addNewFields->key= $newGuardianField;
                $addNewFields->value = $validatedRequest->{$newGuardianField};
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
     * @param GuardianForm $guardianForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function editGuardianForm($id,GuardianForm $guardianForm)
    {
        $viewType = 'Edit Guardian';
        $editGuardian = $guardianForm;
        $guardianProfile =$this->editFormModel($this->guardian->findOrFail($id)) ;
        //dd($guardianProfile);

        return view('default.admin.guardian.edit',compact('guardianProfile','viewType','editGuardian'));
    }

    /**
     * @param $id
     * @param Validator $validatedRequest
     * @return mixed
     */
    public function editGuardian($id, Validator $validatedRequest)
    {

        $guardianProfile = $this->guardian->findOrFail($id);
        $isOwnFieldsSaved = $this->ownFieldsToSave($guardianProfile,$validatedRequest);
        $isTranslatedFieldsSaved = $this->translatedAttrToSave($guardianProfile,$validatedRequest);
        $basicUserInfoArr =  [
            'user_id'=>$guardianProfile->id,
            'updated_at'=>date('Y-m-d')
        ];


        if($isOwnFieldsSaved ){

            if($isTranslatedFieldsSaved){

                $this->savePhoto(
                    $guardianProfile,
                    $validatedRequest
                );

                $this->saveDocuments(
                    $guardianProfile,
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
    public function viewGuardian($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $guardianProfile = $this->guardian->with('gender','religion','photo')->findOrFail($id);
        $photo = $guardianProfile->photo->last()->name;

        return view('default.admin.guardian.view',compact('guardianProfile', 'locale','defaultLocale', 'photo'));
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteGuardian($id)
    {
        $guardianToDelete = $this->guardian->findOrFail($id);
        if($guardianToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}