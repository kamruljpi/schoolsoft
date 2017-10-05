<?php

namespace Erp\Http\Controllers\Status;

use Erp\Forms\FormControll;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Status\Status;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class StatusController extends ProjectController
{
    use FormControll;

    private $status;

    /**
     * StatusController constructor.
     * @param Status $status
     */
    public function __construct(Status $status)
    {

        $this->status = $status;

    }

    public function index()
    {

        //$model = $this->status;

        //$locale = $this->chosenLanguage();
        //$defaultLocale = $this->defaultLocale();
        $statusList = $this->status->paginate(10);
        $viewType = 'Status List';

        return view('default.admin.status.index',compact('statusList','viewType'));
    }

    public function editStatusForm($id, Status $status  )
    {
        $viewType = 'Edit Status';
        $statusToEdit = $this->editFormModel($status->findOrFail($id));
        //dd($statusToEdit);
        return view('default.admin.status.status-edit', compact('statusToEdit','viewType'));
    }

    public function editStatus($id, Status $status, Requests\Validator $validatedRequest)
    {
        $statusToEdit = $status->findOrFail($id);

        $isEdited = $statusToEdit->update([
            'name'=>ucwords($validatedRequest->get('name'))
        ]);

        return $isEdited?back()->withSuccess('Successfully Updated'):null;
    }
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createStatusForm()
    {
        $viewType = 'Create Status';

        return view('default.admin.status.create',compact('viewType'));

    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse|null
     */
    public function createStatus(Requests\Validator $validatedRequest)
    {
        $isCreated =  $this->status->create([
            'name'=>ucwords($validatedRequest->name)
        ]);

        return $isCreated?back():null;
    }


}
