@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')
    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ strtoupper($viewType) }}
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ strtoupper($viewType) }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print_preview') }} </button>
                    <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-box">
            <div class="row">
                <div class="col-md-12 snt form-horizontal">
                    <a class="btn btn-info" href="{!! route('message-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar_aziz.message-create') }}</a>
                </div>
                <div id="datatable">
                    <div class="row last">
                        <div class="col-sm-12">
                            <div class="box">
                               
                                <div class="box-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                             <th class="th_width_100">{{ trans('translate.sl') }}</th>
                                            <th>{{ trans('translate.name') }}</th>
                                            <th>{{ trans('sidebar.subject') }}</th>
                                            <th>{{ trans('sidebar.date') }}</th>
                                            <th>{{ trans('sidebar.message') }}</th>
                                            <th>{{ trans('translate.status') }}</th>
                                            <th class="text-center th_width_70">{{ trans('translate.action') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        @set('sl',1)
                                        @foreach($trashMessageList as $trash)


                                            <tr>
                                                <td>{{$sl++}}</td>
                                                <td>
                                                    {{ $trash->inboxUser->translate($locale)? $trash->inboxUser->first_name.' '.$trash->inboxUser->last_name:$trash->translate($defaultLocale)->inboxUser->first_name.' '.$trash->translate($defaultLocale)->inboxUser->last_name }}
                                                </td>
                                                <td>
                                                    {{ $trash->translate($locale)? $trash->notice_name:$trash->translate($defaultLocale)->notice_name }}
                                                </td>
                                                <td>{{ $trash->notice_date or 'Null'}}</td>
                                                <td>
                                                    {{ $trash->translate($locale)? $trash->notice_description:$trash->translate($defaultLocale)->notice_description }}
                                                </td>
                                                <td>{{ $trash->status or 'Null'}}</td>
                                                <td>
                                                    <a class="btn btn-primary btn-xs mrg" data-original-title="{{ trans('translate.view') }}" data-toggle="tooltip" href="{{ route('message-trash-view',[$trash->id]) }}">
                                                        <i class="fa fa-check-square-o"></i></a>

                                                </td>

                                            </tr>
                                        @endforeach

                                        </tbody>
                                    </table>

                                    {{--this function is described in the helper/forms.php page and the
                                    parameteres are provided from the relevant controller i.e UsersController in this case--}}
                                    {{--                                    {!! dataTableList($usersList,null,null,$model) !!}--}}
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div> <!--row last-->
                </div>
            </div>
        </div>
    </div>
@endsection