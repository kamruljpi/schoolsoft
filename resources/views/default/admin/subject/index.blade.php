@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6 col-xs-5">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.subject_list') }}
                    </div>
                    <div class="col-md-6 col-xs-7 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <a href="{!! route('subject-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar_aziz.subject-create') }}</a>
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
                                <div class="box-body auto_scroll">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>{{ trans('translate.sl') }}</th>
                                            <th>{{ trans('translate.class_name') }}</th>
                                            <th>{{ trans('translate.teacher_name') }}</th>
                                            <th>{{ trans('translate.subject_name') }}</th>
                                            <th>{{ trans('translate.subject_author') }}</th>
                                            <th>{{ trans('translate.subject_code') }}</th>
                                            <th>{{ trans('translate.subject_credit') }}</th>
                                            <th>{{ trans('translate.status') }}</th>
                                            <th class="text-center th_width_100">{{ trans('translate.action') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @set('sl',1)

                                        @if(isset($subjectList) && !$subjectList->isEmpty())
                                            @foreach($subjectList as $subject)
                                                <tr>
                                                    <td>{{ $sl++ }}</td>
                                                    <td>
                                                        @if(isset($subject->studentClass) && !empty($subject->studentClass))


                                                            {{ $subject->studentClass->class_name or 'Not Available' }}


                                                        @else

                                                            Sorry !!!! No Class Name Given .....

                                                        @endif

                                                    </td>

                                                    <td>

                                                        @if(isset($subject->classTeacher) && !empty($subject->classTeacher))


                                                            {{ $subject->classTeacher->translate($locale)? $subject->classTeacher->first_name.' '.$subject->classTeacher->last_name:$subject->classTeacher->translate($defaultLocale)->first_name.' '.$subject->translate($defaultLocale)->last_name }}


                                                        @else

                                                            Sorry !!!! No Classteacher Assigned .....

                                                        @endif


                                                    </td>

                                                    <td>{{ $subject->subject_name or 'Not Available' }}</td>
                                                    <td>{{ $subject->subject_author or 'Not Available' }}</td>
                                                    <td>{{ $subject->subject_code or 'Not Available' }}</td>
                                                    <td>{{ $subject->subject_credit or 'Not Available' }}</td>
                                                    <td>{{ $subject->status or 'Not Available' }}</td>
                                                    <td>
                                                        <a class="btn btn-primary btn-xs mrg" data-original-title="{{ trans('translate.view') }}" data-toggle="tooltip" href="{{ route('subject-view',[$subject->id]) }}">
                                                            <i class="fa fa-check-square-o"></i></a>
                                                        <a class="btn btn-success btn-xs mrg" data-original-title="{{ trans('translate.edit') }}" data-toggle="tooltip" href="{{ route('subject-edit-form',[$subject->id]) }}"><i class="fa fa-edit"></i></a>
                                                        <a  class="btn btn-danger btn-xs delete_btn mrg" data-original-title="{{ trans('translate.delete') }}" data-toggle="tooltip" href="{{ route('subject-delete', [$subject->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        @else
                                            <tr>
                                                <td>
                                                    Sorry !!! No Subjects Found........
                                                </td>
                                            </tr>


                                        @endif
                                        </tbody>
                                    </table>
                                    <div class="pagination">{!!   str_replace('/?','?',$subjectList->render() ) !!} </div>
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
