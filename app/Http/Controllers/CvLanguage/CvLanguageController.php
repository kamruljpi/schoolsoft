<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/11/2016
 * Time: 12:29 PM
 */
namespace Erp\Http\Controllers\CvLanguage;

use Erp\Http\Controllers\Controller;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\CvLanguage\CvLanguage;
use Erp\Forms\CvLanguageForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;

class CvLanguageController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $cvLanguage;

    /**
     * @param CvLanguage $cvLanguage
     */
    public function __construct(CvLanguage $cvLanguage)
    {

        $this->middleware('auth');

        $this->cvLanguage = $cvLanguage;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createCvLanguageForm()
    {
        $viewType = 'Create Language';

        return view('default.admin.cv_language.create', compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function createCvLanguage(Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        foreach ($this->cvLanguage->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $this->cvLanguage->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $this->cvLanguage->status = $validatedRequest->get('status');
        $this->cvLanguage->created_at = $current_date_time;

        return $this->cvLanguage->save() ? back()->withSuccess('Successfully Created') : null;
    }

    /**
     * @param CvLanguage $cvLanguage
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(CvLanguage $cvLanguage)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $cvLanguageList = $cvLanguage->paginate(5);

        $viewType = 'Language List';

        return view('default.admin.cv_language.index', compact('viewType', 'cvLanguageList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param CvLanguageForm $cvLanguageForm
     */
    public function getCvLanguageEditForm($id, CvLanguageForm $cvLanguageForm)
    {
        $viewType = 'Edit Language';
        $editCvLanguage = $cvLanguageForm;
        $cvLanguageData = $this->editFormModel($this->cvLanguage->findOrFail($id));

        return view('default.admin.cv_language.edit', compact('viewType', 'editCvLanguage', 'cvLanguageData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     */
    public function editCvLanguage($id, Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $cvLanguageToEdit = $this->cvLanguage->findOrFail($id);
        foreach ($cvLanguageToEdit->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $cvLanguageToEdit->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $cvLanguageToEdit->status = $validatedRequest->get('status');
        $cvLanguageToEdit->updated_at = $current_date_time;

        return $cvLanguageToEdit->save() ? back()->withSuccess('Successfully Updated') : null;
    }

    /**
     * @param $id
     */
    public function deleteCvLanguage($id)
    {
        $cvLanguageToDelete = $this->cvLanguage->findOrFail($id);
        if($cvLanguageToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}