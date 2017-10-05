<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/6/2016
 * Time: 11:59 AM
 */
namespace Erp\Http\Controllers\Book;

use Erp\Http\Controllers\Controller;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Erp\Forms\BookForm;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Book\Book;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;


class BookController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $book;

    /**
     * @param Book $book
     */
    public function __construct(Book $book)
    {

        $this->middleware('auth');

        $this->book = $book;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createBookForm()
    {
        $viewType = 'Create Book';

        return view('default.admin.books.create',compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function createBook(Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        foreach ($this->book->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->book->translateOrNew($locale)->{$field} = $validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $this->book->book_category_id = $validatedRequest->get('book_category_id');
        $this->book->author_id = $validatedRequest->get('author_id');
        $this->book->subject_code = $validatedRequest->get('subject_code');
        $this->book->book_price = $validatedRequest->get('book_price');
        $this->book->quantity = $validatedRequest->get('quantity');
        $this->book->rack_no = $validatedRequest->get('rack_no');
        $this->book->status = $validatedRequest->get('status');
        $this->book->created_at = $current_date_time;

        return $this->book->save()?back()->withSuccess('Successfully Created'):null;
    }

    /**
     * @param Book $book
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Book $book)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        //$bookList = $book->all();
        $bookList = $this->book->with('bookCategory', 'bookAuthor')->paginate(5);
//        dd($bookList);

        $viewType = 'Book List';

        return view('default.admin.books.index',compact('viewType', 'bookList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param BookForm $bookForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getBookEditForm($id, BookForm $bookForm)
    {
        $viewType = 'Edit Book';
        $editBook = $bookForm;
        $bookData = $this->editFormModel($this->book->findOrFail($id));

        return view('default.admin.books.edit', compact('viewType', 'editBook', 'bookData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function editBook($id, Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $bookToEdit = $this->book->findOrFail($id);
        foreach ($bookToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $bookToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $bookToEdit->book_category_id = $validatedRequest->get('book_category_id');
        $bookToEdit->author_id = $validatedRequest->get('author_id');
        $bookToEdit->subject_code = $validatedRequest->get('subject_code');
        $bookToEdit->book_price = $validatedRequest->get('book_price');
        $bookToEdit->quantity = $validatedRequest->get('quantity');
        $bookToEdit->rack_no = $validatedRequest->get('rack_no');
        $bookToEdit->status = $validatedRequest->get('status');
        $bookToEdit->updated_at = $current_date_time;

        return $bookToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewBook($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $bookData = $this->book->with('bookCategory', 'bookAuthor')->findOrFail($id);
//        dd($bookData);

        return view('default.admin.books.view',compact('bookData','locale','defaultLocale'));
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteBook($id)
    {
        $bookToDelete = $this->book->findOrFail($id);
        if($bookToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}