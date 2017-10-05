@inject('stMarksListForView','Erp\Forms\StudentMarksListForm')

@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
    {!! Html::style('select/css/select2.min.css') !!}
@endsection

@section('content')
    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ strtoupper($viewType) }}
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">Dashboard</a></li>
                            <li class="active">{{ strtoupper($viewType) }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-box">
            <div class="row">
                <div class="col-md-12 snt form-horizontal">

                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    @if(session()->has('success'))
                        <div class="alert alert-success">
                            <ul>

                                <li>{{ session()->get('success') }}</li>

                            </ul>
                        </div>
                    @endif




                    {!! formFields($stMarksListForView)  !!}

                        <br>
                        {!! Form::submit('Get Students',['class'=>'btn btn-primary','id'=>'get-class-students-btn','readonly'=>'readonly']) !!}



                    <div id="student-list-for-view-marks">

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection


@section('scripts')

    @parent

    {!! Html::script('select/js/select2.min.js') !!}

    <script>

        $(document).ready(function(){

            $('#add-marks-exam').select2();
            $('#add-marks-class').select2();
            $('#add-marks-section').select2();

            var host = window.location.origin ;

            $('#add-marks-class').change(function () {

                var studentClass = $('#add-marks-class').find('option:selected').val();

                $.ajax({
                    'url': host+'/section/list-by-class/'+studentClass,
                    'dataType': 'json',
                    success: function(data){

                        var sectionList = "<option value=''>Select </option>";
                        var subjectList = "<option value=''>Select </option>";

                        $(data[0]).each(function(index,item){

                            sectionList += "<option value ="+ item.id +">"+item.section_name+" </option>";

                        });
                        $(data[1]).each(function(index,item){

                            subjectList += "<option value ="+ item.id +">"+item.subject_name+" </option>";

                        });

                        $('#add-marks-section').html(sectionList);
                        $('#add-marks-subject').html(subjectList);
                    }
                });
            });


            $('#get-class-students-btn').click(function (event) {

                event.preventDefault();

                var studentExam = $('#add-marks-exam').find('option:selected').val();
                var studentClass = $('#add-marks-class').find('option:selected').val();
                var studentSection = $('#add-marks-section').find('option:selected').val();

                $.ajax({
                    url: host+'/marks/student-list/',
                    type: "GET",
                    data:{
                        'classId':studentClass,
                        'sectionId':studentSection,
                        'examId':studentExam,
                    },
                    success: function(data){
                        /*alert(data);*/
                        $data = $(data); // the HTML content your controller has produced

                        $('#student-list-for-view-marks').html($data);
                    },
                    error: function(data){
                        $('#student-list-for-view-marks').html("Not saved");
                    }
                });
            });

        });



    </script>

@endsection

