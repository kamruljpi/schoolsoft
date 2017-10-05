<?php

namespace Erp\Http\Controllers\Site;

use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Image\Photo;
use Erp\Models\Menu\Menu;
use Erp\Http\Requests;
use Erp\Subdomain\Xmlapi;
use Intervention\Image\Facades\Image as InterImage;
use Erp\Models\Site\SiteInfo;

class SiteController extends ProjectController
{
    use Lang, FormControll;

    private $siteInfo;
    private $newlyCreatedSite;

    public function __construct(SiteInfo $siteInfo)
    {
        $this->middleware('auth');
        $this->siteInfo = $siteInfo;
    }


    public function index()
    {
        $viewType = 'Institution List';
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $sites = $this->siteInfo->paginate(5);

        /*$sitesWithLogos = array();
        foreach($sites as $site){

            if( count($site->photo)>0)

                $sitesWithLogos[$site->photo->last()->name] = $site;
        }*/

        return view('default.admin.sites.index',compact('locale','defaultLocale','viewType','sites'));

    }
    public function createSiteInfoForm()
    {
        $viewType = 'Create Institution';

        return view('default.admin.sites.create',compact('viewType'));
    }

    public function createSiteInfo(Requests\Validator $validatedRequest)
    {
        $existEmail = \DB::table('users')
            ->where('email', '=', $validatedRequest->get('site_email'))
            ->orWhere('username', '=', $validatedRequest->get('site_alias'))
            ->first();

        if(!is_null($existEmail)){


            return back()->withErrors('sorry !!! email already exists');
        }
        $allSites = $this->siteInfo;

        foreach ($this->siteInfo->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->siteInfo->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }

        $this->siteInfo->site_membership_id = $validatedRequest->get('site_membership_id');
        $this->siteInfo->site_group_id = $validatedRequest->get('site_group_id');
        $this->siteInfo->site_alias = $validatedRequest->get('site_alias');
        $this->siteInfo->site_email = $validatedRequest->get('site_email');
        $this->siteInfo->site_phone = $validatedRequest->get('site_phone');
        $this->siteInfo->status = $validatedRequest->get('status');

        if($this->siteInfo->save()){
            $newlyCreatedSite = $this->siteInfo;
            $this->savePhoto(
                $newlyCreatedSite,
                $validatedRequest
            );

            $this->createRolesForSite($newlyCreatedSite);
            $superAdmin = $this->creatSuperadminUser($newlyCreatedSite);

           /* if ($superAdmin==false){

                return back()->withErrors('email already exists!!!');
            }*/
            $this->assignPermissionToSuperadmin($superAdmin,$newlyCreatedSite);
            $this->createSubdomain($newlyCreatedSite);
        }

        return back()->withSuccess('Successfully Created');
    }



    public function createRolesForSite($newlyCreatedSite)
    {
        \DB::table('roles')->insert([
            [
                'name' => 'superadmin',
                'role_description' => 'This is Superadmin..',
                'status' => 'Active',
                'site_id' => $newlyCreatedSite->id,
            ],
            [
                'name' => 'teacher',
                'role_description' => 'This is teacher..',
                'status' => 'Active',
                'site_id' => $newlyCreatedSite->id,
            ],
            [
                'name' => 'employee',
                'role_description' => 'This is employee..',
                'status' => 'Active',
                'site_id' => $newlyCreatedSite->id,
            ],
            [
                'name' => 'student',
                'role_description' => 'This is student..',
                'status' => 'Active',
                'site_id' => $newlyCreatedSite->id,
            ],
            [
                'name' => 'guardian',
                'role_description' => 'This is guardian..',
                'status' => 'Active',
                'site_id' => $newlyCreatedSite->id,
            ],

        ]);
    }

    public function creatSuperadminUser($newlyCreatedSite)
    {
        $tableUser = \DB::table('users');
        $superAdminPassword = str_random(6);
        $siteId = $newlyCreatedSite->id;
        $siteName = $newlyCreatedSite->site_name;
        $siteEmail = $newlyCreatedSite->site_email;

       /* $existEmail = $tableUser
            ->where('email', '=', $siteEmail)
            ->first();

        if(!is_null($existEmail)){


            return false;
        }*/
        $userId = $tableUser->insertGetId(
            [
                'username'=>'school_'.$newlyCreatedSite->id.str_random(3),
                'email' => $siteEmail,
                'password' => bcrypt($superAdminPassword),
                'site_id' => $siteId,
            ]
        );


        \DB::table('user_translations')->insert(
            [
                'user_id'=>$userId,
                'first_name' =>$siteName,
                'site_id' => $newlyCreatedSite->id,
            ]
        );

        $savedUser = $tableUser
            ->where('id', '=', $userId)
            ->first();

        $this->setSuperadminRole($savedUser,$newlyCreatedSite);

        \Mail::send('emails.confirmation',
            [
                'email'=>$newlyCreatedSite->site_email,
                'siteAlias'=>$newlyCreatedSite->site_alias,
                'password'=>$superAdminPassword
            ], function($m)use($newlyCreatedSite){
                $m->from('info@edu360.com.bd', 'Edu360 Authority');
                $m->to($newlyCreatedSite->site_email, '..........')->subject('Your Login Credentials!');
        });
        return $savedUser;

    }

    private function setSuperadminRole( $user, SiteInfo $newlyCreatedSite)
    {

        $role = \DB::table('roles')->select('id')->where(['name'=>'superadmin','site_id'=>$newlyCreatedSite->id])->first();

        if(!is_null($role)){
            $roleId = $role->id;
            \DB::table('role_user')->insert(
                [
                    'user_id'=>$user->id,
                    'role_id' => $roleId,
                    'site_id' => $newlyCreatedSite->id,
                ]
            );

        }
    }

    private function assignPermissionToSuperadmin($superadmin, $newlyCreatedSite)
    {
        $menus = (new Menu())->where(['status'=>true,'is_common_access'=>false])->get();
        $roleId = \DB::table('role_user')->select('role_id')->where(['user_id'=>$superadmin->id,'site_id'=>$newlyCreatedSite->id])->first()->role_id;
        $menusForSuperadmin = $menus->pluck('id');
        foreach ($menusForSuperadmin as $sa) {

            \DB::table('group_accesses')->insert([

                'menu_id'=>$sa,
                'role_id'=>$roleId,
                'view'=>true,
                'site_id'=>$newlyCreatedSite->id,
            ]);
        }
    }


    private function savePhoto(SiteInfo $siteInfo, Requests\Validator $validatedRequest)
    {
        if($validatedRequest->photo):
            $image = $validatedRequest->file('photo');
            $this->imageUpload($image,$siteInfo);
        endif;
    }

    private function imageUpload($image,SiteInfo $newlyCreatedSite){

        $this->fileName = time().str_random(3).$image->getClientOriginalName();
        InterImage::make($image->getRealPath())->resize(200,200)->save('uploads/'. $this->fileName);
        $photo = new Photo();
        $photo->name= $this->fileName;
        $photo->user_id = $newlyCreatedSite->id;
        $newlyCreatedSite->photo()->save($photo);
    }

    public function editSiteInfoForm($id)
    {
        $viewType = 'Edit Institution Info';

        $siteToEdit =$this->editFormModel($this->siteInfo->findOrFail($id)) ;

        return view('default.admin.sites.edit',compact('siteToEdit','viewType'));
    }

    public function editSiteInfo($id,Requests\Validator $validatedRequest)
    {
        $siteToEdit = $this->siteInfo->findOrFail($id);

        foreach ($siteToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $siteToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }

        $siteToEdit->site_membership_id = $validatedRequest->get('site_membership_id');
        $siteToEdit->site_group_id = $validatedRequest->get('site_group_id');
        $siteToEdit->site_alias = $validatedRequest->get('site_alias');
        $siteToEdit->site_email = $validatedRequest->get('site_email');
        $siteToEdit->site_phone = $validatedRequest->get('site_phone');
        $siteToEdit->status = $validatedRequest->get('status');

        if($siteToEdit->save()){

            $this->savePhoto(
                $siteToEdit,
                $validatedRequest
            );

        }

        return back()->withSuccess('Successfully Updated');

    }

    public function deleteSiteInfo($id)
    {
        $siteToDelete = $this->siteInfo->findOrFail($id);

        if($siteToDelete->delete()){

            return back()->withSuccess('Successfully Deleted');
        }

    }

    public function viewSiteInfo($id)
    {
        $logo = '';
        $siteToView = $this->siteInfo->findOrFail($id);

        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        if( !$siteToView->photo->isEmpty()){
            $logo = $siteToView->photo->last()->name;
        }


        return view('default.admin.sites.view',compact('siteToView','locale','defaultLocale','logo'));

    }

    private function createSubdomain($newlyCreatedSite)
    {
        $cpanelusr = 'edu360com';
        $cpanelpass = 'mM&tVw1W&Os37}s#]q';
        $xmlapi = new Xmlapi('198.57.181.152');
        $xmlapi->set_port( 2083 );
        $xmlapi->password_auth($cpanelusr,$cpanelpass);
        $xmlapi->set_debug(0);
        $result = $xmlapi->api1_query($cpanelusr, 'SubDomain', 'addsubdomain', array($newlyCreatedSite->site_alias,"edu360.com.bd",0,0, '/public_html/school/'));
        $xmlapi->reboot(true);
    }


}
