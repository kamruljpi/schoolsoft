<?php

namespace Erp\Http\Controllers\Site;

use Erp\Forms\FormControll;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Site\SiteMembership;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class SiteMembershipController extends ProjectController
{
    use FormControll;

    private $siteMembership;

    public function __construct(SiteMembership $siteMembership)
    {
        $this->siteMembership = $siteMembership;
    }


    public function index()
    {
        $viewType = 'Institution Members List';

        $siteMembers = $this->siteMembership->paginate(5);


        return view('default.admin.site_membership.index',compact('viewType','siteMembers'));

    }
    public function createSiteMembershipForm()
    {
        $viewType = 'Create Institution Member';

        return view('default.admin.site_membership.create',compact('viewType'));
    }

    public function createSiteMembership(Requests\Validator $validatedRequest)
    {
        $siteMemberToCreate = $this->getMembershipInfo($this->siteMembership,$validatedRequest);

        if($siteMemberToCreate->save()){

            return back()->withSuccess('Successfully Created');
        }
    }

    public function editSiteMembershipForm($id)
    {
        $viewType = 'Edit Institution Membership';

        $siteMemberToEdit =$this->editFormModel($this->siteMembership->findOrFail($id)) ;

        return view('default.admin.site_membership.edit',compact('siteMemberToEdit','viewType'));
    }

    public function editSiteMembership($id,Requests\Validator $validatedRequest)
    {
        $siteMemberToEdit =$this->editFormModel($this->siteMembership->findOrFail($id)) ;

        $siteMemberToEdit = $this->getMembershipInfo($siteMemberToEdit,$validatedRequest);

        if($siteMemberToEdit->save()){

            return back()->withSuccess('Successfully Updated');
        }
    }

    private function getMembershipInfo(SiteMembership $siteMembership, Requests\Validator $validatedRequest)
    {

        $siteMembership->name = $validatedRequest->get('name');
        $siteMembership->payment_type = $validatedRequest->get('payment_type');
        $siteMembership->payment_type_duration = $validatedRequest->get('payment_type_duration');
        $siteMembership->payment_amount = $validatedRequest->get('payment_amount');
        $siteMembership->payment_installment = $validatedRequest->get('payment_installment');
        $siteMembership->late_payment_membership_status = $validatedRequest->get('late_payment_membership_status');
        $siteMembership->late_payment_membership_days = $validatedRequest->get('late_payment_membership_days');
        $siteMembership->late_fee = $validatedRequest->get('late_fee');
        $siteMembership->alumni_login = $validatedRequest->get('alumni_login');
        $siteMembership->alumni_fee = $validatedRequest->get('alumni_fee');
        $siteMembership->discount_type = $validatedRequest->get('discount_type');
        $siteMembership->discount = $validatedRequest->get('discount');
        $siteMembership->status = $validatedRequest->get('status');

        return $siteMembership;

    }
}
