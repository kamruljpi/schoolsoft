<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/23/2016
 * Time: 12:20 PM
 */
namespace Erp\Http\Controllers\Office;

use Erp\Http\Controllers\ProjectController;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Models\Site\SiteInfo;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;
use Illuminate\Validation\Validator;
use Erp\Models\User\User;
use Erp\Models\Role\Role;

class OfficeController extends ProjectController
{
    use Lang, FormControll;

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function siteReportPage()
    {
        $viewType = 'Get Institution Report';
        return view('default.admin.office.site-report',compact('viewType'));
    }

    /**
     * @param Request $request
     * @param User $user
     * @param Role $role
     */
    public function generateSiteReport(Request $request, User $user, Role $role)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $siteId = $request->siteId;
        $roleId = $request->roleId;

        $roleOfUser = $role->findOrFail($roleId);
//        dd($roleOfUser);
        $roleName = $roleOfUser->name;
//        $userList = $roleOfUser->users->where('site_id', $siteId);
        $userList = $roleOfUser->users;
//        dd($userList);
        $totalUser = count($userList);
        $usersWithPhotos = array();
        foreach($userList as $person){

            if( count($person->photos)>0)

                $usersWithPhotos[$person->photos->last()->name] = $person;
        }

        return view('default.admin.office.site-report-details',compact('roleName','userList','locale','defaultLocale', 'usersWithPhotos', 'totalUser'));

    }

    public function generateSiteReportView($id)
    {

    }
}