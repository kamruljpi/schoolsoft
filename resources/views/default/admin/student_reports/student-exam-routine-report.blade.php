<div class="custom_row m_top_20">
    <div class="view-header-report">
        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
       
    </div> 
</div>

<div class="row m_top_20">    

<div class="box-body auto_scroll">
    <div class="report_details">{{ trans('sidebar.examination_routine') }}</div>
    <div class="report_details">{{ trans('sidebar.examination') }}: {{$examName->examination_name}}</div>
    <div class="report_details">{{ trans('translate.class') }}: {{$className->class_name}}</div>
    <div class="report_details">{{ trans('translate.section') }}: {{$sectionName->section_name}}</div>
    <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>{{ trans('translate.sl') }}</th>
            <th>{{ trans('translate.subject') }}</th>
            <th>{{ trans('translate.date') }}</th>
            <th>{{ trans('translate.start_time') }}</th>
            <th>{{ trans('translate.end_time') }}</th>
            <th>{{ trans('translate.building_name') }}</th>
            <th>{{ trans('translate.floor_name') }}</th>
            <th>{{ trans('translate.room_name') }}</th>
        </tr>
        </thead>
        <tbody>

        @set('sl',1)
        @if(isset($examinationScheduleList) && !$examinationScheduleList->isEmpty())
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
           <tr>
               <td colspan="8">
                   <strong>{{ trans('sidebar.no_data') }}</strong>
               </td>
           </tr>

        @endif

        </tbody>
    </table>

    {{--this function is described in the helper/forms.php page and the
    parameteres are provided from the relevant controller i.e UsersController in this case--}}
    {{--                                    {!! dataTableList($usersList,null,null,$model) !!}--}}
</div><!-- /.box-body -->
</div>