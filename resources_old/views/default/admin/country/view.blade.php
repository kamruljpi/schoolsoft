@extends('default.admin.layouts.master')


@section('head')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-7">
                       <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print_preview') }} </button>
                    <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-5 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.country') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view">
            <table class="table table-bordered table-hover table-responsive view-table-holder">
                    <thead>
                        <tr class="th-bg ">
                            <th colspan="4" class="text-center th_font">
                               Country Information
                                
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Country </td>
                            <td> {{ $countryData->translate($locale)?$countryData->translate($locale)->country_name:$countryData->translate($defaultLocale)->country_name }}</td>
                        </tr>
                        <tr>
                            <td> Status</td>
                            <td> {{ $countryData->status }}</td>

                        </tr>
                    </tbody>
                </table>
         
            <div class="clearfix"></div>
        </div>

    </div>



@endsection


