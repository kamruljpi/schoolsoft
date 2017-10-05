<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/5/2016
 * Time: 12:00 PM
 */
namespace Erp\Http\Controllers\Author;

use Erp\Http\Controllers\Controller;
use Erp\Forms\AuthorForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\ProjectController;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;
use Erp\Models\Author\Author;
use Erp\Http\Requests\Validator;
use Erp\Models\Image\Photo;
use Intervention\Image\Facades\Image as InterImage;

class AuthorController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $author;

    /**
     * @param Author $author
     */
    public function __construct(Author $author)
    {

        $this->middleware('auth');

        $this->author = $author;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createAuthorForm()
    {
        $viewType = 'Create Author';

        return view('default.admin.authors.create',compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
   /* public function createAuthor(Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        foreach ($this->author->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->author->translateOrNew($locale)->{$field} = $validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $this->author->date_of_birth = $validatedRequest->get('date_of_birth');
        $this->author->status = $validatedRequest->get('status');
        $this->author->created_at = $current_date_time;

        return $this->author->save()?back()->withSuccess('Successfully Created'):null;
    }*/

    public function createAuthor(Requests\Validator $validatedRequest)
    {
        $allAuthors = $this->author;
        $isOwnFieldsSaved = $this->ownFieldsToSave($allAuthors,$validatedRequest);
        $isTranslatedFieldsSaved = $this->translatedAttrToSave($allAuthors,$validatedRequest);

        if($isOwnFieldsSaved ){
            if($isTranslatedFieldsSaved){
                $newlyCreatedAuthor = $this->newlyCreatedAuthor($allAuthors);

                $this->savePhoto(
                    $newlyCreatedAuthor,
                    $validatedRequest
                );

                return back()->withSuccess('Successfully Created');
            }
        }
    }

    private function newlyCreatedAuthor(Author $author)
    {
        $newlyCreatedAuthor = $author->all()->last();

        return $newlyCreatedAuthor;
    }

    private function ownFieldsToSave(Author $author, Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        if(isset($author->ownFields)){
            foreach($author->ownFields as $ownField){
                if($validatedRequest->{$ownField})
                    $author->{$ownField} = $validatedRequest->{$ownField} ;
            }
        }

        $this->author->created_at = $current_date_time;

        if($author->save()){

            return true;
        }

        return false;
    }
    private function ownFieldsToUpdate(Author $author, Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        if(isset($author->ownFields)){
            foreach($author->ownFields as $ownField){
                if($validatedRequest->{$ownField})
                    $author->{$ownField} = $validatedRequest->{$ownField} ;
            }
        }

        $this->author->updated_at = $current_date_time;

        if($author->save()){

            return true;
        }

        return false;
    }
    private function translatedAttrToSave(Author $author, Validator $validatedRequest)
    {
        foreach ($author->translatedAttributes as $field) {
            foreach($this->locales() as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $author->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }

        if($author->save()){

            return true;
        }
        return false;
    }

    private function savePhoto(Author $author, Validator $validatedRequest)
    {
        if($validatedRequest->photo):
            $image = $validatedRequest->file('photo');
            $this->imageUpload($image,$author);
        endif;
    }

    private function imageUpload($image,Author $newlyCreatedAuthor)
    {

        $this->fileName = time().str_random(3).$image->getClientOriginalName();
        InterImage::make($image->getRealPath())->resize(200,200)->save('uploads/'. $this->fileName);
        $photo = new Photo();
        $photo->name= $this->fileName;
        $photo->user_id = $newlyCreatedAuthor->id;
        $newlyCreatedAuthor->photo()->save($photo);
    }
    /**
     * @param Author $author
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Author $author)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $authorList = $author->paginate(5);
//        $accountList = $this->account->with('accountType', 'amountType', 'amountCategory', 'toRole', 'fromRole', 'toUser', 'fromUser')->get();
//        dd($authorList);

        $viewType = 'Author List';

        return view('default.admin.authors.index',compact('viewType', 'authorList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewAuthor($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $authorData = $this->author->findOrFail($id);
        $photo = $authorData->photo->last()->name;
//        dd($authorData);

        return view('default.admin.authors.view',compact('authorData','locale','defaultLocale', 'photo'));
    }

    /**
     * @param $id
     * @param AuthorForm $authorForm
     */
    public function getAuthorEditForm($id, AuthorForm $authorForm)
    {
        $viewType = 'Edit Author';
        $editAuthor = $authorForm;
        $authorData = $this->editFormModel($this->author->findOrFail($id));

        return view('default.admin.authors.edit', compact('viewType', 'editAuthor', 'authorData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     */
    /*public function editAuthor($id, Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $authorToEdit = $this->author->findOrFail($id);
        foreach ($authorToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $authorToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $authorToEdit->date_of_birth = $validatedRequest->get('date_of_birth');
        $authorToEdit->status = $validatedRequest->get('status');
        $authorToEdit->updated_at = $current_date_time;

        return $authorToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }*/

    public function editAuthor($id, Requests\Validator $validatedRequest)
    {
        $authorData = $this->author->findOrFail($id);
        $ownFieldsToUpdate = $this->ownFieldsToUpdate($authorData,$validatedRequest);
        $isTranslatedFieldsSaved = $this->translatedAttrToSave($authorData,$validatedRequest);

        if($ownFieldsToUpdate){
            if($isTranslatedFieldsSaved){
                $this->savePhoto(
                    $authorData,
                    $validatedRequest
                );
                return back()->withSuccess('Successfully Updated');
            }
        }
    }

    /**
     * @param $id
     */
    public function deleteAuthor($id)
    {
        $authorToDelete = $this->author->findOrFail($id);
        if($authorToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}