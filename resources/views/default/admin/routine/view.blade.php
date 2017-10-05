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
                    <div class="col-md-6 col-xs-6">
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
                        <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-6 col-xs-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('translate.dashboard') }}</a></li>
                            <li class="active">{{ trans('translate.routine') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

         <div class="inner-view">
            <div class="row">
                <table class="table table-striped table-bordered table-hover table-responsive">
                <thead>
                <tr class="th-bg">
                    <th colspan="4" class="text-center th_font">
                       {{ trans('translate.routine') }}
                    </th>
                </tr>

                </thead>

                <tr>
                    <td class="th_width_150">{{ trans('translate.class') }}</td>
                    <td> {{ $routineData->studentClass->class_name or 'Not Available' }}</td>

                </tr>
                <tr>
                    <td>{{ trans('translate.section') }}</td>
                    <td>   {{ $routineData->section->section_name or 'Not Available'}}</td>

                </tr>
                <tr>
                    <td>{{ trans('translate.subject') }}</td>
                    <td> {{ $routineData->subject->subject_name or 'Not Available'}}</td>

                </tr>
                <tr>
                    <td>{{ trans('translate.teacher_name') }}</td>
                    <td>
                        @if(!is_null($routineData->teacher) && !is_null($routineData->teacher->translate($defaultLocale)))
                            {{ $routineData->teacher->translate($locale)? $routineData->teacher->first_name.' '.$routineData->teacher->last_name:$routineData->teacher->translate($defaultLocale)->first_name.' '.$routineData->teacher->translate($defaultLocale)->last_name }}
                        @else

                            Not Available
                        @endif

                    </td>


                </tr>
                <tr>
                    <td> {{ trans('translate.building_name') }}</td>
                    <td> {{ $routineData->building->building_name or 'Not Available' }}</td>

                </tr>
                <tr>

                    <td> {{ trans('translate.floor') }}</td>
                    <td> {{ $routineData->floor->floor_name or 'Not Available' }}</td>

                </tr>
                <tr>
                    <td> {{ trans('translate.room') }} </td>
                    <td> {{ $routineData->room->room_name or 'Not Available' }}</td>
                </tr>
                <tr>
                    <td> {{ trans('translate.day') }} </td>
                    <td> {{ $routineData->weekday or 'Not Available' }}</td>

                </tr>
                <tr>
                    <td> {{ trans('translate.start_time') }}</td>
                    <td> {{ $routineData->class_start_time  or 'Not Available' }}</td>
                </tr>
                <tr>
                    <td>{{ trans('translate.end_time') }} </td>
                    <td> {{ $routineData->class_end_time or 'Not Available'  }}</td>
                </tr>
                <tr>
                    <td> {{ trans('translate.coordinator_name') }} </td>
                    <td>
                        @if(!is_null($routineData->coordinator) && !is_null($routineData->coordinator->translate($defaultLocale)))
                            {{ $routineData->coordinator->translate($locale)? $routineData->coordinator->first_name.' '.$routineData->coordinator->last_name:$routineData->coordinator->translate($defaultLocale)->first_name.' '.$routineData->coordinator->translate($defaultLocale)->last_name }}
                        @else

                            Not Available
                        @endif

                    </td>
                </tr>
                <tr>
                    <td> {{ trans('translate.status') }} </td>
                    <td> {{ $routineData->status or 'Not Available'}}</td>
                </tr>
                </table>
       
                <div class="clearfix"></div>
            </div>

        </div> <!--inner-view-->



@endsection


