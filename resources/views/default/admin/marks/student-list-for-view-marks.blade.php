
@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

<div class="row m_top_20">
  
     <div class="view-header-report">
        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
    </div>

    <div class="box-body">
        <div class="view-print">

            @if(isset($studentClass))

                <h4>
                    {{ trans('translate.class') }}: {{ $studentClass->class_name }}


                </h4>

            @endif

            @if(isset($studentSection))

                <h4>{{ trans('translate.section') }}: {{ $studentSection->section_name }}</h4>

            @endif


            @if(isset($exam))

                <h4>{{ trans('translate.exam') }}: {{ $exam->examination_name }}</h4>

            @endif

        <table id="studentList" class="table table-bordered table-striped">
            <thead>
            <tr>
                <th>{{ trans('translate.sl') }}</th>
                <th>{{ trans('translate.roll_number') }}</th>
                <th>{{ trans('translate.name') }}</th>
                @if(isset($resultRule) && $resultRule == 'division')
                    <th>{{ trans('translate.marks_type') }}</th>
                @endif
                @if(isset($resultRule) && $resultRule == 'grade')
                    <th>{{ trans('translate.gpa') }}</th>
                @endif

                <th>{{ trans('translate.total_grade') }}</th>
                <th class="th_width_70">{{ trans('translate.action') }}</th>

            </tr>
            </thead>
            <tbody>
            @set('sl',1)
            @set('totalResult',0)
            @foreach($studentList as $photo => $user)

                <tr>
                    <td>{{$sl++}}</td>

                    <td>
                        {{ $user->roll_no or 'NA' }}
                    </td>
                    <td>
                        {{ $user->translate($locale)? $user->first_name.' '.$user->last_name:$user->translate($defaultLocale)->first_name.' '.$user->translate($defaultLocale)->last_name }}
                    </td>

                    <td>

                        @if(isset($resultRule) && $resultRule == 'division')
                            {{ round($user->totalResult, 2) }}
                        @endif
                        @if(isset($resultRule) && $resultRule == 'grade')
                            {{ round($user->grade, 2) }}
                        @endif

                    </td>

                    <td>

                        @if(isset($failingStudents) && !empty($failingStudents))

                            @if(array_key_exists($user->id,$failingStudents) && $failingStudents[$user->id]==true)
                                {{ 'Failkkk' }}
                            @else
                                {{ $user->result or 0}}
                            @endif
                        @else
                            {{ $user->result or 0}}
                        @endif


                    </td>



                    <td>
                        <a class="btn btn-primary btn-xs mrg" data-original-title="View" data-toggle="tooltip" href="{{ route('student-marks-view',[$user->id,$exam->id]) }}">
                            <i class="fa fa-check-square-o"></i></a>
                    </td>

                </tr>
            @endforeach
            </tbody>
           
        </table>
     </div>
    </div>
</div>
