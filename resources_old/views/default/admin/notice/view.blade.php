@extends('default.admin.layouts.master')


@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid min_height_area" >
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
                                <a href="#"> {{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active"> {{ trans('sidebar.notice') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view view-table-holder">
            <table class="table table-striped table-bordered table-hover table-responsive ">
                    <thead>
                    <tr class="th-bg ">
                        <th colspan="4" class="th_font text-center">
                           {{ trans('sidebar.notice_information') }}
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="th_width_100">{{ trans('sidebar.title') }} </td>
                        <td>  {{ $noticeData->translate($locale)? $noticeData->notice_name:$noticeData->translate($defaultLocale)->notice_name }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.date') }} </td>
                        <td> {{ $noticeData->notice_date }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.description') }} </td>
                        <td> {{ $noticeData->translate($locale)? $noticeData->notice_description:$noticeData->translate($defaultLocale)->notice_description }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('translate.status') }}</td>
                        <td> {{ $noticeData->status }}</td>

                    </tr>
                    </tbody>
                </table>
           
            <div class="clearfix"></div>
        </div>

    </div>



@endsection


