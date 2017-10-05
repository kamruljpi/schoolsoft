<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 3/7/16
 * Time: 1:33 PM
 */

namespace Erp\Http\Middleware;

use Closure;

use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Session;

class PreviousRequest
{

    public function handle($request, Closure $next)
    {


          Session::put('previousRequest',request()->path());

        return $next($request);

       /* dd(request()->path());
        dd(request()->getHttpHost());*/
    }
}