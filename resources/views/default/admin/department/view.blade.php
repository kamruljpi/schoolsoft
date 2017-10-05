@extends('default.admin.layouts.master')


@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid min_height_area" >
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-7 col-xs-6">
                       <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
                        <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-5 col-xs-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('translate.dashboard') }}</a></li>
                            <li class="active">{{ trans('translate.department') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view">
            <div class="row">          
                <table class="table table-striped table-bordered table-hover table-responsive ">
                    <thead>
                    <tr class="th-bg ">
                        <th colspan="4" class="th_font text-center">
                          {{ trans('translate.department_information') }}
                        </th>
                    </tr>


                    </thead>

                    <tbody>


                    <tr>
                        <td class="th_width_100">{{ trans('translate.department') }} </td>
                        <td> {{ $departmentToView->name  }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('translate.status') }}</td>
                        <td> {{ $departmentToView->status }}</td>

                    </tr>

                    </tbody>
                </table>
           
                <div class="clearfix"></div>
            </div> 
        </div>

    </div>



@endsection


