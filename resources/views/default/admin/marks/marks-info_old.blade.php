{{ dd($subjectsOfSubjectGroup) }}
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
                    <div class="col-md-7 col-xs-6">
                       <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
                        <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-5 col-xs-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('translate.dashboard') }}</a></li>
                            <li class="active">{{ trans('translate.student') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
         <div class="inner-view">
        <div class="row">
            <div class="col-md-12">
                <div class="wrapper-marks row">
                     <section>
                        <div class="header_institute">
                            <div class="col-sm-12 col-sx-12 text-center">
                                <h1 class="site_title">
                                   {{ $siteName }}
                                 </h1>
                            </div>

                            <div class="col-sm-12 text-center">
                               <div class="report_card"> {{ trans('translate.report_card') }}
                               </div>
                                
                                @if(isset($exam) && !empty($exam))
                                   <div class="exam_name">
                                    {{ trans('sidebar.examination_name') }}:{{$exam->examination_name}}
                                   </div>
                                @endif
                                </div>

                                <div class="col-sm-6 col-xs-6 text-left">
                                @if(isset($resultRule) && $resultRule == 'division' &&  isset($isFail) && $isFail==false)
                                    {{ trans('translate.total_marks') }}:<strong>{{ $student->totalResult }}</strong>
                                @elseif(isset($resultRule) && $resultRule == 'division' &&  isset($isFail) && $isFail==true)
                                    {{ trans('translate.total_marks') }}:<strong> 0 </strong>
                                @endif


                                @if(isset($resultRule) && $resultRule == 'grade' &&  isset($isFail) && $isFail==false)
                                        <strong>{{ trans('translate.gpa') }}:{{ $student->grade }}</strong>
                                @elseif(isset($resultRule) && $resultRule == 'grade' &&  isset($isFail) && $isFail==true)
                                        <strong> {{ trans('translate.gpa') }}:0</strong>

                                @endif

                            </div>
                              

                            <div class="col-sm-6 col-xs-6 text-right">
                               
                                @if(isset($resultRule) && $resultRule == 'division')
                                    <strong>Result :</strong>
                                @endif
                                @if(isset($resultRule) && $resultRule == 'grade')
                                   <strong>Result :</strong>
                                @endif
                                @if(isset($isFail) && $isFail==true)
                                    <strong>{{ 'Fail' }}</strong>
                                @else
                                    <strong>{{ $student->result }}</strong>
                                @endif
                            </div>

                        </div>
                    </section>



                    <section class="auto_scroll">
                        <table class="table table-bordered table-striped">
                            <caption class="report_details_mark">
                                {{ trans('translate.name') }}:
                                <span>
                                    {{ $student->first_name}}  {{$student->last_name}}
                                </span>
                                </br>
                                 {{ trans('translate.class') }}: <span>{{$studentClass->class_name  }} </span> 
                                </br>
                                 {{ trans('translate.section') }}: <span> {{ $student->section->section_name }} </span>
                                </br>
                                {{ trans('translate.roll_no') }}: <span> {{ $student->roll_no }} </span>  {{--Total Student:<span> {{ '' }} </span>--}}
                            </caption>
                            <thead>
                            <tr>
                                <th>{{ trans('translate.subject') }}</th>
                                <th>{{ trans('translate.subject_total') }}</th>
                                   @if(isset($marksTypes) && !empty($marksTypes))
                                       @foreach($marksTypes as $marksType)
                                        <th>{{  $marksType->marks_type }}</th>
                                       @endforeach
                                   @endif

                                <th>{{ trans('translate.total') }}</th>
                                @if(isset($resultRule) && $resultRule=='grade')
                                    <th>{{ trans('translate.cgpa') }}</th>
                                    <th>{{ trans('translate.grade') }}</th>
                                @endif


                            </tr>
                            </thead>
                            <tbody>



                            @if(isset($student) && !empty($student))
                                @if(isset($subjectsOfTheClass) && !$subjectsOfTheClass->isEmpty())

{{--{{ dd($subjectsOfTheClass) }}--}}
                                    @foreach($subjectsOfTheClass as $subjects)
{{--                                        {{ dd(is_object($subjects)) }}--}}
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
                                                @if(isset($marksTypes) && !empty($marksTypes))
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

                                                @if(isset($marksTypes) && !empty($marksTypes))
                                                    @foreach($marksTypes as $marksType)
                                                        <td> 0</td>
                                                    @endforeach
                                                @endif

                                            @endif




                                            <td>

                                                @if(isset($studentMarks) && !$studentMarks->isEmpty())

                                                    @set('subjectIds',explode(',',$studentMarks->implode('subject_id',',')))

                                                    @if(in_array($subjects->id,$subjectIds) )

                                                        @set('subjectKey',array_search ($subjects->id, $subjectIds))

                                                        @if(isset($studentMarks[$subjectKey]->total))

                                                            {{ $studentMarks[$subjectKey]->total }}
                                                        @endif

                                                    @else
                                                        0

                                                    @endif

                                                    {{--@foreach($studentMarks as $stmark)

                                                        @if($stmark->subject_id == $subjects->id && isset($stmark->total))

                                                            {{ $stmark->total }}
                                                            @break
                                                        @endif
                                                    @endforeach--}}
                                                    
                                                @else

                                                    0
                                                @endif

                                            </td>
                                            @if(isset($resultRule) && $resultRule=='grade')
                                                @if(isset($subjectGrade)
                                                && !empty($subjectGrade)
                                                && array_key_exists($subjects->id,$subjectGrade))

                                                    <td>{{ $subjectGrade[$subjects->id][0] }} </td>
                                                    <td>{{ $subjectGrade[$subjects->id][1] }} </td>
                                                @else

                                                    <td>0 </td>
                                                    <td>0 </td>
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

    </div>



@endsection


