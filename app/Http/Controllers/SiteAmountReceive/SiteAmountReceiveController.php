<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/23/2016
 * Time: 10:44 PM
 */
namespace Erp\Http\Controllers\SiteAmountReceive;

use Erp\Http\Controllers\Controller;
use Erp\Models\SiteAmountReceive\SiteAmountReceive;
use Erp\Forms\SiteAmountReceiveForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;

class SiteAmountReceiveController extends Controller
{
    use Lang, FormControll, DataHelper;

    private $siteAmountReceive;

    /**
     * @param SiteAmountReceive $siteAmountReceive
     */
    public function __construct(SiteAmountReceive $siteAmountReceive)
    {

        $this->middleware('auth');

        $this->siteAmountReceive = $siteAmountReceive;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createSiteAmountReceiveForm()
    {
        $viewType = 'Create Institution Amount Receive';

        return view('default.admin.site_amount_receive.create', compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function createSiteAmountReceive(Requests\Validator $validatedRequest)
    {
        $loggerId = request()->user()->id;
        $current_date_time = Carbon::now();

        $this->siteAmountReceive->user_id = $loggerId;
        $this->siteAmountReceive->amount = $validatedRequest->get('amount');
        $this->siteAmountReceive->date = $validatedRequest->get('date');
        $this->siteAmountReceive->site_id = $validatedRequest->get('site_id');
        $this->siteAmountReceive->status = $validatedRequest->get('status');
        $this->siteAmountReceive->created_at = $current_date_time;

        return $this->siteAmountReceive->save()?back()->withSuccess('Successfully Created'):null;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $loggerId = request()->user()->id;

//        $siteAmountReceiveList = $siteAmountReceive->all();
        $siteAmountReceiveList = $this->siteAmountReceive->with('siteInfo')->where('user_id', $loggerId)->paginate(20);
//        dd($siteAmountReceiveList);
        $viewType = 'Institution Amount Receive List';

        return view('default.admin.site_amount_receive.index',compact('viewType', 'siteAmountReceiveList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     */
    public function viewSiteAmountReceive($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $siteAmountReceiveData = $this->siteAmountReceive->with('siteInfo', 'siteAmountReceiveOfUser')->findOrFail($id);
//        dd($siteAmountReceiveData);
        return view('default.admin.site_amount_receive.view',compact('siteAmountReceiveData','locale','defaultLocale'));
    }
}