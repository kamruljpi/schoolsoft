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
                                <a href="{!! route('section_add_form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar_aziz.section-create') }}</a>
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
                                            <th>{{ trans('translate.sl') }}</th>
                                            <th>{{ trans('translate.section_name') }}</th>
                                            <th>{{ trans('translate.merit_level') }}</th>
                                            <th>{{ trans('translate.class_name') }}</th>
                                            <th>Teacher</th>
                                            <th>{{ trans('translate.status') }}</th>
                                            <th class="text-center th_width_80">{{ trans('translate.action') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @set('sl',1)
                                        @foreach($sectionList as $section)
                                            <tr>
                                                <td>{{ $sl++ }}</td>
                                                <td>{{ $section->section_name or 'Null' }}</td>
                                                <td>{{ $section->merit_level or 'Null' }}</td>
                                                <td>{{ $section->studentClass->class_name or 'Null' }}</td>
                                                <td>{{ $section->classTeacher->translate($locale)? $section->classTeacher->first_name.' '.$section->classTeacher->last_name:$section->classTeacher->translate($defaultLocale)->first_name.' '.$section->classTeacher->translate($defaultLocale)->last_name }}</td>
                                                <td>{{ $section->status or 'Null' }}</td>
                                                <td>
                                                    <a class="btn btn-success btn-xs mrg" data-original-title="{{ trans('translate.edit') }}" data-toggle="tooltip" href="{{ route('section-edit-form',[$section->id]) }}"><i class="fa fa-edit"></i></a>
                                                    <a  class="btn btn-danger btn-xs delete_btn mrg" data-original-title="{{ trans('translate.delete') }}" data-toggle="tooltip" href="{{ route('section-delete', [$section->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
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
