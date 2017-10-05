<div class="custom_row m_top_20">
<div class="view-header-report">
        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
       
    </div>
</div>

<div class="row m_top_20">    

<div class="box-body">
    <div class="report_details">{{ trans('sidebar.Class_routin') }}</div>
    <div class="report_details">{{ trans('translate.class') }}: {{$studentClass->class_name}}</div>
    <div class="report_details">{{ trans('translate.section_name') }}: {{$section->section_name}}</div>
    <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>{{ trans('sidebar.saturday') }}</th>
            <th>{{ trans('sidebar.sunday') }}</th>
            <th>{{ trans('sidebar.monday') }}</th>
            <th>{{ trans('sidebar.tuesday') }}</th>
            <th>{{ trans('sidebar.wednesday') }}</th>
            <th>{{ trans('sidebar.thursday') }}</th>
            <th>{{ trans('sidebar.friday') }}</th>
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
                                <div style="background-color:ivory;  padding:20px;">
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
                            {{ trans('sidebar.no_class') }}
                           
                        @endif

                    </td>

                @endforeach
            </tr>
        @else
           {{ trans('sidebar.no_data') }}
        @endif


        </tbody>
    </table>

</div><!-- /.box-body -->
</div>
