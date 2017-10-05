{{--{{ dd($reportForUsers->workingHours) }}--}}


@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

<style>
    .presence-color{
        background-color: #0b6694 !important;
        color: #f0f0f0;
    }
    .absence-color{
        background-color: #9f191f !important;
        color: #f0f0f0;
    }
</style>
@section('content')

    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>@if(isset($viewType)){{ strtoupper($viewType) }}@endif
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">@if(isset($viewType)){{ strtoupper($viewType) }}@endif</li>
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
                             
                                <div class="box-body">
                                    @set('monthName',date('F', mktime(0, 0, 0, $month)))
                                    <h4>
                                        {{ trans('translate.name') }}:
                                        {{
                                            $reportForUsers->translate($locale)? $reportForUsers->first_name.' '.$reportForUsers->last_name:
                                            $reportForUsers->translate($defaultLocale)->first_name.' '.$reportForUsers->translate($defaultLocale)->last_name
                                        }}
                                    </h4>
                                    <h4>{{ trans('sidebar.department') }}: {{ $reportForUsers->department->name or 'Null'}}</h4>
                                    <h4>{{ trans('sidebar.designation') }}: {{$reportForUsers->designation->name or 'Null' }}</h4>
                                    <h4>{{ trans('sidebar.year') }} : {{ $year }}</h4>
                                    <h4> {{ trans('sidebar.month') }}: {{ $monthName  }}</h4>
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>{{ trans('translate.sl') }}</th>
                                            <th>{{ trans('sidebar.date') }}</th>
                                            <th>{{ trans('sidebar.days') }}</th>
                                            <th>{{ trans('sidebar.d_w_h_sec') }}</th>
                                            <th>{{ trans('sidebar.h_w_h_sec') }}</th>
                                            <th>{{ trans('sidebar.d_g_overtime') }}</th>
                                            <th>{{ trans('sidebar.d_pre_sec') }}</th>
                                            <th>{{ trans('sidebar.d_abs_sec') }}</th>

                                        </tr>
                                        </thead>
                                        <tbody>
                                        @set('sl',1)
                                        @set('inShiftWorkingHours',0)
                                        @set('holidayWorkingHours',0)
                                        @set('generalOvertime',0)
                                        @set('monthlyAbsence',0)

                                        {{--$timestamp = strtotime($todaysDate);--}}

                                        {{--$today = date('D', $timestamp);--}}

                                        @foreach($reportForUsers->workingHours as $day =>$workingHour)
                                            {{--                                                                            {{ dd($workingHour) }}--}}
                                            <?php

                                            $inShiftWorkingHours += $workingHour['shiftInWorkingHours'];
                                            $holidayWorkingHours += $workingHour['weekendOrHolidayOvertime'];
                                            $generalOvertime += $workingHour['generalOvertime'];


                                            ?>

                                            @set('today',date('D',strtotime(sprintf("%04d-%02d-%02d",$year,$month,$day))))

                                            @set('dailyPresence',$workingHour['shiftInWorkingHours']+
                                                        $workingHour['weekendOrHolidayOvertime']+
                                                        $workingHour['generalOvertime'])
                                            @set('dailyAbsence',$dailyShiftHours[$day] - $dailyPresence)
                                            {{--@set('monthlyPresence',$inShiftWorkingHours + $holidayWorkingHours + $generalOvertime)--}}

                                            <?php

                                            $monthlyAbsence +=   $dailyAbsence;
                                            ?>

                                            <tr class="{{ $dailyPresence == 0? 'absence-color':'presence-color' }}">
                                                <td>{{$sl++}}</td>


                                                <td>

                                                    <a href="{{ route('user-daily-punch-edit-by-date',[sprintf("%04d-%02d-%02d",$year,$month,$day),$reportForUsers->id]) }}">
                                                        {{ sprintf("%04d-%02d-%02d",$year,$month,$day)  }}
                                                    </a>
                                                    {{--{{ sprintf("%04d-%02d-%02d",$year,$month,$day)  }}--}}
                                                </td>
                                                <td>{{ $today or 'Not Available'}}</td>
                                                <td>
                                                    {{ $workingHour['shiftInWorkingHours'] or 'Not Available' }}
                                                </td>
                                                <td>{{ $workingHour['weekendOrHolidayOvertime'] }}</td>
                                                <td>{{ $workingHour['generalOvertime'] }}</td>
                                                <td>
                                                    {{
                                                        $dailyPresence or 'Not Available'
                                                    }}
                                                </td>
                                                <td>{{ $dailyAbsence or 'Not Available'}}</td>

                                            </tr>

                                        @endforeach



                                        {{--@endforeach--}}

                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th>{{ trans('translate.sl') }}</th>
                                            <th>{{ trans('sidebar.date') }}</th>
                                            <th>{{ trans('sidebar.days') }}</th>
                                            <th>{{ trans('sidebar.d_w_h_sec') }}</th>
                                            <th>{{ trans('sidebar.h_w_h_sec') }}</th>
                                            <th>{{ trans('sidebar.d_g_overtime') }}</th>
                                            <th>{{ trans('sidebar.d_pre_sec') }}</th>
                                            <th>{{ trans('sidebar.d_abs_sec') }}</th>
                                        </tr>

                                        <tr>
                                            <td>{{ $year or 'Not Available'}} </td>
                                            <td>{{ $monthName or 'Not Available'}} </td>
                                            <td> </td>
                                            <td>{{ $inShiftWorkingHours or 'Not Available'}}</td>
                                            <td>{{ $holidayWorkingHours or 'Not Available'}}</td>
                                            <td>{{ $generalOvertime or 'Not Available'}}</td>
                                            <td>{{ $inShiftWorkingHours + $holidayWorkingHours + $generalOvertime }}</td>
                                            <td>{{ $monthlyAbsence or 'Not Available'}}</td>

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