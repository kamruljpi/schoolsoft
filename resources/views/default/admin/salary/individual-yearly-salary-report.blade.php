
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
    {{ trans('translate.name') }}:
    {{
        $individualEmployee->translate($locale)? $individualEmployee->first_name.' '.$individualEmployee->last_name:
        $individualEmployee->translate($defaultLocale)->first_name.' '.$individualEmployee->translate($defaultLocale)->last_name
    }}
</h4>
<h4> {{ trans('sidebar.department') }}: {{ $individualEmployee->department->name or 'Null'}}</h4>
<h4> {{ trans('sidebar.designation') }}: {{$individualEmployee->designation->name or 'Null' }}</h4>
<h4> {{ trans('sidebar.year') }} : {{ $year }}</h4>

<table id="example1" class="table table-bordered table-striped">
    <thead>
    <tr>
        <th>{{ trans('translate.sl') }}</th>
        <th>{{ trans('sidebar.month') }}</th>
        <th>{{ trans('sidebar.basic_salary_tk') }}</th>
        <th>{{ trans('sidebar.allowances_tk') }}</th>
        <th>{{ trans('sidebar.overtime_tk') }}</th>
        <th>{{ trans('sidebar.bonus_tk') }}</th>
        <th>{{ trans('sidebar.gross_salary_tk') }}</th>
        <th>{{ trans('sidebar.salary_cut_tk') }}</th>
        <th>{{ trans('sidebar.total_salary_tk') }}</th>

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
         <th>{{ trans('translate.sl') }}</th>
        <th>{{ trans('sidebar.month') }}</th>
        <th>{{ trans('sidebar.basic_salary_tk') }}</th>
        <th>{{ trans('sidebar.allowances_tk') }}</th>
        <th>{{ trans('sidebar.overtime_tk') }}</th>
        <th>{{ trans('sidebar.bonus_tk') }}</th>
        <th>{{ trans('sidebar.gross_salary_tk') }}</th>
        <th>{{ trans('sidebar.salary_cut_tk') }}</th>
        <th>{{ trans('sidebar.total_salary_tk') }}</th>
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