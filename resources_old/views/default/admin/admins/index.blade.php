@inject('usersList','Erp\Lists\UserList')
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
                                <a href="{!! route('admin-add') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.admin-create') }}</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-box">
            <div class="row">
                <div id="datatable">


                    <div class="row last">
                        <div class="col-sm-12">
                            <div class="box">
                                <div class="box-header">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>SL</th>
                                            <th>Photo</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Department</th>
                                            <th>Address</th>
                                            <th>Phone</th>
                                            <th>Gender</th>
                                            <th>Religion</th>
                                            <th>Action</th>

                                        </tr>
                                        </thead>
                                        <tbody>

                                        @set('sl',1)
                                        @foreach($model as $key => $admin)

                                            <tr>
                                                <td>{{$sl++}}</td>
{{--                                                 <td>{!!  Html::image('imagecache/table/'.$photo) !!}</td>--}}
                                                <td><span class="glyphicon glyphicon-user fa-man" aria-hidden="true"></span></td>
                                                <td>
                                                    {{ $admin->translate($locale)? $admin->first_name.' '.$admin->last_name:$admin->translate($defaultLocale)->first_name.' '.$admin->translate($defaultLocale)->last_name }}
                                                </td>
                                                <td>{{$admin->email}}</td>
                                                <td>{{ $admin->department->name }}</td>
                                                <td>{{ $admin->translate($locale,$defaultLocale)->address}}</td>
                                                <td>{{ $admin->phone }}</td>
                                                <td>{{ $admin->gender->translate($locale,$defaultLocale)->gender_name }}</td>
                                                <td>{{ $admin->religion->name }}</td>
                                                <td>
                                                    <a class="btn btn-primary btn-xs mrg" data-original-title="View" data-toggle="tooltip" href="{{ route('admin-view',[$admin->id]) }}">
                                                        <i class="fa fa-check-square-o"></i></a>
                                                    <a class="btn btn-warning btn-xs mrg" data-original-title="Edit" data-toggle="tooltip" href="{{ route('admin-edit',[$admin->id]) }}"><i class="fa fa-edit"></i></a>

                                                    <a  class="btn btn-danger btn-xs mrg" data-original-title="Delete" data-toggle="tooltip" href="{{ route('admin-delete',[$admin->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                </td>

                                            </tr>
                                        @endforeach

                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th>SL</th>
                                            <th>Photo</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Department</th>
                                            <th>Address</th>
                                            <th>Phone</th>
                                            <th>Gender</th>
                                            <th>Religion</th>
                                            <th>Action</th>

                                        </tr>
                                        </tfoot>
                                    </table>

                                    {{--this function is described in the helper/forms.php page and the
                                    parameteres are provided from the relevant controller i.e UsersController in this case--}}
                                    {!! dataTableList($usersList,null,null,$model) !!}
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
