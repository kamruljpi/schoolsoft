<div class="box-body">
    <div>Class Routine</div>
    <div>Class: {{$studentClass->class_name}}</div>
    <div>Section: {{$section->section_name}}</div>
    <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>Saturday</th>
            <th>Sunday</th>
            <th>Monday</th>
            <th>Tuesday</th>
            <th>Wednesday</th>
            <th>Thursday</th>
            <th>Friday</th>
        </tr>
        </thead>
        <tbody>
{{--        {{ dd($routineList) }}--}}
@set('weekDays',['SATURDAY','SUNDAY','MONDAY','TUESDAY','WEDNESDAY','THURSDAY','FRIDAY'])


@if(isset($routineArray) && !empty($routineArray))

<tr>
    @foreach($weekDays as $day)

        <td>

            @if(array_key_exists($day,$routineArray))

                @foreach($routineArray[$day] as $routine)
                        <div style="background-color:ivory; min-height: 200px">
                                    Time: {{$routine->class_start_time}}- {{$routine->class_end_time}} <br>
                                    Teacher: {{ $routine->teacher->translate($locale)? $routine->teacher->first_name.' '.$routine->teacher->last_name:$routine->teacher->translate($defaultLocale)->first_name.' '.$routine->teacher->translate($defaultLocale)->last_name }} <br>
                                    Sub: {{ $routine->subject->subject_name }} <br>
                                    Code: {{ $routine->subject->subject_code }} <br>
                                    Location: {{ $routine->building->building_name }}, {{ $routine->floor->floor_name  }}, {{ $routine->room->room_name }} <br>
                                    Coordinator: {{ $routine->coordinator->translate($locale)? $routine->coordinator->first_name.' '.$routine->coordinator->last_name:$routine->coordinator->translate($defaultLocale)->first_name.' '.$routine->coordinator->translate($defaultLocale)->last_name }}
                        </div>
                        <hr>
                @endforeach

            @else

            No class
            @endif

        </td>

    @endforeach
</tr>
@else
    No data
@endif


        </tbody>
    </table>

</div><!-- /.box-body -->
<style>
    .table-bordered>thead>tr>th,
    .table-bordered>tbody>tr>th,
    .table-bordered>tfoot>tr>th,
    .table-bordered>thead>tr>td,
    .table-bordered>tbody>tr>td,
    .table-bordered>tfoot>tr>td {
         vertical-align: top !important;
         border-bottom-width: 1px;
    }
</style>