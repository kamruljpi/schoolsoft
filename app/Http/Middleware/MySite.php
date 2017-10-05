<?php

namespace Erp\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Session;

class MySite
{
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

        $siteToRecollect = $request->route()->getParameter('siteinfo');
//        dd($siteToRecollect);
        if(!Session::get(SITE_ID)) {
            $siteInfo = new \Erp\Models\Site\SiteInfo();
//            $siteToRecollect = $siteInfo->where('site_alias', 'site-alias2')->first();
            if (isset($siteToRecollect->id) && !empty($siteToRecollect->id) && $siteToRecollect->id != 0) {
//                Session::put(SITE_ID,$siteToRecollect->id);
                session()->put(SITE_ID, $siteToRecollect->id);
            } else {
//                Session::put(SITE_ID,0);
                session()->put(SITE_ID, 1);
            }
        }
        return  $response;
    }
}
