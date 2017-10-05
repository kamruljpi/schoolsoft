<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 6/18/16
 * Time: 12:12 PM
 */

namespace Erp\Http\Controllers;


abstract class ProjectController extends Controller
{


    protected function modelList($model)
    {
        return $model->paginate(1);
    }
}