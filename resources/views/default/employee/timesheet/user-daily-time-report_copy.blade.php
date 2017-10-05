{{--{{ dd($reportForUsers->workingHours) }}--}}


@extends('default.employee.layouts.master')

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

    <div class="container-fluid" style="min-height: 1215px;">
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
                                <a href="#">Dashboard</a></li>
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
                                <div class="box-header">
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    @set('monthName',date('F', mktime(0, 0, 0, $month)))
                                    <h4>
                                        Name:
                                        {{
                                            $reportForUsers->translate($locale)? $reportForUsers->first_name.' '.$reportForUsers->last_name:
                                            $reportForUsers->translate($defaultLocale)->first_name.' '.$reportForUsers->translate($defaultLocale)->last_name
                                        }}
                                    </h4>
                                    <h4>Department: {{ $reportForUsers->department->name or 'Null'}}</h4>
                                    <h4>Designation: {{$reportForUsers->designation->name or 'Null' }}</h4>
                                    <h4>Year : {{ $year }}</h4>
                                    <h4>Month : {{ $monthName  }}</h4>
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>SL</th>
                                            {{--<th>Employee Name</th>
                                            <th>Department</th>
                                            <th>Designation</th>
                                            <th>Shift</th>--}}

                                            <th>Date</th>
                                            <th>Days</th>
                                            <th>Daily Working Hours(Sec)</th>
                                            <th>Holiday Working Hours(Sec)</th>
                                            <th>Daily General Overtime</th>
                                            <th>Daily Prensence(Sec)</th>
                                            <th>Daily Absence(Sec)</th>

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

                                            <?php

                                            $monthlyAbsence +=   $dailyAbsence;
                                            ?>

                                            <tr class="{{ $dailyPresence == 0? 'absence-color':'presence-color' }}">
                                                <td>{{$sl++}}</td>


                                                <td>{{ sprintf("%04d-%02d-%02d",$year,$month,$day)  }}</td>
                                                <td>{{ $today }}</td>
                                                <td>
                                                    {{ $workingHour['shiftInWorkingHours'] }}
                                                </td>
                                                <td>{{ $workingHour['weekendOrHolidayOvertime'] }}</td>
                                                <td>{{ $workingHour['generalOvertime'] }}</td>
                                                <td>
                                                    {{
                                                        $dailyPresence
                                                    }}
                                                </td>
                                                <td>{{ $dailyAbsence }}</td>

                                            </tr>

                                        @endforeach



                                        {{--@endforeach--}}

                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th>Year</th>
                                            <th>Month</th>
                                            <th>Days</th>
                                            <th>Monthly Working Hours(Sec)</th>
                                            <th>Monthly Holiday Working Hours(Sec)</th>
                                            <th>Monthly General Overtime</th>
                                            <th>Monthly Presence(Sec)</th>
                                            <th>Monthly Absence(Sec)</th>
                                        </tr>

                                        <tr>
                                            <td>{{ $year }} </td>
                                            <td>{{ $monthName }} </td>
                                            <td> </td>
                                            <td>{{ $inShiftWorkingHours }}</td>
                                            <td>{{ $holidayWorkingHours }}</td>
                                            <td>{{ $generalOvertime }}</td>
                                            <td>{{ $inShiftWorkingHours + $holidayWorkingHours + $generalOvertime}}</td>
                                            <td>{{ $monthlyAbsence }}</td>

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