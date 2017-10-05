@extends('default.admin.layouts.master')


@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-6">
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> Print </button>
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> Print Preview </button>
                        <button class="btn btn-primary"><span class="fa fa-file"></span> Edit</button>
                    </div>
                    <div class="col-md-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">Dashboard</a></li>
                            <li class="active">Examination Schedule</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view">          
                <table class="table table-striped table-bordered table-hover table-responsive ">
                    <thead>
                    <tr class="th-bg ">
                        <th colspan="4" class="text-center th_font">
                           Examination Schedule
                        </th>
                    </tr>
                    </thead>
                    <tr>
                        <td class="th_width_150"> Examination Name </td>
                        <td> {{ $examinationScheduleData->examination->examination_name }}</td>

                    </tr>
                    <tr>
                        <td> Class Name </td>
                        <td> {{ $examinationScheduleData->studentClass->class_name }}</td>

                    </tr>
                    <tr>
                        <td> Section Name </td>
                        <td>   {{ $examinationScheduleData->section->section_name }}</td>

                    </tr>
                    <tr>
                        <td> Subject Name </td>
                        <td> {{ $examinationScheduleData->subject->subject_name }}</td>

                    </tr>
                    <tr>
                        <td> Building Name </td>
                        <td> {{ $examinationScheduleData->building->building_name }}</td>

                    </tr>
                    <tr>

                        <td> Floor Name </td>
                        <td> {{ $examinationScheduleData->floor->floor_name  }}</td>

                    </tr>
                    <tr>
                        <td> Room Name </td>
                        <td> {{ $examinationScheduleData->room->room_name }}</td>
                    </tr>
                    <tr>
                        <td> Date </td>
                        <td> {{ $examinationScheduleData->examination_date }}</td>

                    </tr>
                    <tr>
                        <td> Start Time</td>
                        <td> {{ $examinationScheduleData->start_time }}</td>
                    </tr>
                    <tr>
                        <td> End Time </td>
                        <td> {{ $examinationScheduleData->end_time }}</td>
                    </tr>
                    <tr>
                        <td> Status </td>
                        <td> {{ $examinationScheduleData->status }}</td>
                    </tr>
                </table>
          
            <div class="clearfix"></div>
        </div>

    </div>



@endsection


