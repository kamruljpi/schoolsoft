@extends('default.admin.layouts.master')


@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-7 col-xs-6">
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print_preview') }} </button>
                        <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-5 col-xs-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.professional_qualification') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view">
            <div class="row">
                <table class="table table-bordered table-hover table-striped table-responsive ">
                    <thead>
                    <tr class="th-bg ">
                        <th colspan="4" class="text-center th_font">
                            {{ trans('sidebar.pro_qua_info') }}
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="th_width_150"> {{ trans('sidebar.certification') }}</td>
                        <td>  {{ $professionalQualificationData->translate($locale)? $professionalQualificationData->certification:$professionalQualificationData->translate($defaultLocale)->certification }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.institute') }}</td>
                        <td>  {{ $professionalQualificationData->translate($locale)? $professionalQualificationData->institute_name:$professionalQualificationData->translate($defaultLocale)->institute_name }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.location') }}</td>
                        <td>  {{ $professionalQualificationData->translate($locale)? $professionalQualificationData->location:$professionalQualificationData->translate($defaultLocale)->location }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.from') }}</td>
                        <td> {{ $professionalQualificationData->from_date }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.to') }}</td>
                        <td> {{ $professionalQualificationData->to_date }}</td>
                    </tr>
                    <tr>
                        <td>  {{ trans('translate.status') }}</td>
                        <td> {{ $professionalQualificationData->status }}</td>
                    </tr>
                    </tbody>
                </table>

                <div class="clearfix"></div>
            </div>
        </div>

    </div>



@endsection


