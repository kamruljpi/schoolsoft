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
                    <div class="col-md-6 col-xs-5">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.shift_list') }}
                    </div>
                    <div class="col-md-6 col-xs-7 snt">
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
                     <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
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
                                <div class="box-body auto_scroll auto_scroll_other">
                                    <table class="table table-bordered table-striped table-responsive">
                                        <thead>
                                        <tr>
                                            <th>{{ trans('translate.sl') }}</th>
                                            <th>{{ trans('sidebar.shift_name') }}</th>
                                            <th>{{ trans('sidebar.saturday_in') }}</th>
                                            <th>{{ trans('sidebar.saturday_out') }}</th>
                                            <th>{{ trans('sidebar.sunday_in') }}</th>
                                            <th>{{ trans('sidebar.sunday_out') }}</th>
                                            <th>{{ trans('sidebar.monday_in') }}</th>
                                            <th>{{ trans('sidebar.monday_out') }}</th>
                                            <th>{{ trans('sidebar.tuesday_in') }}</th>
                                            <th>{{ trans('sidebar.tuesday_out') }}</th>
                                            <th>{{ trans('sidebar.wednesday_in') }}</th>
                                            <th>{{ trans('sidebar.wednesday_out') }}</th>
                                            <th>{{ trans('sidebar.thursday_in') }}</th>
                                            <th>{{ trans('sidebar.thursday_out') }}</th>
                                            <th>{{ trans('sidebar.friday_in') }}</th>
                                            <th>{{ trans('sidebar.friday_out') }}</th>
                                            <th class="text-center">{{ trans('translate.action') }}</th>

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
                                                    {{--<a class="btn btn-info btn-xs mrg" data-original-title="View" data-toggle="tooltip" href="{{ route('shift-view',[$shift->id]) }}">--}}
                                                        {{--<i class="fa fa-check-square-o"></i></a>--}}
                                                    {{--<a class="btn btn-success btn-xs mrg" data-original-title="Edit" data-toggle="tooltip" href="{{ route('shift-edit-form',[$shift->id]) }}"><i class="fa fa-edit"></i></a>--}}

                                                    <a  class="btn btn-danger btn-xs delete_btn mrg" data-original-title="Delete" data-toggle="tooltip" href="{{ route('shift-delete',[$shift->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                </td>

                                            </tr>
                                        @endforeach

                                        </tbody>
                                    </table>
                                    <div class="pagination">{!!   str_replace('/?','?',$shifts->render() ) !!} </div>
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
