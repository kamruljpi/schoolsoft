<?php

namespace Erp\Http\Controllers\Login;

use Erp\Models\User\User;
use Illuminate\Foundation\Auth\RedirectsUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use PhpParser\Node\Expr\Closure;
use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;
use Erp\Models\Email\Email;
use Erp\Models\Password\Password;
use Erp\Http\Requests\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Contracts\Auth\Guard;


class LoginController extends Controller
{

    use RedirectsUsers;

        /*
         *
         * @newly added properties
         *
         * $redirectPath works when u r registered or logged in successfully
         *
         * $loginPath works after unsccesfull try to log in
         *
         */
    protected $redirectPath = 'employee';
    protected $loginPath = 'auth/login';
    private $user;
    private $request;
    private $auth;

    /**
     * LoginController constructor.
     * @param User $user
     * @param Request $request
     * @param Guard $auth
     */
    public function __construct(User $user,Request $request, Guard $auth)
    {
//        $this->middleware('role:superadmin', ['only' => ['roleCheck']]);
        $this->user = $user;
        $this->request = $request;
        $this->auth = $auth;
//        dd(siteId());
    }

    public function loginPage()
    {

        if($this->auth->guest()){
            return view('default.auth.login');
        }
//        return redirect()->intended('auth/role');
//        return redirect()->intended(route('role-check'));
        return redirect()->intended(route('admin'));

    }

    /**
     * @param Validator $validatedRequest
     * @return $this|\Illuminate\Http\RedirectResponse
     */
    public function login(Validator $validatedRequest)
    {


        if($this->auth->guest()){

            if(isEmail($validatedRequest->email)){
                if (Auth::attempt($this->credentials($validatedRequest)/*,$validatedRequest->has('remember')*/)) {

//                return redirect()->intended('auth/role');
                    return redirect()->intended(route('admin'));
                }
            }else{
                if (Auth::attempt($this->credentialsEmployeeId($validatedRequest)/*,$validatedRequest->has('remember')*/)) {

//                return redirect()->intended('auth/role');
                    return redirect()->intended(route('admin'));
                }
            }

            return back()->withErrors('Sorry !!! your email or password is invalid');
        }
//        return redirect()->to('auth/role');
        return redirect()->route('admin');
    }


    /**
     * @return string
     */
    public function loginUsername()
    {
        return property_exists($this, 'username') ? $this->username : 'email';
    }

    /**
     * @param $validatedRequest
     * @return array
     */
    public function credentials($validatedRequest){

        return [
//                $this->loginUsername() => $validatedRequest->email,
                'email' => $validatedRequest->email,
//                'employee_id' => $validatedRequest->employee_id,
                'password' => $validatedRequest->password/*,'status'=>'active'*/
        ];
    }

    public function credentialsEmployeeId($validatedRequest){

        return [

            'employee_id' => $validatedRequest->email,
            'password' => $validatedRequest->password/*,'status'=>'active'*/
        ];
    }

    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function roleCheck()
    {
        return redirect()->intended(route('admin'));
    }

    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function logout()
    {

        if($this->auth->check()){


            Auth::logout();

            session()->forget(SITE_ID);

        }
//        dd(request()->route()->getName());
//        dd(session()->get(SITE_ID));
        return  redirect()->route('login-form');
//       dd( session()->forget(SITE_ID));

    }

}
