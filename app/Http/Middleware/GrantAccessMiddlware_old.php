<?php

namespace Erp\Http\Middleware;

use Closure;
use Erp\Models\Menu\Menu;
use Erp\Models\Permission\GroupAccess;
use Illuminate\Contracts\Auth\Guard;
use Symfony\Component\HttpFoundation\File\Exception\AccessDeniedException;

//use Illuminate\Routing\Router;

//use Illuminate\Support\Facades\Route;

class GrantAccessMiddlware_old
{
    private $groupAccess;
    private $auth;
    private $currentRoute;
    private $menu;
    private $routesForAll;
    

    public function __construct(GroupAccess $groupAccess,Menu $menu, Guard  $auth)
    {


        $this->groupAccess = $groupAccess;
        $this->menu = $menu;
        $this->auth = $auth;
        $this->routesForAll = $this->getCommonMunus($this->menu);
        /*$this->routesForAll = [
            'log-out',
            'login-form',
            'role-check',
            'log-in',
            'sign-in-form',
            'sign-in',
            'log-out',
            'my-page',
            'admin',
            'choose-lang',
            'menu-create-form',
            'menu-create',
            'menu-edit',
            'menu-edit-form',
            'menu-list',
            'menu-delete',
            'imagecache'

        ];*/

    }

    private function getCommonMunus(Menu $menu)
    {
        return $menu->where('is_common_access',true)->get();
    }

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

        $response = $next($request);

        $currentRoute = $request->route()->getName();

        $accessableMenu = $this->menu->where('route_name',$currentRoute)->first();


        if( !is_null($accessableMenu) ){

            foreach($this->routesForAll as $routeName){


                if( $accessableMenu->route_name == $routeName->route_name){

                    return $response;
                }
            }
        }



        if( $this->auth->check() && !is_null($accessableMenu)){

            $userRole = $request->user()->roles()->first()->id;
            $groupAccess = $this->groupAccess->all()->where('menu_id',$accessableMenu->id)
                ->where('role_id',$userRole)->first();

            if(!is_null($groupAccess) && $groupAccess->view){

                return $response;
            }
        }


        abort('404');

    }
}
