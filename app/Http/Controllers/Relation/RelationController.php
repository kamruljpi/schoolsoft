<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/12/2016
 * Time: 10:53 AM
 */
namespace Erp\Http\Controllers\Relation;

use Erp\Http\Controllers\Controller;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Relation\Relation;
use Erp\Forms\RelationForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;

class RelationController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $relation;

    /**
     * @param Relation $relation
     */
    public function __construct(Relation $relation)
    {

        $this->middleware('auth');

        $this->relation = $relation;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createRelationForm()
    {
        $viewType = 'Create Relation';

        return view('default.admin.relation.create', compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     */
    public function createRelation(Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        foreach ($this->relation->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $this->relation->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $this->relation->status = $validatedRequest->get('status');
        $this->relation->created_at = $current_date_time;

        return $this->relation->save() ? back()->withSuccess('Successfully Created') : null;
    }

    /**
     * @param Relation $relation
     */
    public function index(Relation $relation)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $relationList = $relation->paginate(5);

        $viewType = 'Relation List';

        return view('default.admin.relation.index', compact('viewType', 'relationList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param RelationForm $relationForm
     */
    public function getRelationEditForm($id, RelationForm $relationForm)
    {
        $viewType = 'Edit Relation';
        $editRelation = $relationForm;
        $relationData = $this->editFormModel($this->relation->findOrFail($id));

        return view('default.admin.relation.edit', compact('viewType', 'editRelation', 'relationData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     */
    public function editRelation($id, Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $relationToEdit = $this->relation->findOrFail($id);
        foreach ($relationToEdit->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $relationToEdit->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $relationToEdit->status = $validatedRequest->get('status');
        $relationToEdit->updated_at = $current_date_time;

        return $relationToEdit->save() ? back()->withSuccess('Successfully Updated') : null;
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteRelation($id)
    {
        $relationToDelete = $this->relation->findOrFail($id);
        if($relationToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}