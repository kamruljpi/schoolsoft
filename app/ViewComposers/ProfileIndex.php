<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 1/27/16
 * Time: 2:50 PM
 */

namespace Erp\ViewComposers;


class ProfileIndex
{
    private  $image;

    public function compose($view){

        if(Auth::check() ){

            if(!is_null( Auth::user()->profile)){


                /* $hasImage = Auth::user()->profile->images;*/

                if(count(Auth::user()->profile->images)>0){

//                    $this->image = Auth::user()->profile->images[0]->path;
                    $view->with('hasProfileImage',Auth::user()->profile->images[0]->path);

                }else{

                    $view->with('hasProfileImage',null);
                }



            }else{

                $view->with('createProfile','pls create your profile');
            }


        }


    }

}