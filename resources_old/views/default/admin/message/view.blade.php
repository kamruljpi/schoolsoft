
@extends('default.admin.layouts.master')
@section('style')
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
                                <a href="#"> {{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active"> {{ trans('sidebar.message') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view  view-table-holder">
                <table class="table table-striped table-bordered table-hover table-responsive">
                    <thead>
                    <tr class="th-bg ">
                        <th colspan="4" class="th_font text-center">
                          {{ trans('sidebar.message_information') }}
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="th_width_100">To{{ trans('sidebar.to') }}</td>
                        <td>  {{ $messageData->user->translate($locale)? $messageData->user->first_name.' '.$messageData->user->last_name:$messageData->translate($defaultLocale)->user->first_name.' '.$messageData->translate($defaultLocale)->user->last_name }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.subject') }}</td>
                        <td>  {{ $messageData->translate($locale)? $messageData->notice_name:$messageData->translate($defaultLocale)->notice_name }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.date') }}</td>
                        <td> {{ $messageData->notice_date }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.message') }}</td>
                        <td> {{ $messageData->translate($locale)? $messageData->notice_description:$messageData->translate($defaultLocale)->notice_description }}</td>
                    </tr>
                    <tr>
                        <td>  {{ trans('translate.status') }}</td>
                        <td> {{ $messageData->status }}</td>

                    </tr>
                    </tbody>
                </table>
          
            <div class="clearfix"></div>
        </div>

    </div>



@endsection


