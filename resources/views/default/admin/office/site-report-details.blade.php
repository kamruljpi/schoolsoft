
@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection
<div class="row m_bottom_10">
   
    <div class="box-body auto_scroll">
        <div class="total_number">{{ trans('sidebar.total_number_of') }} {{$roleName}} : {{$totalUser}}</div>
        <table id="example1" class="table table-bordered table-striped">
            <thead>
            <tr>
                <th>{{ trans('translate.sl') }}</th>
                <th>{{ trans('translate.photo') }}</th>
                <th>{{ trans('translate.name') }}</th>
                <th>{{ trans('translate.email') }}</th>
                <th>{{ trans('translate.address') }}</th>
                <th>{{ trans('translate.phone') }}</th>
                <th>{{ trans('sidebar.date_of_birth') }}</th>
                {{--<th>Action</th>--}}
            </tr>
            </thead>
            <tbody>

            @set('sl',1)
            @foreach($usersWithPhotos as $photo => $user)


                <tr>
                    <td>{{$sl++}}</td>

                    <td>{!!  Html::image('imagecache/dummy/'.$photo) !!}</td>
                    {{--<td><span class="glyphicon glyphicon-user fa-man" aria-hidden="true"></span></td>--}}
                    <td>
                        {{ $user->translate($locale)? $user->first_name.' '.$user->last_name:$user->translate($defaultLocale)->first_name.' '.$user->translate($defaultLocale)->last_name }}
                    </td>

                    <td>{{ $user->email or 'Null'}}</td>
                    <td>{{ $user->translate($locale)?$user->address:$user->translate($defaultLocale)->address }}</td>
                    <td>{{ $user->phone or 'Null' }}</td>
                    <td>{{ $user->birthday }}</td>
                    {{--<td>
                        <a class="btn btn-primary btn-xs mrg" data-original-title="{{ trans('translate.view') }}" data-toggle="tooltip" href="{{ route('user-view',[$user->id]) }}">
                            <i class="fa fa-check-square-o"></i></a>
                    </td>--}}
                </tr>
            @endforeach

            </tbody>
        </table>

        {{--this function is described in the helper/forms.php page and the
        parameteres are provided from the relevant controller i.e UsersController in this case--}}
        {{--                                    {!! dataTableList($usersList,null,null,$model) !!}--}}
    </div><!-- /.box-body -->
    
</div>