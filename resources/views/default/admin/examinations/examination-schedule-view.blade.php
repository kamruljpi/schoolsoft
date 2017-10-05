@extends('default.admin.layouts.master')


@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-6 col-xs-6">
                         <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print_preview') }} </button>
                        <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-6 col-xs-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.examination_schedule') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view"> 
            <div class="row">        
                <table class="table table-striped table-bordered table-hover table-responsive ">
                    <thead>
                    <tr class="th-bg ">
                        <th colspan="4" class="text-center th_font">
                           {{ trans('sidebar.examination_schedule') }}
                        </th>
                    </tr>
                    </thead>
                    <tr>
                        <td class="th_width_150"> {{ trans('sidebar.examination_name') }}</td>
                        <td> {{ $examinationScheduleData->examination->examination_name }}</td>

                    </tr>
                    <tr>
                        <td>{{ trans('translate.class_name') }}</td>
                        <td> {{ $examinationScheduleData->studentClass->class_name }}</td>

                    </tr>
                    <tr>
                        <td> {{ trans('translate.section_name') }}</td>
                        <td>   {{ $examinationScheduleData->section->section_name }}</td>

                    </tr>
                    <tr>
                        <td> {{ trans('translate.subject_name') }}</td>
                        <td> {{ $examinationScheduleData->subject->subject_name }}</td>

                    </tr>
                    <tr>
                        <td>{{ trans('translate.building_name') }}</td>
                        <td> {{ $examinationScheduleData->building->building_name }}</td>

                    </tr>
                    <tr>

                        <td> {{ trans('translate.floor_name') }}</td>
                        <td> {{ $examinationScheduleData->floor->floor_name  }}</td>

                    </tr>
                    <tr>
                        <td>{{ trans('translate.room_name') }}</td>
                        <td> {{ $examinationScheduleData->room->room_name }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('translate.date') }}</td>
                        <td> {{ $examinationScheduleData->examination_date }}</td>

                    </tr>
                    <tr>
                        <td>{{ trans('translate.start_time') }}</td>
                        <td> {{ $examinationScheduleData->start_time }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('translate.end_time') }}</td>
                        <td> {{ $examinationScheduleData->end_time }}</td>
                    </tr>
                    <tr>
                        <td>  {{ trans('translate.status') }}</td>
                        <td> {{ $examinationScheduleData->status }}</td>
                    </tr>
                </table>
          
                <div class="clearfix"></div>
            </div> 
        </div>

    </div>



@endsection


