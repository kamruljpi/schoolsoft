{{--@inject('shiftList','Erp\Lists\ShiftList')--}}
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
                                <a href="{!! route('shift-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.shift-create') }}</a>
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

                    <button class="btn btn-primary"><span class="fa fa-file"></span> Edit</button>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-box">
            <div class="row">
                <div id="datatable">
                    <div class="row last">
                        <div class="col-sm-12">
                            <div class="box">
                                <div class="box-body auto_scroll">
                                    <table class="table table-bordered table-striped table-responsive">
                                        <thead>
                                        <tr>
                                            <th>SL</th>
                                            <th>Shift Name</th>
                                            <th>Saturday In</th>
                                            <th>Saturday Out</th>
                                            <th>Sunday In</th>
                                            <th>Sunday Out</th>
                                            <th>Monday In</th>
                                            <th>Monday Out</th>
                                            <th>Tuesday In</th>
                                            <th>Tuesday Out</th>
                                            <th>Wednesday In</th>
                                            <th>Wednesday Out</th>
                                            <th>Thursday In</th>
                                            <th>Thursday Out</th>
                                            <th>Friday Out</th>
                                            <th>Friday Out</th>
                                            <th class="text-center">Action</th>

                                        </tr>
                                        </thead>
                                        <tbody>
                                        @set('sl',1)
                                        @foreach($shifts as  $shift)
                                            {{--{{ dd(json_decode($shift->contents)) }}--}}

                                            <tr>
                                                <td>{{$sl++}}</td>

                                                <td>{{ $shift->translate($locale,$defaultLocale)->name }}</td>

                                                <td>{{ json_decode($shift->contents)->sat_in }}</td>
                                                <td>{{ json_decode($shift->contents)->sat_out}}</td>
                                                <td>{{ json_decode($shift->contents)->sun_in }}</td>
                                                <td>{{ json_decode($shift->contents)->sun_out}}</td>
                                                <td>{{ json_decode($shift->contents)->mon_in }}</td>
                                                <td>{{ json_decode($shift->contents)->mon_out }}</td>
                                                <td>{{ json_decode($shift->contents)->tue_in }}</td>
                                                <td>{{ json_decode($shift->contents)->tue_out }}</td>
                                                <td>{{ json_decode($shift->contents)->wed_in }}</td>
                                                <td>{{ json_decode($shift->contents)->wed_out }}</td>
                                                <td>{{ json_decode($shift->contents)->thu_in }}</td>
                                                <td>{{ json_decode($shift->contents)->thu_out }}</td>
                                                <td>{{ json_decode($shift->contents)->fri_in  }}</td>
                                                <td>{{ json_decode($shift->contents)->fri_out }}</td>
                                                <td class="text-center">
                                                    <a class="btn btn-info btn-xs mrg" data-original-title="View" data-toggle="tooltip" href="{{ route('shift-view',[$shift->id]) }}">
                                                        <i class="fa fa-check-square-o"></i></a>
                                                    <a class="btn btn-success btn-xs mrg" data-original-title="Edit" data-toggle="tooltip" href="{{ route('shift-edit-form',[$shift->id]) }}"><i class="fa fa-edit"></i></a>

                                                    <a  class="btn btn-danger btn-xs delete_btn mrg" data-original-title="Delete" data-toggle="tooltip" href="{{ route('shift-delete',[$shift->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                </td>

                                            </tr>
                                        @endforeach

                                        </tbody>
                                    </table>
                                    {{--this function is described in the helper/forms.php page and the
                                    parameteres are provided from the relevant controller i.e UsersController in this case--}}
                                    {{--                                    {!! dataTableList($roleList,$locale,$defaultLocale,$model) !!}--}}
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div> <!--row last-->
                </div>
            </div>
        </div>
    </div>



@endsection
