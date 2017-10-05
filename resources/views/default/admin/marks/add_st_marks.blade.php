
@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection


<div class="row m_top_15">
    
    <div class="box-body auto_scroll auto_scroll_other">    

    
    <table id="studentList" class="table table-bordered table-striped">

        <caption class="report_details_ad text-bold">
             @if(isset($studentSection))
                <span>{{ trans('translate.exam') }} : {{ $exam->examination_name }}</span>
                @endif
                <br>
                @if(isset($studentSection))

                <span>{{ trans('translate.class') }} : {{ $studentClass->class_name }}</span>
                @endif
                 <br>
                @if(isset($studentSection))
                    <span>{{ trans('translate.section') }} : {{ $studentSection->section_name }}</span>
                @endif
                <br>
                @if(isset($studentSubject))
                    <span>{{ trans('translate.subject') }} : {{ $studentSubject->subject_name }}</span>
                @endif
        </caption>
        <thead>
        <tr>
            <th>{{ trans('translate.sl') }}</th>
            <th>{{ trans('translate.name') }}</th>
            <th>{{ trans('translate.roll_no') }}</th>

            @if(isset($marksType) && !empty($marksType))
                @foreach($marksType as $type)
                    <th> {{ $type->marks_type }} </th>
                @endforeach
            @endif
            <th>{{ trans('translate.total') }}</th>
            <th>{{ trans('translate.action') }}</th>
            <th>{{ trans('translate.results') }}</th>
        </tr>
        </thead>
        <tbody>
        @set('sl',1)

        @if(isset($studentList) && !$studentList->isEmpty() )

            @foreach($studentList as $stKey => $students)

                @if(isset($studentMarks) && count($studentMarks>0) && array_key_exists($students->id,$studentMarks))
                    <tr>
                        <td>{{$sl++}}</td>

                        <td>
                            {{ $students->translate($locale)? $students->first_name.' '.$students->last_name:$students->translate($defaultLocale)->first_name.' '.$students->translate($defaultLocale)->last_name }}
                        </td>

                        <td>
                            {{ $students->roll_no or 'NA' }}
                        </td>

                        @if(!is_null($studentMarks[$students->id]))

                            @set('stMarksTypes',json_decode($studentMarks[$students->id]->mark_types))
                        @else
                            @set('stMarksTypes',null)

                        @endif



                        @if(isset($marksType) && !empty($marksType))
                            @foreach($marksType as $types)


                                <td>
                                    <input type="text" class="form-control" value="{{ isset($stMarksTypes->{$types->marks_type})? $stMarksTypes->{$types->marks_type} : 0 }} " id ="mrk_tp_{{ $students->id."_".$types->marks_type }}" name ="mrk_tp_{{ $students->id."_".$types->marks_type }}" class="mrk_tp_{{ $students->id."_".$types->marks_type }}" />
                                </td>

                            @endforeach
                        @endif

                        <td>
                            <input type="text"  value="{{ !is_null($studentMarks[$students->id]) && isset($studentMarks[$students->id]->total)? $studentMarks[$students->id]->total : 0 }} " id="mrk_ttl_{{ $students->id }}" class="form-control mrk_ttl_{{ $students->id }} mrk_ttl_common_cls" data-stdnid = "{{ $students->id }}" name="mrk_ttl_{{ $students->id }}"/>
                        </td>

                        <td>
                            <input type="button" data-roll = "{{ $students->roll_no }}" data-stdnid = "{{ $students->id }}" class=" btn btn-primary btn-block mrk_add_{{ $students->id }} mrk_add_common_cls" name="mrk_add_{{ $students->id }}" id="mrk_add_{{ $students->id }}" value="Add"/>
                        </td>
                        <td>
                            <span id="mrk_rslt_{{ $students->id }}" class="mrk_rslt_{{ $students->id }}">Not Saved</span>
                        </td>
                    </tr>
                @endif

            @endforeach
        @else

            <tr>
                <td>
                    <strong>Sorry !!!! ..No Students Found</strong>
                </td>
            </tr>

        @endif
        </tbody>
        
    </table>

    </div>
</div>
