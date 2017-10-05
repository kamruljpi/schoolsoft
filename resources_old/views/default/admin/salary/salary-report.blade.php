
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
                                            <th>Basic Salary(tk/month)</th>
                                            <th>Allowances(tk/month)</th>
                                            <th>Overtime(tk/sec)</th>
                                            <th>Bonus(tk/month)</th>
                                            <th>Gross Salary(tk/month)</th>
                                            <th>Salary Cut(tk/sec)</th>
                                            <th>Total Salary(tk/month)</th>
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
                                            <th>SL</th>
                                            <th>Employee Name</th>
                                            <th>Department</th>
                                            <th>Designation</th>
                                            <th>Shift</th>
                                            <th>Basic Salary</th>
                                            <th>Allowances</th>
                                            <th>Overtime</th>
                                            <th>Bonus</th>
                                            <th>Gross Salary</th>
                                            <th>Salary Cut</th>
                                            <th>Total Salary</th>
                                        </tr>
                                        </tfoot>
                                    </table>




