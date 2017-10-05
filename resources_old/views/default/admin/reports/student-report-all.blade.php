<div class="box-body">
    <div>Student Information</div>
    <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>SL</th>
            <th>Photo</th>
            <th>Name</th>
            <th>Class</th>
            <th>Section</th>
            <th>Roll</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Date of Birth</th>

        </tr>
        </thead>
        <tbody>

        @set('sl',1)
        @foreach($studentsWithPhotos as $photo => $student)


            <tr>
                <td>{{$sl++}}</td>

                <td>{!!  Html::image('imagecache/dummy/'.$photo) !!}</td>
                {{--<td><span class="glyphicon glyphicon-user fa-man" aria-hidden="true"></span></td>--}}
                <td>
                    {{ $student->translate($locale)? $student->first_name.' '.$student->last_name:$student->translate($defaultLocale)->first_name.' '.$student->translate($defaultLocale)->last_name }}
                </td>
                <td>{{ $student->stclass or 'Null'}}</td>
                <td>{{ $student->Section or 'Null' }}</td>
                <td>{{ $student->roll_no or 'Null' }}</td>
                <td>{{ $student->email or 'Null'}}</td>
                <td>{{ $student->phone or 'Null' }}</td>
                <td>{{ $student->birthday }}</td>
            </tr>
        @endforeach

        </tbody>
    </table>

    {{--this function is described in the helper/forms.php page and the
    parameteres are provided from the relevant controller i.e UsersController in this case--}}
    {{--                                    {!! dataTableList($usersList,null,null,$model) !!}--}}
</div><!-- /.box-body -->