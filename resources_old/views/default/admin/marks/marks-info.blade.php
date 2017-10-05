{{--{{ dd($student) }}--}}
@extends('default.admin.layouts.master')


@section('head')
    {!! Html::style('css/styles.css') !!}
    {!! Html::style('css/marks.css') !!}
@endsection



@section('content')

    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-7">
                       <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> Print </button>
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> Print Preview </button>                   

                    <button class="btn btn-primary"><span class="fa fa-file"></span> Edit</button>
                    </div>
                    <div class="col-md-5 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">Dashboard</a></li>
                            <li class="active">Student</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="row margin-top-area">
            <div class="col-md-12 view">

                <div class="wrapper-marks">
                    <section class="header">
                        <div class="row m_bottom_20">
                            <div class="col-sm-12 text-center">
                                <div class="logo_holder">
                                    <img class="logo" src="{{ asset('logos/logo.png') }}">
                                </div><br>
                                <h1> Chowkibari High School</h1>
                            </div>

                            <div class="col-sm-12 text-center m_top_20">
                                Report Card<br>
                                @if(isset($exam) && !empty($exam))
                                   <h4>{{$exam->examination_name}}</h4>
                                @endif
                                <br>
                                @if(isset($resultRule) && $resultRule == 'division')
                                    Total Marks:<strong>{{ $student->totalResult }}</strong>
                                @endif
                                <br>
                                @if(isset($resultRule) && $resultRule == 'grade')
                                     GPA:<strong>{{ $student->grade }}</strong>
                                @endif
                                <br>
                                @if(isset($resultRule) && $resultRule == 'division')
                                    Class:
                                @endif
                                @if(isset($resultRule) && $resultRule == 'grade')
                                   Grade:
                                @endif

                                @if(isset($isFail) && $isFail==true)
                                    <strong>{{ 'Fail' }}</strong>
                                @else
                                    <strong>{{ $student->result }}</strong>
                                @endif

                            </div>
                        </div>

                    </section>
                    <section class="content">
                        <table class="table table-striped table-bordered">
                            <caption>
                                Name:<span> {{ $student->first_name }}  </span> Class:<span> {{$studentClass->class_name  }} </span> Section:<span> {{ $student->section->section_name }} </span>  {{--Total Student:<span> {{ '' }} </span>--}}
                            </caption>
                            <thead>
                            <tr>
                                <th>Subject</th>
                                <th>Subject Total</th>
                                   @if(isset($marksTypes) && !$marksTypes->isEmpty())
                                       @foreach($marksTypes as $marksType)
                                        <th>{{  $marksType->marks_type }}</th>
                                       @endforeach
                                   @endif

                                <th>Total</th>
                                @if(isset($resultRule) && $resultRule=='grade')
                                    <th>CGPA</th>
                                    <th>Grade</th>
                                @endif


                            </tr>
                            </thead>
                            <tbody>



                            @if(isset($student) && !empty($student))
                                @if(isset($subjectsOfTheClass) && !$subjectsOfTheClass->isEmpty())

                                    @foreach($subjectsOfTheClass as $subjects)
                                        <tr>
                                            <td>
                                                {{ $subjects->subject_name or 'Not Available' }}
                                            </td>
                                            <td>
                                                {{ $subjects->subject_total_marks or 'Not Availalble' }}
                                            </td>
                                            @if(is_array($student->subjectMarks)
                                            && array_key_exists($subjects->id,$student->subjectMarks))

                                                @set('stSubMarks',$student->subjectMarks[$subjects->id])

                                            @else

                                                @set('stSubMarks','No Marks for this Subject')

                                            @endif

                                            @if(is_json($stSubMarks))
                                                @if(isset($marksTypes) && !$marksTypes->isEmpty())
                                                    @foreach($marksTypes as $marksType)
                                                        @set('markType',$marksType->marks_type)
                                                        @set('subMarkType',json_decode($stSubMarks,true))

                                                        @if(is_array($subMarkType)&& array_key_exists($markType,$subMarkType))

                                                            <td> {{ $subMarkType[$markType]}}</td>
                                                        @else
                                                            <td> {{ 0 }}</td>
                                                        @endif

                                                    @endforeach
                                                @endif

                                            @else

                                                @if(isset($marksTypes) && !$marksTypes->isEmpty())
                                                    @foreach($marksTypes as $marksType)
                                                        <td> {{ 'not ...' }}</td>
                                                    @endforeach
                                                @endif

                                            @endif




                                            <td>
                                                @if(isset($studentMarks) && !$studentMarks->isEmpty())

                                                    @foreach($studentMarks as $stmark)

                                                        @if($stmark->subject_id == $subjects->id && isset($stmark->total))

                                                            {{ $stmark->total }}
                                                            @break
                                                        @endif
                                                    @endforeach

                                                @endif

                                            </td>
                                                @if(isset($resultRule) && $resultRule=='grade')
                                                    @if(isset($subjectGrade)
                                                    && !empty($subjectGrade)
                                                    && array_key_exists($subjects->id,$subjectGrade))

                                                        <td>{{ $subjectGrade[$subjects->id][0] }} </td>
                                                        <td>{{ $subjectGrade[$subjects->id][1] }} </td>
                                                    @endif
                                                @endif

                                        </tr>
                                    @endforeach

                                @endif
                            @endif




                            </tbody>

                        </table>


                    </section>



                </div>
            </div>
            <div class="clearfix"></div>
        </div>

    </div>



@endsection


