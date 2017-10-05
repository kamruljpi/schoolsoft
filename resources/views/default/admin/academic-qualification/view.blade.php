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
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
                        <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-5 col-xs-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashbaord') }}</a></li>
                            <li class="active">{{ trans('sidebar.accademic_qualification') }}</li>
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
                            {{ trans('sidebar.accademic_qualification_info') }}
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="th_width_150">  {{ trans('sidebar.level_edu') }}</td>
                        <td>  {{ $academicQualificationData->translate($locale)? $academicQualificationData->academicQualificationOfEducationLevel->education_level_name:$academicQualificationData->translate($defaultLocale)->academicQualificationOfEducationLevel->education_level_name }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.degree_title') }}</td>
                        <td>  {{ $academicQualificationData->translate($locale)? $academicQualificationData->degree_title:$academicQualificationData->translate($defaultLocale)->degree_title }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.concentration') }}</td>
                        <td>  {{ $academicQualificationData->translate($locale)? $academicQualificationData->major:$academicQualificationData->translate($defaultLocale)->major }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.institute_name') }}</td>
                        <td>  {{ $academicQualificationData->translate($locale)? $academicQualificationData->institute_name:$academicQualificationData->translate($defaultLocale)->institute_name }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.result') }}</td>
                        <td>  {{ $academicQualificationData->translate($locale)? $academicQualificationData->result:$academicQualificationData->translate($defaultLocale)->result }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.passing_year') }}</td>
                        <td> {{ $academicQualificationData->year_of_passing }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.duration') }}</td>
                        <td> {{ $academicQualificationData->duration }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.achievement') }}</td>
                        <td>  {{ $academicQualificationData->translate($locale)? $academicQualificationData->achievement:$academicQualificationData->translate($defaultLocale)->achievement }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('translate.status') }}</td>
                        <td> {{ $academicQualificationData->status }}</td>
                    </tr>
                    </tbody>
                </table>
                <div class="clearfix"></div>
            </div>
        </div>

    </div>



@endsection


