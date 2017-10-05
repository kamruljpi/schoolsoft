
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



