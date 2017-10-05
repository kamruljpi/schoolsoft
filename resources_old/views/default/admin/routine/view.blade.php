{{-- dd($studentProfile) --}}
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
                            <li class="active">Routine</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

         <div class="inner-view">
            <table class="table table-striped table-bordered table-hover table-responsive">
                <thead>
                <tr class="th-bg">
                    <th colspan="4" class="text-center th_font">
                        Class Routine
                    </th>
                </tr>

                </thead>

                <tr>
                    <td class="th_width_150"> Class Name </td>
                    <td> {{ $routineData->studentClass->class_name }}</td>

                </tr>
                <tr>
                    <td> Section Name </td>
                    <td>   {{ $routineData->section->section_name }}</td>

                </tr>
                <tr>
                    <td> Subject Name </td>
                    <td> {{ $routineData->subject->subject_name }}</td>

                </tr>
                <tr>
                    <td> Teacher Name </td>
                    <td> {{ $routineData->teacher->translate($locale)? $routineData->teacher->first_name.' '.$routineData->teacher->last_name:$routineData->teacher->translate($defaultLocale)->first_name.' '.$routineData->teacher->translate($defaultLocale)->last_name }}</td>

                </tr>
                <tr>
                    <td> Building Name </td>
                    <td> {{ $routineData->building->building_name }}</td>

                </tr>
                <tr>

                    <td> Floor Name </td>
                    <td> {{ $routineData->floor->floor_name  }}</td>

                </tr>
                <tr>
                    <td> Room Name </td>
                    <td> {{ $routineData->room->room_name }}</td>
                </tr>
                <tr>
                    <td> Day </td>
                    <td> {{ $routineData->weekday }}</td>

                </tr>
                <tr>
                    <td> Start Time</td>
                    <td> {{ $routineData->class_start_time }}</td>
                </tr>
                <tr>
                    <td> End Time </td>
                    <td> {{ $routineData->class_end_time }}</td>
                </tr>
                <tr>
                    <td> Coordinator Name </td>
                    <td> {{ $routineData->coordinator->translate($locale)? $routineData->coordinator->first_name.' '.$routineData->coordinator->last_name:$routineData->coordinator->translate($defaultLocale)->first_name.' '.$routineData->coordinator->translate($defaultLocale)->last_name }}</td>
                </tr>
                <tr>
                    <td> Status </td>
                    <td> {{ $routineData->status }}</td>
                </tr>
            </table>
       
            <div class="clearfix"></div>
        </div>

    </div>



@endsection


