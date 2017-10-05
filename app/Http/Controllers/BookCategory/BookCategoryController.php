<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/4/2016
 * Time: 4:56 PM
 */
namespace Erp\Http\Controllers\BookCategory;

use Erp\Http\Controllers\Controller;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\ProjectController;
use Erp\Http\Requests;
use Carbon\Carbon;
use Erp\Models\Book\BookCategory;
use Erp\Forms\BookCategoryForm;

class BookCategoryController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $bookCategory;

    /**
     * @param BookCategory $bookCategory
     */
    public function __construct(BookCategory $bookCategory)
    {

        $this->middleware('auth');

        $this->bookCategory = $bookCategory;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createBookCategoryForm()
    {
        $viewType = 'Create Book Category';

        return view('default.admin.books.create-book-category',compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function createBookCategory(Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        foreach ($this->bookCategory->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->bookCategory->translateOrNew($locale)->{$field} = $validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $this->bookCategory->status = $validatedRequest->get('status');
        $this->bookCategory->created_at = $current_date_time;

        return $this->bookCategory->save()?back()->withSuccess('Successfully Created'):null;
    }

    /**
     * @param BookCategory $bookCategory
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(BookCategory $bookCategory)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $bookCategoryList = $bookCategory->paginate(5);
//        dd($bookCategoryList);

        $viewType = 'Book Category List';

        return view('default.admin.books.index-book-category',compact('viewType', 'bookCategoryList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param BookCategoryForm $bookCategoryForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getBookCategoryEditForm($id, BookCategoryForm $bookCategoryForm)
    {
        $viewType = 'Edit Book Category';
        $editBookCategory = $bookCategoryForm;
        $bookCategoryData = $this->editFormModel($this->bookCategory->findOrFail($id));

        return view('default.admin.books.edit-book-category', compact('viewType', 'editBookCategory', 'bookCategoryData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function editBookCategory($id, Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $bookCategoryToEdit = $this->bookCategory->findOrFail($id);
        foreach ($bookCategoryToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $bookCategoryToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $bookCategoryToEdit->status = $validatedRequest->get('status');
        $bookCategoryToEdit->updated_at = $current_date_time;

        return $bookCategoryToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteBookCategory($id)
    {
        $bookCategoryToDelete = $this->bookCategory->findOrFail($id);
        if($bookCategoryToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}