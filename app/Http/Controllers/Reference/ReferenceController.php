<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/12/2016
 * Time: 12:00 PM
 */
namespace Erp\Http\Controllers\Reference;

use Erp\Http\Controllers\Controller;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Reference\Reference;
use Erp\Forms\ReferenceForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;

class ReferenceController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $reference;

    /**
     * @param Reference $reference
     */
    public function __construct(Reference $reference)
    {

        $this->middleware('auth');

        $this->reference = $reference;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createReferenceForm()
    {
        $viewType = 'Create Reference';

        return view('default.admin.reference.create', compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function createReference(Requests\Validator $validatedRequest)
    {
        $loggerId = request()->user()->id;
        $current_date_time = Carbon::now();
        foreach ($this->reference->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $this->reference->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $this->reference->user_id = $loggerId;
        $this->reference->office_phone = $validatedRequest->get('office_phone');
        $this->reference->home_phone = $validatedRequest->get('home_phone');
        $this->reference->mobile = $validatedRequest->get('mobile');
        $this->reference->email = $validatedRequest->get('email');
        $this->reference->relation_id = $validatedRequest->get('relation_id');
        $this->reference->status = $validatedRequest->get('status');
        $this->reference->created_at = $current_date_time;

        return $this->reference->save() ? back()->withSuccess('Successfully Created') : null;
    }

    /**
     * @param Reference $reference
     */
    public function index(Reference $reference)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $loggerId = request()->user()->id;


        $referenceList = $this->reference->with('referenceRelation')->where('user_id', $loggerId)->paginate(5);
        $viewType = 'Reference List';

        return view('default.admin.reference.index',compact('viewType', 'referenceList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     */
    public function viewReference($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $referenceData = $this->reference->with('referenceRelation')->findOrFail($id);
//        dd($referenceData);
        return view('default.admin.reference.view',compact('referenceData','locale','defaultLocale'));
    }

    /**
     * @param $id
     * @param ReferenceForm $referenceForm
     */
    public function getReferenceEditForm($id, ReferenceForm $referenceForm)
    {
        $viewType = 'Edit Reference';
        $editReference = $referenceForm;
        $referenceData = $this->editFormModel($this->reference->findOrFail($id));

        return view('default.admin.reference.edit', compact('viewType', 'editReference', 'referenceData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function editReference($id, Requests\Validator $validatedRequest)
    {
        $loggerId = request()->user()->id;

        $current_date_time = Carbon::now();
        $referenceToEdit = $this->reference->findOrFail($id);
        foreach ($referenceToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $referenceToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $referenceToEdit->user_id = $loggerId;
        $referenceToEdit->office_phone = $validatedRequest->get('office_phone');
        $referenceToEdit->home_phone = $validatedRequest->get('home_phone');
        $referenceToEdit->mobile = $validatedRequest->get('mobile');
        $referenceToEdit->email = $validatedRequest->get('email');
        $referenceToEdit->relation_id = $validatedRequest->get('relation_id');
        $referenceToEdit->status = $validatedRequest->get('status');
        $referenceToEdit->updated_at = $current_date_time;

        return $referenceToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     */
    public function deleteReference($id)
    {
        $referenceToDelete = $this->reference->findOrFail($id);
        if($referenceToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}