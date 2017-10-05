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
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.class_list') }}
                    </div>
                    <div class="col-md-6 col-xs-7 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <a href="{!! route('class-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar_aziz.class-create') }}</a>
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
                @if (count($errors) > 0)
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                @if(session()->has('success'))
                    <div class="alert alert-success">
                        <ul>

                            <li>{{ session()->get('success') }}</li>

                        </ul>
                    </div>
                @endif
                <div id="datatable">
                    <div class="row last">
                        <div class="col-sm-12">
                            <div class="box">
                                <div class="box-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                           <th class="th_width_100"> {{ trans('translate.sl') }}</th>
                                            <th>{{ trans('translate.class_name') }}</th>
                                            <th>{{ trans('translate.total_result_system') }}</th>
                                            <th>{{ trans('translate.teacher_name') }}</th>
                                            <th>{{ trans('translate.note') }}</th>
                                            <th> {{ trans('translate.status') }}</th>
                                            <th class="text-center th_width_80"> {{ trans('translate.action') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @set('sl',1)

                                        @if(isset($classList) && !$classList->isEmpty())
                                            @foreach($classList as $class)
                                                <tr>
                                                    <td>{{ $sl++ }}</td>
                                                    <td>{{ $class->class_name or 'Not Available' }}</td>
                                                    <td>{{ $class->totalResultSystem->name or 'Not Available' }}</td>
                                                    <td>{{ $class->classTeacher->translate($locale)? $class->classTeacher->first_name.' '.$class->classTeacher->last_name:$class->classTeacher->translate($defaultLocale)->first_name.' '.$class->classTeacher->translate($defaultLocale)->last_name }}</td>
                                                    <td>{{ $class->note or 'Not Available' }}</td>
                                                    <td>{{ $class->status or 'Not Available' }}</td>
                                                    <td>
                                                        <a class="btn btn-success btn-xs mrg" data-original-title="Edit" data-toggle="tooltip" href="{{ route('class-edit-form',[$class->id]) }}"><i class="fa fa-edit"></i></a>
                                                        <a  class="btn btn-danger btn-xs delete_btn mrg" data-original-title="Delete" data-toggle="tooltip" href="{{ route('class-delete', [$class->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        @else
                                            <tr>
                                                <td>
                                                    Sorry !!! No Class Found........
                                                </td>
                                            </tr>


                                        @endif                                        </tbody>
                                    </table>
                                    <div class="pagination">{!!   str_replace('/?','?',$classList->render() ) !!} </div>
                                </div> <!-- box-body -->
                            </div> <!-- box -->
                        </div>
                    </div> <!-- row last -->
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