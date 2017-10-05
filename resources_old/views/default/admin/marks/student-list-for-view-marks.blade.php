
@if(isset($studentClass))

    <h4>Class: {{ $studentClass->class_name }}</h4>

@endif

@if(isset($studentSection))

    <h4>Section: {{ $studentSection->section_name }}</h4>

@endif


@if(isset($exam))

    <h4>Exam: {{ $exam->examination_name }}</h4>

@endif

<table id="studentList" class="table table-bordered table-striped" style="text-align: center">
    <thead>
    <tr>
        <th>SL</th>
        <th>Name</th>
        <th>Roll No</th>
        @if(isset($resultRule) && $resultRule == 'division')
            <th>Total Marks</th>
        @endif
        @if(isset($resultRule) && $resultRule == 'grade')
            <th>GPA</th>
        @endif

        <th>Grade/Class</th>
        <th>Details</th>

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
                    {{ $user->totalResult }}
            @endif
            @if(isset($resultRule) && $resultRule == 'grade')
                {{ $user->grade }}
            @endif

            </td>

            <td>

                @if(isset($failingStudents) && !empty($failingStudents))

                    @if(array_key_exists($user->id,$failingStudents) && $failingStudents[$user->id]==true)
                            {{ 'Failkkk' }}
                    @else
                            {{ $user->result }}
                    @endif
                @else
                    {{ $user->result }}
                 @endif


            </td>



            <td>
                <a class="btn btn-primary btn-xs mrg" data-original-title="View" data-toggle="tooltip" href="{{ route('student-marks-view',[$user->id,$exam->id]) }}">
                    <i class="fa fa-check-square-o"></i></a>
            </td>

        </tr>
    @endforeach
    </tbody>
    <tfoot>
    <tr>
        <th>SL</th>
        <th>Name</th>
        <th>Roll No</th>
        <th>Total Marks</th>

        <th>Total GRADE</th>
        <th>Action</th>
    </tr>
    </tfoot>
</table>

