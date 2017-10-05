<div class="box-body">
    <div>Teacher Information</div>
    <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>SL</th>
            <th>Photo</th>
            <th>Name</th>
            <th>Department</th>
            <th>Designation</th>
            <th>Email</th>
            <th>Address</th>
            <th>Phone</th>
            <th>Date of Birth</th>

        </tr>
        </thead>
        <tbody>

        @set('sl',1)
        @foreach($teachersWithPhotos as $photo => $teacher)


            <tr>
                <td>{{$sl++}}</td>

                <td>{!!  Html::image('imagecache/dummy/'.$photo) !!}</td>
                {{--<td><span class="glyphicon glyphicon-user fa-man" aria-hidden="true"></span></td>--}}
                <td>
                    {{ $teacher->translate($locale)? $teacher->first_name.' '.$teacher->last_name:$teacher->translate($defaultLocale)->first_name.' '.$teacher->translate($defaultLocale)->last_name }}
                </td>
                <td>{{ $teacher->department->name or 'Null'}}</td>
                <td>{{ $teacher->designation->name or 'Null' }}</td>

                <td>{{ $teacher->email or 'Null'}}</td>
                <td>{{ $teacher->translate($locale)?$teacher->address:$teacher->translate($defaultLocale)->address }}</td>
                <td>{{ $teacher->phone or 'Null' }}</td>
                <td>{{ $teacher->birthday }}</td>
            </tr>
        @endforeach

        </tbody>
        <tfoot>
        <tr>
            <th>SL</th>
            <th>Photo</th>
            <th>Name</th>
            <th>Email</th>
            <th>Department</th>
            <th>Designation</th>
            <th>Address</th>
            <th>Phone</th>
            <th>Date of Birth</th>

        </tr>
        </tfoot>
    </table>

    {{--this function is described in the helper/forms.php page and the
    parameteres are provided from the relevant controller i.e UsersController in this case--}}
    {{--                                    {!! dataTableList($usersList,null,null,$model) !!}--}}
</div><!-- /.box-body -->