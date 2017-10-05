
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


<h4>
    Name:
    {{
        $individualEmployee->translate($locale)? $individualEmployee->first_name.' '.$individualEmployee->last_name:
        $individualEmployee->translate($defaultLocale)->first_name.' '.$individualEmployee->translate($defaultLocale)->last_name
    }}
</h4>
<h4>Department: {{ $individualEmployee->department->name or 'Null'}}</h4>
<h4>Designation: {{$individualEmployee->designation->name or 'Null' }}</h4>
<h4>Year : {{ $year }}</h4>

<table id="example1" class="table table-bordered table-striped">
    <thead>
    <tr>
        <th>SL</th>
        <th>Month</th>
        <th>Basic Salary(tk)</th>
        <th>Allowances(tk)</th>
        <th>Overtime(tk)</th>
        <th>Bonus(tk)</th>
        <th>Gross Salary(tk)</th>
        <th>Salary Cut(tk)</th>
        <th>Total Salary(tk)</th>

    </tr>
    </thead>
    <tbody>
    @set('sl',1)
    @foreach($individualWithSalarInyEachMonth as $months =>$individualSalary)

        <tr>
            <td>{{$sl++}}</td>
            <td> {{  date('F', mktime(0, 0, 0, $months)) }}</td>

            <td>{{ $individualSalary->basicSalary }}</td>
            <td>{{ $individualSalary->allowances }}</td>
            <td>
                {{ $individualSalary->overtime }}
            </td>
            <td>{{ $individualSalary->bonus }}</td>
            <td>{{ $individualSalary->grosSalary }}</td>
            <td>{{ $individualSalary->salaryCut }}</td>
            <td>{{ $individualSalary->netSalary }}</td>

        </tr>

    @endforeach



    {{--@endforeach--}}

    </tbody>
    <tfoot>
    <tr>
        <th>SL</th>
        <th>Month</th>
        <th>Basic Salary(tk)</th>
        <th>Allowances(tk)</th>
        <th>Overtime(tk)</th>
        <th>Bonus(tk)</th>
        <th>Gross Salary(tk)</th>
        <th>Salary Cut(tk)</th>
        <th>Total Salary(tk)</th>
    </tr>
    </tfoot>
</table>
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