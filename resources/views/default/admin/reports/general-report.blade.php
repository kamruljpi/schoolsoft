@inject('generalReportForm','Erp\Forms\GeneralReportForm')

@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
    {!! Html::style('select/css/select2.min.css') !!}
@endsection

@section('content')

    <div class="container-fluid min_height_area" >
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
        <div class="inner-view">
            <div class="row">
                <div id="datatable">

                    <div class="row last">
                        <div class="col-sm-12">
                            <div class="box">
                               
                                <div class="box-body">
                                    @if (count($errors) > 0)
                                        <div class="alert alert-danger">
                                            <ul>
                                                @foreach ($errors->all() as $error)
                                                    <li>{{ $error }}</li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    @endif
                                    <div class="print_none">
                                    {!! formFields($generalReportForm) !!}
                                    </div>


                                    <div id="general-report-div">
                                        
                                    </div>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div> <!--row last-->
                </div>
            </div>
        </div>
    </div>
@endsection


@section('scripts')

    @parent
    {!! Html::script('theme_components/admin/plugins/datatables/dataTables.bootstrap.min.js') !!}
    {!! Html::script('select/js/select2.min.js') !!}

    <script type="text/javascript">
        $(document).ready(function(){
            $('#teacher_id').select2();
            $('#student_class_id').select2();
            $('#section_id').select2();
            $('#department_id').select2();
            $('#student_id').select2();
            $('#routine_class_id').select2();
            $('#routine_section_id').select2();
            $('#examination_id').select2();
            $('#exam_class_id').select2();
            $('#exam_section_id').select2();
            /*start choose section onchange event of class*/
            $('#student_class_id').change(function(){
                var host = window.location.origin ;
                var studentClassId = $('#student_class_id').find('option:selected').val();
                $.ajax({
                    'url': host + '/student-class/' + studentClassId,
                    'dataType': 'json'
                }).success(function (data) {
                    console.log(data);
                    var sectionForClass = "<option value=''>Select Section</option>";
                    $(data[0]).each(function(index,item){
                        sectionForClass += "<option value ="+ item.id +">"+item.section_name+" </option>";
                    });
                    $('#section_id').html(sectionForClass);
                })
            });
            /*end choose section onchange event of class*/

            /*start choose student onchange event of section*/
            $('#section_id').change(function(){
                var host = window.location.origin ;
                var sectionId = $('#section_id').find('option:selected').val();
                $.ajax({
                    'url': host + '/report/' + sectionId,
                    'dataType': 'json'
                }).success(function (data) {
                    console.log(data);
                    var studentForSection = "<option value=''>Select Student</option>";
                    $(data[0]).each(function(index,item){
                        studentForSection += "<option value ="+ item.id +">"+item.first_name+ ' ' +item.last_name+" </option>";
                    });
                    $('#student_id').html(studentForSection);
                })
            });
            /*end choose student onchange event of section*/

            /*start choose student onchange event of department*/
            $('#department_id').change(function(){
                var host = window.location.origin ;
                var sectionId = $('#section_id').find('option:selected').val();
                var departmentId = $('#department_id').find('option:selected').val();
                if(sectionId == 0){
                    $.ajax({
                        url: '{{ route("student-list-by-departmentId") }}',
                        data:{
                            'departmentId' : departmentId
                        },
                        type: "GET", // not POST, laravel won't allow it
                        success: function(data){
                            console.log(data);
                            $data = $(data); // the HTML content your controller has produced
                            var studentForDepartment = "<option value=''>Select Student</option>";
                            $(data[0]).each(function(index,item){
                                studentForDepartment += "<option value ="+ item.id +">"+item.first_name+ ' ' +item.last_name+" </option>";
                            });
                            $('#student_id').html(studentForDepartment);
//                            $('#general-report-div').html($data);
                        }
                    });
                }else {
                    $.ajax({
                        url: '{{ route("student-list-by-sectionId-departmentId") }}',
                        data:{
                            'sectionId' : sectionId,
                            'departmentId' : departmentId
                        },
                        type: "GET", // not POST, laravel won't allow it
                        success: function(data){
                            console.log(data);
                            $data = $(data); // the HTML content your controller has produced
                            var studentForDepartment = "<option value=''>Select Student</option>";
                            $(data[0]).each(function(index,item){
                                studentForDepartment += "<option value ="+ item.id +">"+item.first_name+ ' ' +item.last_name+" </option>";
                            });
                            $('#student_id').html(studentForDepartment);
//                            $('#general-report-div').html($data);
                        }
                    });
                }

            });
            /*end choose student onchange event of department*/
            $('#teacher-report-btn').click(function () {
                var teacherId = $('#teacher_id').find('option:selected').val();

                $.ajax({
                    url: '{{ route("general-report-teacher") }}',
                    data:{
                        'teacherId' : teacherId
                    },
                    type: "GET", // not POST, laravel won't allow it
                    success: function(data){
                        /*alert(data); */
                        $data = $(data); // the HTML content your controller has produced

                        $('#general-report-div').html($data);
                    }
                });
            });

            $('#student-report-btn').click(function () {
                var studentClassId = $('#student_class_id').find('option:selected').val();
                var sectionId = $('#section_id').find('option:selected').val();
                var departmentId = $('#department_id').find('option:selected').val();
                var studentId = $('#student_id').find('option:selected').val();

                $.ajax({
                    url: '{{ route("general-report-student") }}',
                    data:{
                        'studentClassId' : studentClassId,
                        'sectionId' : sectionId,
                        'departmentId' : departmentId,
                        'studentId' : studentId
                    },
                    type: "GET", // not POST, laravel won't allow it
                    success: function(data){
                        /*alert(data); */
                        $data = $(data); // the HTML content your controller has produced

                        $('#general-report-div').html($data);
                    }
                });
            });

            /*start choose section onchange event of class*/
            $('#routine_class_id').change(function(){
                var host = window.location.origin ;
                var studentClassId = $('#routine_class_id').find('option:selected').val();
                $.ajax({
                    'url': host + '/student-class/' + studentClassId,
                    'dataType': 'json'
                }).success(function (data) {
//                    console.log(data);
                    var sectionForClass = "<option value=''>Select Section</option>";
                    $(data[0]).each(function(index,item){
                        sectionForClass += "<option value ="+ item.id +">"+item.section_name+" </option>";
                    });
                    $('#routine_section_id').html(sectionForClass);
                })
            });
            /*end choose section onchange event of class*/

            /* start class routine generate */
            $('#routine-report-btn').click(function () {
                var studentClassId = $('#routine_class_id').find('option:selected').val();
                var sectionId = $('#routine_section_id').find('option:selected').val();

                if(sectionId==0){
                    alert("Please select section.");
                } else{
                    $.ajax({
                        url: '{{ route("general-report-routine") }}',
                        data:{
                            'studentClassId' : studentClassId,
                            'sectionId' : sectionId
                        },
                        type: "GET", // not POST, laravel won't allow it
                        success: function(data){
                            /*alert(data); */
                            $data = $(data); // the HTML content your controller has produced

                            $('#general-report-div').html($data);
                        }
                    });
                }
            });
            /* end class routine generate */

            /*start choose section onchange event of class*/
            $('#exam_class_id').change(function(){
                var host = window.location.origin ;
                var studentClassId = $('#exam_class_id').find('option:selected').val();
                $.ajax({
                    'url': host + '/student-class/' + studentClassId,
                    'dataType': 'json'
                }).success(function (data) {
//                    console.log(data);
                    var sectionForClass = "<option value=''>Select Section</option>";
                    $(data[0]).each(function(index,item){
                        sectionForClass += "<option value ="+ item.id +">"+item.section_name+" </option>";
                    });
                    $('#exam_section_id').html(sectionForClass);
                })
            });
            /*end choose section onchange event of class*/

            /* start exam routine generate */
            $('#exam-report-btn').click(function () {
                var examId = $('#examination_id').find('option:selected').val();
                var studentClassId = $('#exam_class_id').find('option:selected').val();
                var sectionId = $('#exam_section_id').find('option:selected').val();

                if(examId == 0 || studentClassId == 0 || sectionId==0){
                    alert("Please select exam, class and section.");
                } else{
                    $.ajax({
                        url: '{{ route("general-report-exam") }}',
                        data:{
                            'examId' : examId,
                            'studentClassId' : studentClassId,
                            'sectionId' : sectionId
                        },
                        type: "GET", // not POST, laravel won't allow it
                        success: function(data){
                            /*alert(data); */
                            $data = $(data); // the HTML content your controller has produced

                            $('#general-report-div').html($data);
                        }
                    });
                }
            });
            /* end exam routine generate */
        });
    </script>

@endsection