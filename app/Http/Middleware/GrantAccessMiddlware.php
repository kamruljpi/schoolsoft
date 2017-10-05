<?php

namespace Erp\Http\Middleware;

use Closure;
use Erp\Models\Menu\Menu;
use Erp\Models\Permission\GroupAccess;
use Illuminate\Contracts\Auth\Guard;
use Symfony\Component\HttpFoundation\File\Exception\AccessDeniedException;

//use Illuminate\Routing\Router;

//use Illuminate\Support\Facades\Route;

class GrantAccessMiddlware
{
    private $groupAccess;
    private $auth;
    private $menu;
    

    public function __construct(GroupAccess $groupAccess,Menu $menu, Guard  $auth)
    {
        $this->groupAccess = $groupAccess;
        $this->menu = $menu;
        $this->auth = $auth;

    }

    private function getCommonMenus(Menu $menu)
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

        $accessibleMenu = $this->menu->where('route_name',$currentRoute)->first();
        $routesForAll = $this->getCommonMenus($this->menu)->pluck('route_name')->toArray();

        if( !is_null($accessibleMenu) && in_array($accessibleMenu->route_name,$routesForAll)){
            return $response;
        }


        if( $this->auth->check() && !is_null($accessibleMenu)){

            $userRole = $request->user()->roles()->first()->id;
            $groupAccess = $this->groupAccess->where(['menu_id'=>$accessibleMenu->id,'role_id'=>$userRole])->first();

            if(!is_null($groupAccess) && $groupAccess->view){

                return $response;
            }
        }


        abort('404');

    }
}
