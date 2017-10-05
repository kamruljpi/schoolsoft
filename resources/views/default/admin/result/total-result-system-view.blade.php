@extends('default.admin.layouts.master')


@section('head')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')
    <div class="container-fluid min_height_area">
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
                            <li class="active">{{ trans('translate.total_result_system') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view view-table-holder m_bottom_40">
            <table class="table table-bordered table-hover table-responsive view-table-holder">
                <thead>
                <tr class="th-bg ">
                    <th colspan="4" class="th_font text-center">

                        {{ trans('translate.total_result_system') }}
                    </th>
                </tr>
                <tr class="th-bg ">
                    <th colspan="4" class="th_font-small text-center">
                        {{ trans('translate.name') }}:  {{ $totalResultSystemData->name }}
                    </th>
                </tr>
                </thead>
            </table>
            @foreach($test as $testValue)
                @set('testVar',json_decode($testValue->settings))

                <fieldset>
                    <legend>
                        {{ trans('sidebar.marks_settings') }}
                    </legend>

                    <table class="table table-bordered table-hover table-responsive table-striped">
                        <tr>
                            <td>{{ trans('sidebar.gcd') }}</td>
                            <td class="th_width_100"> {{ $testVar->grade_class }}</td>
                        </tr>
                        <tr>
                            <td> {{ trans('sidebar.gpa') }}</td>
                            <td> {{ $testVar->gpa }}</td>
                        </tr>
                        <tr>
                            <td>{{ trans('sidebar.sub_min_mark') }} </td>
                            <td> {{ $testVar->sub_min }}</td>
                        </tr>
                        <tr>
                            <td> {{ trans('sidebar.sub_max_mark') }} </td>
                            <td> {{ $testVar->sub_max }}</td>
                        </tr>
                        <tr>
                            <td>{{ trans('sidebar.total_min_mark') }}  </td>
                            <td> {{ $testVar->total_min }}</td>
                        </tr>
                        <tr>
                            <td>{{ trans('sidebar.total_max_mark') }} </td>
                            <td > {{ $testVar->total_max }}</td>
                        </tr>
                    </table>
                </fieldset>
            @endforeach
        </div>
        <br>
    </div>
    </div>
    </div>
@endsection