@inject('shiftList','Erp\Lists\ShiftList')
{{--@extends('default.admin.layouts.master')--}}

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
                                <a href="#">Dashboard</a></li>
                            <li class="active">{{ strtoupper($viewType) }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-box">
            <div class="row margin-top-area">
                <div id="datatable">
                    <div class="row last">
                        <div class="col-sm-12">
                            <div class="box">
                                <div class="box-header">
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    <table id="example1" class="table table-bordered table-striped">
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
                                            <th>Action</th>

                                        </tr>
                                        </thead>
                                        <tbody>
                                        @set('sl',1)
                                        @foreach($shifts as  $shift)


                                            <tr>
                                                <td>{{$sl++}}</td>

                                                <td>{{ $shift->translate($locale,$defaultLocale)->name }}</td>

                                                <td>{{ $shift->contents->sat_in or 'Not Available'}}</td>
                                                <td>{{ $shift->contents->sat_out or 'Not Available'}}</td>
                                                <td>{{ $shift->contents->sun_in or 'Not Available'}}</td>
                                                <td>{{ $shift->contents->sun_out or 'Not Available'}}</td>
                                                <td>{{ $shift->contents->mon_in or 'Not Available'}}</td>
                                                <td>{{ $shift->contents->mon_out or 'Not Available'}}</td>
                                                <td>{{ $shift->contents->tues_in or 'Not Available'}}</td>
                                                <td>{{ $shift->contents->tues_out or 'Not Available'}}</td>
                                                <td>{{ $shift->contents->wed_in or 'Not Available'}}</td>
                                                <td>{{ $shift->contents->wed_out or 'Not Available'}}</td>
                                                <td>{{ $shift->contents->thurs_in or 'Not Available'}}</td>
                                                <td>{{ $shift->contents->thurs_out or 'Not Available'}}</td>
                                                <td>{{ $shift->contents->fri_in or 'Not Available'}}</td>
                                                <td>{{ $shift->contents->fri_out or 'Not Available'}}</td>
                                                <td>
                                                    <a class="btn btn-primary btn-xs mrg" data-original-title="View" data-toggle="tooltip" href="{{ route('shift-view',[$shift->id]) }}">
                                                        <i class="fa fa-check-square-o"></i></a>
                                                    <a class="btn btn-warning btn-xs mrg" data-original-title="Edit" data-toggle="tooltip" href="{{ route('shift-edit-form',[$shift->id]) }}"><i class="fa fa-edit"></i></a>

                                                    <a  class="btn btn-danger btn-xs mrg" data-original-title="Delete" data-toggle="tooltip" href="{{ route('shift-delete',[$shift->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                </td>

                                            </tr>
                                        @endforeach

                                        </tbody>
                                        <tfoot>
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
                                            <th>Friday In</th>
                                            <th>Friday Out</th>
                                            <th>Action</th>

                                        </tr>
                                        </tfoot>
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
@section('scripts')

    @parent
    <script src="{{ asset('theme_components/admin/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    {!! Html::script('theme_components/admin/plugins/datatables/dataTables.bootstrap.min.js') !!}

    <script>
        $(function () {
            $("#example1").DataTable();
            $('#example2').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": false,
                "ordering": true,
                "info": true,
                "autoWidth": false
            });
        });
    </script>

@endsection