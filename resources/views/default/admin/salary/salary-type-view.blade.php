@extends('default.admin.layouts.master')


@section('head')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid min_height_area" >
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-6 col-xs-6">                     
                         <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print_preview') }} </button>
                        <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-6 col-xs-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.relgion') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="row margin-top-area">
            <div class="col-md-12 view">
               
               <table class="table table-bordered table-hover table-responsive view-table-holder">
                    <thead>
                       <tr class="th-bg ">
                           <th colspan="4" class="text-center">
                               <div class="view-picture">
                               <h3>
                               {{ trans('sidebar.religion_information') }}</h3>
                               </div>
                            </th>
                        </tr>


                   </thead>

                   <tbody>


                       <tr>
                           <td> {{ trans('sidebar.role') }}</td>
                           <td> {{ $religionToView->name  }}</td>
                       </tr>
                        <tr>
                           <td> {{ trans('sidebar.role_description') }}</td>
                           <td> {{ $religionToView->label }}</td>
                                                   
                       </tr>

                   </tbody>
               </table> 
            </div>
            <div class="clearfix"></div>
        </div>

    </div>



@endsection


