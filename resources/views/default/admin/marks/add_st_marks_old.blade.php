

@if(isset($studentSection))

    <h4>{{ trans('translate.exam') }} : {{ $exam->examination_name }}</h4>
@endif
@if(isset($studentSection))

<h4>{{ trans('translate.class') }} : {{ $studentClass->class_name }}</h4>
@endif

@if(isset($studentSection))
    <h4>{{ trans('translate.section') }} : {{ $studentSection->section_name }}</h4>
@endif

@if(isset($studentSubject))
    <h4>{{ trans('translate.subject') }} : {{ $studentSubject->subject_name }}</h4>
@endif


<table id="studentList" class="table table-bordered table-striped" style="text-align: center">
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

    @if(isset($studentList) && !$studentList->isEmpty())
        @foreach($studentList as $stKey => $students)

            <tr>
                <td>{{$sl++}}</td>

                <td>
                    {{ $students->translate($locale)? $students->first_name.' '.$students->last_name:$students->translate($defaultLocale)->first_name.' '.$students->translate($defaultLocale)->last_name }}
                </td>

                <td>
                    {{ $students->roll_no or 'NA' }}
                </td>


                @if(isset($marksType) && !empty($marksType))
                    @foreach($marksType as $types)
                        <td>
                            <input type="text" id ="mrk_tp_{{ $students->id."_".$types->marks_type }}" name ="mrk_tp_{{ $students->id."_".$types->marks_type }}" class="mrk_tp_{{ $students->id."_".$types->marks_type }}" />
                        </td>
                    @endforeach
                @endif
                <td>
                    <input type="text" id="mrk_ttl_{{ $students->id }}" class="mrk_ttl_{{ $students->id }} mrk_ttl_common_cls" data-stdnid = "{{ $students->id }}" name="mrk_ttl_{{ $students->id }}"/>
                </td>

                <td>
                    <input type="button" data-roll = "{{ $students->roll_no }}" data-stdnid = "{{ $students->id }}" class="mrk_add_{{ $students->id }} mrk_add_common_cls" name="mrk_add_{{ $students->id }}" id="mrk_add_{{ $students->id }}" value="Add"/>
                </td>
                <td>
                    <span id="mrk_rslt_{{ $students->id }}" class="mrk_rslt_{{ $students->id }}">Not Saved</span>
                </td>
            </tr>
        @endforeach
    @else

        <tr>
            <td>
                <strong>Sorry !!!! ..Not Students Found</strong>
            </td>
        </tr>

    @endif
    </tbody>
    <tfoot>
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
    </tfoot>
</table>

