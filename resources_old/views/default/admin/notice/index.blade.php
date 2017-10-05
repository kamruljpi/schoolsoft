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
                                <a href="{!! route('notice-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar_aziz.notice-create') }}</a>
                            </li>
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
                <div id="datatable">


                    <div class="row last">
                        <div class="col-sm-12">
                            <div class="box">
                               
                                <div class="box-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th class="text-center th_width_100"> {{ trans('translate.sl') }}</th>
                                            <th>{{ trans('sidebar.title') }}</th>
                                            <th>{{ trans('sidebar.date') }}</th>
                                            <th>{{ trans('sidebar.notice') }}</th>
                                            <th> {{ trans('translate.status') }}</th>
                                            <th class="text-center th_width_100"> {{ trans('translate.action') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        @set('sl',1)
                                        @foreach($noticeList as $notice)


                                            <tr>
                                                <td>{{$sl++}}</td>
                                                <td>
                                                    {{ $notice->translate($locale)? $notice->notice_name:$notice->translate($defaultLocale)->notice_name }}
                                                </td>
                                                <td>{{ $notice->notice_date or 'Null'}}</td>
                                                <td>
                                                    {{ $notice->translate($locale)? $notice->notice_description:$notice->translate($defaultLocale)->notice_description }}
                                                </td>
                                                <td>{{ $notice->status or 'Null'}}</td>
                                                <td>
                                                    <a class="btn btn-primary btn-xs mrg" data-original-title=" {{ trans('translate.view') }}" data-toggle="tooltip" href="{{ route('notice-view',[$notice->id]) }}">
                                                        <i class="fa fa-check-square-o"></i></a>
                                                    <a class="btn btn-success btn-xs mrg" data-original-title=" {{ trans('translate.edit') }}" data-toggle="tooltip" href="{{ route('notice-edit-form',[$notice->id]) }}"><i class="fa fa-edit"></i></a>

                                                    <a  class="btn btn-danger btn-xs delete_btn mrg" data-original-title=" {{ trans('translate.delete') }}" data-toggle="tooltip" href="{{ route('notice-delete',[$notice->id]) }}"><i class="fa fa-trash-o"></i></a>
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
@section('scripts')

    @parent
    <script src="{{ asset('theme_components/admin/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    {!! Html::script('theme_components/admin/plugins/datatables/dataTables.bootstrap.min.js') !!}

@endsection