<div class="row m_top_20">


    <div class="view-header-report">
        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
    </div>

    <div class="body-box auto_scroll_other">
        <div class="report_details_mark">Tabulation Sheet</div>
        <div class="report_details_mark">Examination: </div>
        <div class="report_details_mark">Class: </div>
        <div class="report_details_mark">Section: </div>



        <table  id="example1" class="table table-bordered table-striped">
            <thead>

            <tr >
                <th rowspan="2">SL</th>
                <th rowspan="2">Name of Students</th>

                @foreach($subjectMarksTypeName as $subjectName=>$marksTypes)

                    <th colspan="{{ count($marksTypes) + 1 }}" {{--5(dynamic)+1--}} style="text-align: center">{{ $subjectName }}</th>
                @endforeach




                <th rowspan="2">Total Marks</th>
                <th rowspan="2">Grade/Division</th>
            <tr>
                {{--dynamic number of mark types--}}

                @foreach($subjectMarksTypeName as $subjectName=>$marksTypes)
                    @foreach($marksTypes as $marksType)
                        <th>{{ $marksType }}</th>
                    @endforeach
                    <th>Total</th>
                @endforeach


            </tr>
            </tr>
            </thead>


            @if(isset($stuentResult) && !empty($stuentResult))
                <tbody>
                @foreach($stuentResult as $studentId=>$student)
                    {{--{{ dd($student) }}--}}
                    <tr>
                        <td>1</td>
                        <td>{{ $student->first_name }}</td>
                        {{--dynamic number of mark types--}}
                        @foreach($subjectMarksTypeName as $subjectName=>$marksTypes)

                            @if(!empty($student->subject_grades) && array_key_exists($subjectName,$student->subject_grades))
                                @foreach($marksTypes as $marksType)
                                    @if(array_key_exists($subjectName,$student->subject_grades))
                                        @set('markTypeMarks',$student->subject_grades[$subjectName]['marksTypes'])
                                    @endif
                                    @if(array_key_exists($subjectName,$student->subject_grades))
                                        @set('subjectTotal',$student->subject_grades[$subjectName]['subjectTotal'])
                                    @endif

                                    <td>{{ $markTypeMarks->$marksType or 0}} </td>
                                @endforeach
                                <td>{{ $subjectTotal or 0}} </td>
                            @else

                            @endif

                            {{--<th>Total</th>--}}

                        @endforeach
                        {{--dynamic number of mark types--}}
                        {{--<td>total</td>--}}
                        <td>total</td>
                        <td>grade</td>
                    </tr>
                @endforeach
                </tbody>
            @endif

        </table>

        {{--this function is described in the helper/forms.php page and the
        parameteres are provided from the relevant controller i.e UsersController in this case--}}
        {{--                                    {!! dataTableList($usersList,null,null,$model) !!}--}}
    </div><!-- /.box-body -->

</div>

{{--{{dd($subjectMarksTypeName)}}--}}
{{dd($stuentResult)}}
