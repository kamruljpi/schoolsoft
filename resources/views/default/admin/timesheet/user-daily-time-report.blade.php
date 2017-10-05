@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

<div class="row m_top_20">

    <div class="view-header-report">
        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
       
    </div>
</div>

{{--{{ dd($reportForUsers->id) }}--}}
<style>
    .presence-color{
        background-color: #999 !important;
        color: #fff !important;;
    }
    .presence-color a{
        color: #fff !important;;
    }
    .absence-color{
        background-color: #ccc !important;
        color: #f0f0f0;
    }

</style>
<div class="row">
    

    @set('monthName',date('F', mktime(0, 0, 0, $month)))
    <div class="report_details_mark">
         {{ trans('translate.name') }}:
        {{
            $reportForUsers->translate($locale)? $reportForUsers->first_name.' '.$reportForUsers->last_name:
            $reportForUsers->translate($defaultLocale)->first_name.' '.$reportForUsers->translate($defaultLocale)->last_name
        }}
    </div>
      <div class="report_details_mark">{{ trans('sidebar.department') }}: {{ $reportForUsers->department->name or 'Null'}}</div>
      <div class="report_details_mark">{{ trans('sidebar.designation') }}: {{$reportForUsers->designation->name or 'Null' }}</div>
    <div class="report_details_mark"> {{ trans('sidebar.year') }}: {{ $year }}</div>
      <div class="report_details_mark"> {{ trans('sidebar.month') }} : {{ $monthName  }}</div>
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

                    <?php

                        $monthlyAbsence +=   $dailyAbsence;
                    ?>

                    <tr class="{{ $dailyPresence == 0? 'absence-color':'presence-color' }}">
                        <td>{{$sl++}}</td>


                        <td>
                            <a href="{{ route('user-daily-punch-edit-by-date',[sprintf("%04d-%02d-%02d",$year,$month,$day),$reportForUsers->id]) }}">
                                {{ sprintf("%04d-%02d-%02d",$year,$month,$day)  }}
                            </a>
                        </td>
                        <td>{{ $today or 'Not available' }}</td>
                        <td>
                            {{ $workingHour['shiftInWorkingHours'] or 'Not available' }}
                        </td>
                        <td>{{ $workingHour['weekendOrHolidayOvertime'] or 'Not available' }}</td>
                        <td>{{ $workingHour['generalOvertime'] or 'Not available' }}</td>
                        <td>
                            {{
                                $dailyPresence or 'Not available'
                            }}
                        </td>
                        <td>{{ $dailyAbsence or 'Not available' }}</td>

                    </tr>

            @endforeach



        {{--@endforeach--}}

        </tbody>
        <tfoot>
        <tr>
          
            <th>{{ trans('sidebar.year') }}</th>
            <th>{{ trans('sidebar.month') }}</th>
            <th>{{ trans('sidebar.days') }}</th>
            <th>{{ trans('sidebar.d_w_h_sec') }}</th>
            <th>{{ trans('sidebar.h_w_h_sec') }}</th>
            <th>{{ trans('sidebar.d_g_overtime') }}</th>
            <th>{{ trans('sidebar.d_pre_sec') }}</th>
            <th>{{ trans('sidebar.d_abs_sec') }}</th>
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
    </div>
@section('scripts')

    @parent
    <script src="{{ asset('theme_components/admin/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    {!! Html::script('theme_components/admin/plugins/datatables/dataTables.bootstrap.min.js') !!}
    {!! Html::script('select/js/select2.min.js') !!}

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