{{--{{ dd($reportForUsers) }}--}}


@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

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
                                    <h4>Year : {{ $year }}</h4>
                                    <h4>Month : {{  date('F', mktime(0, 0, 0, $month)) }}</h4>
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>SL</th>
                                            <th>Employee Name</th>
                                            <th>Department</th>
                                            <th>Designation</th>
                                            <th>Shift</th>
                                            <th>Present Days</th>
                                            <th>Total Present Hours(Sec)</th>
                                            <th>Total Working Hours(Sec)</th>
                                            <th>Holiday Working Hours(Sec)</th>
                                            <th>General Overtime</th>
                                            <th>Absent Days</th>
                                            <th>Total Absent Hours(Sec)</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @set('sl',1)

{{--                                        @foreach($reportForUsers as  $userId=>$user)--}}
                                        @foreach($reportForUsers as  $userId=>$user)
                                            {{--{{dd($user)}}--}}
                                            @set('inShiftWorkingHours',0)
                                            @set('holidayWorkingHours',0)
                                            @set('generalOvertime',0)

                                            @foreach($user->workingHours as $workingHour)
{{--                                                {{ dd($workingHour) }}--}}
                                               <?php

                                                    $inShiftWorkingHours += $workingHour['shiftInWorkingHours'];
                                                    $holidayWorkingHours += $workingHour['weekendOrHolidayOvertime'];
                                                    $generalOvertime += $workingHour['generalOvertime'];

                                               ?>
                                            @endforeach

                                            @set('totalPresentHours',$inShiftWorkingHours+$holidayWorkingHours+$generalOvertime)
                                            <tr>
                                                <td>{{$sl++}}</td>
                                                <td>
                                                    <a href="{{ route('user-month-timesheet-details',[$user->id, $month,$year]) }}">

                                                        {{ $user->translate($locale)? $user->first_name.' '.$user->last_name:$user->translate($defaultLocale)->first_name.' '.$user->translate($defaultLocale)->last_name }}
                                                    </a>

                                                </td>
                                                <td>{{ $user->department->name or 'Null'}}</td>
                                                <td>{{ $user->designation->name or 'Null' }}</td>
                                                <td>{{ $user->shift->name or 'Null' }}</td>
                                                <td>{{ $user->userPresence }}</td>
                                                <td>{{ $totalPresentHours }}</td>
                                                <td>
                                                    {{ $inShiftWorkingHours }}
                                                </td>
                                                <td>{{ $holidayWorkingHours }}</td>
                                                <td>{{ $generalOvertime }}</td>
                                                <td>{{ $user->userAbsence }}</td>
                                                <td>{{ $monthlyShiftHours - $totalPresentHours}}</td>
                                            </tr>
                                        @endforeach

                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th>SL</th>
                                            <th>Employee Name</th>
                                            <th>Department</th>
                                            <th>Designation</th>
                                            <th>Shift</th>
                                            <th>Present Days</th>
                                            <th>Total Present Hours(Sec)</th>
                                            <th>Total Working Hours(Sec)</th>
                                            <th>Holiday Working Hours(Sec)</th>
                                            <th>General Overtime</th>
                                            <th>Absent Days</th>
                                            <th>Total Absent Hours(Sec)</th>
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