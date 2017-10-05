<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 1/2/16
 * Time: 4:55 PM
 */

namespace Erp\Http\Controllers\Language;


trait Lang
{

    protected $locales;
    protected $defaultLocale;
    protected $globalLocale;

    /**
     * @return mixed
     */
    public function chosenLanguage()
    {
        if($this->globalLocale()){
            $locale = $this->globalLocale();
        }else{
            $locale = $this->defaultLocale();
        }
        return $locale;
    }

    /**
     * @return mixed
     */
    public function locales()
    {
        $this->locales=config('app.locales');

        return  $this->locales;
    }

    /**
     * @return mixed
     */
    public function defaultLocale()
    {
        $this->defaultLocale = config('app.fallback_locale');

        return $this->defaultLocale;
    }

    /**
     * @return mixed
     */
    public function globalLocale()
    {
        $this->globalLocale = session()->get('locale');

        return $this->globalLocale;
    }


}