<div class="box-body">
    <div>Examination Routine</div>
    <div>Examination: {{$examName->examination_name}}</div>
    <div>Class: {{$className->class_name}}</div>
    <div>Section: {{$sectionName->section_name}}</div>
    <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>SL</th>
            <th>Subject</th>
            <th>Date</th>
            <th>Start Time</th>
            <th>End Time</th>
            <th>Building</th>
            <th>Floor</th>
            <th>Room</th>
        </tr>
        </thead>
        <tbody>

        @set('sl',1)
        @if(isset($examinationScheduleList) || !empty($examinationScheduleList))
            @foreach($examinationScheduleList as $examinationSchedule)


                <tr>
                    <td>{{$sl++}}</td>
                    <td>{{ $examinationSchedule->subject->subject_name}}</td>
                    <td>{{ $examinationSchedule->examination_date}}</td>
                    <td>{{ $examinationSchedule->start_time}}</td>
                    <td>{{ $examinationSchedule->end_time}}</td>
                    <td>{{ $examinationSchedule->building->building_name}}</td>
                    <td>{{ $examinationSchedule->floor->floor_name }}</td>
                    <td>{{ $examinationSchedule->room->room_name }}</td>
                </tr>
            @endforeach
        @else
            <p>No data found</p>
        @endif

        </tbody>
    </table>

    {{--this function is described in the helper/forms.php page and the
    parameteres are provided from the relevant controller i.e UsersController in this case--}}
    {{--                                    {!! dataTableList($usersList,null,null,$model) !!}--}}
</div><!-- /.box-body -->