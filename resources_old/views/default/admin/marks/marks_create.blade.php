@inject('createMarksForm', 'Erp\Forms\AddMarksForm')




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
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>@if(isset($viewType)){{ strtoupper($viewType) }}@endif
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">Dashboard</a></li>
                            <li class="active">@if(isset($viewType)){{ strtoupper($viewType) }}@endif</li>
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
                        @if (session()->has('success'))
                            <div class="alert alert-success">
                                <ul>

                                    <li>{{ session()->get('success') }}</li>

                                </ul>
                            </div>
                        @endif





{!! Form::open(array('route' => 'create-marks', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}

{!! formFields($createMarksForm)  !!}

<br>
{!! Form::submit('Add Marks',['class'=>'btn btn-primary','id'=>'add-marks-btn','readonly'=>'readonly']) !!}

{!! Form::close() !!}

                    <div id="student-list-for-marks">


                    </div>

                    <div id="result-test"></div>
                </div>
            </div>
        </div>
    </div>



@endsection

@section('scripts')

    @parent

    {!! Html::script('datepicker/js/bootstrap-datepicker.js') !!}
    {!! Html::script('datepicker/js/bootstrap-timepicker.js') !!}
    {!! Html::script('select/js/select2.min.js') !!}

    <script>

        $(document).ready(function(){


            $('#add-marks-exam').select2();
            $('#add-marks-class').select2();
            $('#add-marks-section').select2();
            $("#add-marks-subject").select2();

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



            $('#add-marks-btn').click(function (e) {

                e.preventDefault();

                var exam = $('#add-marks-exam').val();
                var studentClass = $('#add-marks-class').find('option:selected').val();
                var studentSection = $('#add-marks-section').find('option:selected').val();
                var studentSubject = $('#add-marks-subject').find('option:selected').val();

                var params = new Object();
                $('[id^="add-marks-"]').each(function()
                {
                    id = $(this).attr("name");
                    params[id] = $(this).find('option:selected').val();
                });

                if(exam == 0
                || studentClass == 0
                || studentSection == 0
                || studentSubject ==0){

                    alert('sorry !!! u migt have missed either exam/class/section/subject');

                    return false;
                }else {

                    $.ajax({
                        url: host+'/marks/all-students/add',
                        data:{
                            'params':params,
                        },
                        type: "GET", // not POST, laravel won't allow it
                        success: function(data){
                            /*alert(data);*/
                            $data = $(data); // the HTML content your controller has produced

                            $('#student-list-for-marks').html($data);
                        }
                    });

                }

            });


            $("#student-list-for-marks").on("click focus",".mrk_ttl_common_cls",function () {
                var stdntid = $(this).data("stdnid");
                var stdntmark = 0;
                $('[id^="mrk_tp_'+stdntid+'_"]').each(function()
                {
                   var mrk = $(this).val();
                   stdntmark = parseInt(stdntmark) + parseInt(mrk);
                    if(isNaN(parseInt(stdntmark))){
                        $("#mrk_ttl_"+stdntid).val(0);
                    }else{
                        $("#mrk_ttl_"+stdntid).val(parseInt(stdntmark));
                    }
                });
            });


            $("#student-list-for-marks").on("click",".mrk_add_common_cls",function () {
                var stdntid = $(this).data("stdnid");
                var stdntroll = $(this).data("roll");
                var params = new Object();
                $('[id^="mrk_tp_'+stdntid+'_"]').each(function()
                {
                    var str = $(this).attr("id");
                    var mkey = str.replace("mrk_tp_"+stdntid+"_","");
                    params[mkey] = $(this).val();
                });

                params['total'] = $("#mrk_ttl_"+stdntid).val();
                params['student_id'] = stdntid;
                params['exam_id'] = $("#add-marks-exam").val();
                params['section_id'] = $("#add-marks-section").val();
                params['subject_id'] = $("#add-marks-subject").val();
                params['class_id'] = $("#add-marks-class").val();
                params['roll_number'] = stdntroll;
                $.ajax({
                    url: host+'/marks/student-mark/add',
                    data:{
                        'params':params,
                    },
                    type: "POST",
                    success: function(data){
                        $('#mrk_rslt_'+stdntid).html(data);

                    },
                    error: function(data){
                        $('#mrk_rslt_'+stdntid).html("Not saved");
                    }
                });
            });

        });



    </script>

@endsection
