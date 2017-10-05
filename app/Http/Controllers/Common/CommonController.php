<?php

namespace Erp\Http\Controllers\Common;

use Erp\Forms\AssignPermission;
use Erp\Forms\AssignRole;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Permission\Permission;
use Erp\Models\Role\Role;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;
use Erp\Models\Gender\Gender;
use Erp\Models\Religion\Religion;
use Erp\Models\Company\CompanyGroup;
use Erp\Models\Company\Company;
use Erp\Models\Department\Department;
use Erp\Http\Requests\Validator;
use Illuminate\Support\Facades\Config;
use Erp\Models\User\User;
use Illuminate\Support\Facades\Route;

class CommonController extends ProjectController
{
    use Lang, FormControll;

    private $request;
    private $gender;
    private $religion;
    private $cgroup;
    private $company;
    private $department;


    public function __construct(Request $request)
    {
        $this->request = $request;

    }

    /**
     * @return $this
     */
    public function createForm()
    {
        $viewType = $this->request->segment(1);

        return view('default.admin.'.$viewType.'.create')
                    ->with('viewType',$viewType);
    }
}
