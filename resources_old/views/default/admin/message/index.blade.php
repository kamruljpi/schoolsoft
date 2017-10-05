@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')
    <div class="container-fluid min_height_area" >
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
                                            <th>{{ trans('translate.sl') }}</th>
                                            <th>{{ trans('translate.name') }}</th>
                                            <th>{{ trans('sidebar.subject') }}</th>
                                            <th>{{ trans('sidebar.date') }}</th>
                                            <th>{{ trans('sidebar.message') }}</th>
                                            <th>{{ trans('translate.status') }}</th>
                                            <th class="text-center th_width_80">{{ trans('translate.action') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        @set('sl',1)
                                        @foreach($messageList as $message)


                                            <tr>
                                                <td>{{$sl++}}</td>
                                                <td>
                                                    {{ $message->user->translate($locale)? $message->user->first_name.' '.$message->user->last_name:$message->translate($defaultLocale)->user->first_name.' '.$message->translate($defaultLocale)->user->last_name }}
                                                </td>
                                                <td>
                                                    {{ $message->translate($locale)? $message->notice_name:$message->translate($defaultLocale)->notice_name }}
                                                </td>
                                                <td>{{ $message->notice_date or 'Null'}}</td>
                                                <td>
                                                    {{ $message->translate($locale)? $message->notice_description:$message->translate($defaultLocale)->notice_description }}
                                                </td>
                                                <td>{{ $message->status or 'Null'}}</td>
                                                <td>
                                                    <a class="btn btn-primary btn-xs mrg" data-original-title="{{ trans('translate.view') }}" data-toggle="tooltip" href="{{ route('message-view',[$message->id]) }}">
                                                        <i class="fa fa-check-square-o"></i></a>
                                                    <a class="btn btn-warning btn-xs mrg" data-original-title="{{ trans('translate.edit') }}" data-toggle="tooltip" href="{{ route('message-edit-form',[$message->id]) }}"><i class="fa fa-edit"></i></a>

                                                    <a  class="btn btn-danger btn-xs mrg" data-original-title="{{ trans('translate.delete') }}" data-toggle="tooltip" href="{{ route('message-delete',[$message->id]) }}"><i class="fa fa-trash-o"></i></a>
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