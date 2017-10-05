@extends('default.admin.layouts.master')


@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-7 col-xs-6">
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print_preview') }} </button>
                        <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-5 col-xs-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.subject') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view ">
            <div class="row">
                <table class="table table-bordered table-hover table-striped table-responsive ">
                    <thead>
                    <tr class="th-bg ">
                        <th colspan="4" class="text-center th_font">
                            {{ trans('sidebar.subject_information') }}
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="th_width_150">{{ trans('translate.class_name') }}</td>
                        <td>
                            @if(isset($subject->studentClass) && !empty($subject->studentClass))
                                {{ $subject->studentClass->class_name or 'Not Available' }}
                            @else
                                Sorry !!!! No Class Name Given .....
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.teacher_name') }}</td>
                        <td>
                            @if(isset($subject->classTeacher) && !empty($subject->classTeacher))
                                {{ $subject->classTeacher->translate($locale)? $subject->classTeacher->first_name.' '.$subject->classTeacher->last_name:$subject->classTeacher->translate($defaultLocale)->first_name.' '.$subject->translate($defaultLocale)->last_name }}
                            @else
                                Sorry !!!! No Classteacher Assigned .....
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.subject_name') }}</td>
                        <td>{{ $subject->subject_name or 'Not Available' }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.subject_author') }}</td>
                        <td>{{ $subject->subject_author or 'Not Available' }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.subject_code') }}</td>
                        <td>{{ $subject->subject_code or 'Not Available' }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.subject_credit') }}</td>
                        <td>{{ $subject->subject_credit or 'Not Available' }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.result_system') }}</td>
                        <td>{{ $subject->resultSystem->name or 'Not Available' }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.total_marks') }}</td>
                        <td>{{ $subject->subject_total_marks or 'Not Available' }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.status') }}</td>
                        <td>{{ $subject->status or 'Not Available' }}</td>
                    </tr>
                    </tbody>
                </table>

                <div class="clearfix"></div>
            </div>
        </div>

    </div>



@endsection


