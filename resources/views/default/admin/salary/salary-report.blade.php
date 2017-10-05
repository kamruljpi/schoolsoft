
                                    <h4>{{ trans('sidebar.year') }} : {{ $year }}</h4>
                                    <h4> {{ trans('sidebar.month') }} : {{  date('F', mktime(0, 0, 0, $month)) }}</h4>
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th> {{ trans('translate.sl') }}</th>
                                            <th>{{ trans('sidebar.employee_name') }}</th>
                                            <th> {{ trans('sidebar.department') }}</th>
                                            <th> {{ trans('sidebar.designation') }}</th>
                                            <th>{{ trans('sidebar.Shift_only') }}</th>
                                            <th>{{ trans('sidebar.basic_salary_month') }}</th>
                                            <th>{{ trans('sidebar.allowances_month') }}</th>
                                            <th>{{ trans('sidebar.overtime_sec') }}</th>
                                            <th>{{ trans('sidebar.bonus_month') }}</th>
                                            <th>{{ trans('sidebar.gross_salary_month') }}</th>
                                            <th>{{ trans('sidebar.salary_cut_sec') }}</th>
                                            <th>{{ trans('sidebar.total_salary_month') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @set('sl',1)

                                        @foreach($usersSalary as  $user)

                                            <tr>
                                                <td>{{$sl++}}</td>
                                                <td>
                                                        {{  $user->translate($locale)
                                                            ? $user->first_name.' '.$user->last_name
                                                            :$user->translate($defaultLocale)->first_name.' '.$user->translate($defaultLocale)->last_name
                                                        }}
                                                </td>
                                                <td>{{ $user->department->name or 'Null'}}</td>
                                                <td>{{ $user->designation->name or 'Null' }}</td>
                                                <td>{{ $user->shift->name or 'Null' }}</td>
                                                <td>{{ $user->basicSalary }}</td>
                                                <td>{{ $user->allowances }}</td>
                                                <td>
                                                    {{ $user->overtime }}
                                                </td>
                                                <td>{{ $user->bonus }}</td>
                                                <td>{{ $user->grosSalary }}</td>
                                                <td>{{ $user->salaryCut }}</td>
                                                <td>{{ $user->netSalary }}</td>
                                            </tr>
                                        @endforeach

                                        </tbody>
                                        <tfoot>
                                       <tr>
                                            <th> {{ trans('translate.sl') }}</th>
                                            <th>{{ trans('sidebar.employee_name') }}</th>
                                            <th> {{ trans('sidebar.department') }}</th>
                                            <th> {{ trans('sidebar.designation') }}</th>
                                            <th>{{ trans('sidebar.Shift_only') }}</th>
                                            <th>{{ trans('sidebar.basic_salary_month') }}</th>
                                            <th>{{ trans('sidebar.allowances_month') }}</th>
                                            <th>{{ trans('sidebar.overtime_sec') }}</th>
                                            <th>{{ trans('sidebar.bonus_month') }}</th>
                                            <th>{{ trans('sidebar.gross_salary_month') }}</th>
                                            <th>{{ trans('sidebar.salary_cut_sec') }}</th>
                                            <th>{{ trans('sidebar.total_salary_month') }}</th>
                                        </tr>
                                        </tfoot>
                                    </table>




