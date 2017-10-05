
<div>

    @if(count($holydays)>0)
    <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>SL {{ trans('translate.action') }}</th>
            <th>{{ trans('sidebar.date') }}</th>
            <th> {{ trans('sidebar.occasion') }}</th>
            <th> {{ trans('sidebar.holiday_type') }}</th>
            <th> {{ trans('translate.status') }}</th>
            <th class="th_width_100">{{ trans('translate.action') }}</th>

        </tr>
        </thead>
        <tbody>

        @set('sl',1)
        @foreach($holydays as $holyday)

            <tr>
                <td>{{$sl++}}</td>
                <td>{{ $holyday->date or 'Null'}}</td>
                <td>{{ $holyday->occasion or 'Null'}}</td>
                <td>{{ $holyday->holydayType->type or 'Null' }}</td>
                <td>{{ $holyday->status->name or 'Null' }}</td>
                <td>
                    <a class="btn btn-info btn-xs mrg" data-original-title="{{ trans('translate.view') }}" data-toggle="tooltip" href="{{ route('view-holiday', [$holyday->id]) }}">
                        <i class="fa fa-check-square-o"></i></a>
                    <a class="btn btn-success btn-xs mrg" data-original-title="{{ trans('translate.edit') }}" data-toggle="tooltip" href="{{ route('edit-holiday-form',[$holyday->id]) }}"><i class="fa fa-edit"></i></a>

                    <a  class="btn btn-danger delete_btn btn-xs mrg" data-original-title="{{ trans('translate.delete') }}" data-toggle="tooltip" href="{{ route('delete-holiday', [$holyday->id]) }}"><i class="fa fa-trash-o"></i></a>
                </td>

            </tr>
        @endforeach

        </tbody>
        <tfoot>
        <tr>
            <th>SL</th>
            <th>Date</th>
            <th>Occasion</th>
            <th>Holiday Type</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
        </tfoot>
    </table>
    @else
        No Holydays ..........
  @endif
</div>

