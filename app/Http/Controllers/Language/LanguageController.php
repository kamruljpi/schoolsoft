<?php

namespace Erp\Http\Controllers\Language;

use Erp\Http\Controllers\ProjectController;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;
use Illuminate\Foundation\Application;

class LanguageController extends ProjectController
{
    private $app;

    public function __construct(Application $app)
    {

        $this->middleware('auth');

        $this->app = $app;
    }

    public function langChooser($locale)
    {
//dd(siteId());
        if( is_null($locale))
            abort(404);

          !array_key_exists($locale, $this->app->config->get('app.locales')) ?
              $locale = $this->app->config->get('app.fallback_locale'): $locale= $locale;

        Session::put('locale',$locale);
        $this->app->setLocale($locale);

        return redirect()->back();


    }
}
