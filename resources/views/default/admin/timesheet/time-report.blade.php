
@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

<div class="row m_top_20">
    <div class="view-header-report">
        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
       
    </div>
</div>

<div class="row">
    <div class="report_details_mark">
        <span>{{ trans('sidebar.year') }} : {{ $year }}</span>
        <span>{{ trans('sidebar.month') }} : {{  date('F', mktime(0, 0, 0, $month)) }}</span>
    </div>
    <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>{{ trans('translate.sl') }}</th>
            <th>{{ trans('sidebar.employee_name') }}</th>
            <th>{{ trans('sidebar.department') }}</th>
            <th>{{ trans('sidebar.designation') }}</th>
            <th>{{ trans('sidebar.shift_only') }}</th>
            <th>{{ trans('sidebar.present_days') }}</th>
            <th>{{ trans('sidebar.t_p_h_sec') }}</th>
            <th>{{ trans('sidebar.t_w_h_sec') }}</th>
            <th>{{ trans('sidebar.h_w_h_s') }}</th>
            <th>{{ trans('sidebar.g_overtime') }}</th>
            <th>{{ trans('sidebar.abs_days') }}</th>
            <th>{{ trans('sidebar.t_abs_h_sec') }}</th>
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

            @set('totalPresentHours',$inShiftWorkingHours + $holidayWorkingHours+$generalOvertime)
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
            <th>{{ trans('translate.sl') }}</th>
            <th>{{ trans('sidebar.employee_name') }}</th>
            <th>{{ trans('sidebar.department') }}</th>
            <th>{{ trans('sidebar.designation') }}</th>
            <th>{{ trans('sidebar.shift_only') }}</th>
            <th>{{ trans('sidebar.present_days') }}</th>
            <th>{{ trans('sidebar.t_p_h_sec') }}</th>
            <th>{{ trans('sidebar.t_w_h_sec') }}</th>
            <th>{{ trans('sidebar.h_w_h_s') }}</th>
            <th>{{ trans('sidebar.g_overtime') }}</th>
            <th>{{ trans('sidebar.abs_days') }}</th>
            <th>{{ trans('sidebar.t_abs_h_sec') }}</th>
        </tr>
        </tfoot>
    </table>
    {{--this function is described in the helper/forms.php page and the
    parameteres are provided from the relevant controller i.e UsersController in this case--}}
    {{--                                    {!! dataTableList($roleList,$locale,$defaultLocale,$model) !!}--}}

</div>

