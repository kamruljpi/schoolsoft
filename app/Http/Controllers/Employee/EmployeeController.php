<?php

namespace Erp\Http\Controllers\Employee;

use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;
use Illuminate\Auth\Guard;

class EmployeeController extends ProjectController
{
    use Lang;

    public function __construct()
    {

        $this->middleware('auth');
    }

    /**
     * @return string
     */
    public function employeePage()
    {
      // dd(\Route::currentRouteName());\Route::getFacadeRoot()->current()->uri();
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
//        dd(request()->user()->designation);

//        return view('default.employee.index', compact('locale','defaultLocale'));
        return view('default.employee.index', compact('locale','defaultLocale'));
    }
}
