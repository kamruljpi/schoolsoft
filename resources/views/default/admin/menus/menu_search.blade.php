<table id="example1" class="table table-bordered table-striped">
    <thead>
    <tr>
        <th>{{ trans('translate.sl') }}
        </th>
        <th>{{ trans('sidebar.menu') }}
        </th>
        <th>{{ trans('sidebar.route_name') }}
        </th>
        <th>{{ trans('sidebar.parent') }}</th>
        <th>{{ trans('sidebar.accessable') }} </th>
        <th> {{ trans('sidebar.displayable') }}</th>
        <th>{{ trans('translate.status') }}
        </th>
        <th class="text-center th_width_80">{{ trans('translate.action') }}
        </th>

    </tr>
    </thead>
    <tbody>

    @set('sl',1)
    @foreach($menus as  $menu)


        <tr>
            <td>{{$sl++}}</td>


            <td>
                {{  $menu->menu_name or 'Not Available' }}
            </td>

            <td>{{ $menu->route_name or 'Not Available'}}</td>
            <td>{{ $menu->parent_id }}</td>
            <td>{{ $menu->is_common_access?'yes':'no' }}</td>
            <td>{{ $menu->is_displayable?'yes':'no' }}</td>
            <td>
                @if(isset($menu->status) && $menu->status == true)
                    {{ 'Active' }}
                @else
                    {{ 'Inactive' }}
                @endif
            </td>

            <td>

                <a class="btn btn-success btn-xs mrg" data-original-title="{{ trans('translate.edit') }}" data-toggle="tooltip" href="{{ route('menu-edit-form',[$menu->id]) }}"><i class="fa fa-edit"></i></a>

                <a  class="btn btn-danger delete_btn btn-xs mrg" data-original-title="{{ trans('translate.delete') }}" data-toggle="tooltip" href="{{ route('menu-delete',[$menu->id]) }}"><i class="fa fa-trash-o"></i></a>
            </td>

        </tr>
    @endforeach

    </tbody>
</table>