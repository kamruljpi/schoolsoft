@extends('default.admin.layouts.master')


@section('head')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid min_height_area" >
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-6">
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print_preview') }} </button>
                    <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.division') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view">
           <table class="table table-bordered table-hover table-responsive view-table-holder">
                    <thead>
                    <tr class="th-bg ">
                        <th colspan="4" class="th_font text-center">
                           {{ trans('sidebar. division_information') }}
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td> {{ trans('sidebar.country') }}</td>
                        <td>  {{ $divisionData->translate($locale)? $divisionData->country->country_name:$divisionData->translate($defaultLocale)->country->country_name }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.division') }}</td>
                        <td> {{ $divisionData->translate($locale)?$divisionData->translate($locale)->division_name:$divisionData->translate($defaultLocale)->division_name }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('translate.status') }}</td>
                        <td> {{ $divisionData->status }}</td>

                    </tr>
                    </tbody>
                </table>
         
            <div class="clearfix"></div>
        </div>

    </div>



@endsection


