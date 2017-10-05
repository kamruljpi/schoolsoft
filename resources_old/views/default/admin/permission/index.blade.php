@inject('roleList','Erp\Lists\PermissionList')
@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')

    <div class="container-fluid" style="min-height: 1215px;">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ strtoupper($viewType) }}
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <a href="{!! route('permission-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.permission-create') }}</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> Print </button>
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> Print Preview </button>

                    <button class="btn btn-primary"><span class="fa fa-file"></span> PDF Preview </button>

                    <button class="btn btn-primary"><span class="fa fa-file"></span> Edit</button>
                    <button class="btn btn-primary"><span class="fa fa-file"></span> Send Mail as Pdf </button>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-box">
            <div class="row margin-top-area">
                <div id="datatable">
                    <div class="row last">
                        <div class="col-sm-12">
                            <div class="box">
                                <div class="box-body auto_scroll">

                                    <table id="example1" class="table table-bordered table-striped table-responsive">
                                        <thead>
                                        <tr>
                                            <th>SL</th>
                                            <th>Permission Name</th>
                                            <th>Description</th>
                                            <th>Status</th>
                                            <th class=" text-center th_width_100">Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @set('sl',1)
                                        @foreach($model as $permission)
                                            <tr>
                                                <td>{{ $sl++ }}</td>
                                                <td>{{ $permission->name or 'Null' }}</td>
                                                <td>{{ $permission->label or 'Null' }}</td>
                                                <td>{{ $permission->status or 'Null' }}</td>

                                                <td class="text-center">
                                                    <a class="btn btn-info btn-xs mrg" data-original-title="View" data-toggle="tooltip" href="{{ route('permission-view',[$permission->id]) }}"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-success btn-xs mrg" data-original-title="Edit" data-toggle="tooltip" href="{{ route('permission-edit-form',[$permission->id]) }}"><i class="fa fa-edit"></i></a>
                                                    <a  class="btn btn-danger btn-xs delete_btn mrg" data-original-title="Delete" data-toggle="tooltip" href="{{ route('permission-delete',[$permission->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>

                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div> <!--row last-->
                </div>
            </div>
        </div>
    </div>



@endsection
