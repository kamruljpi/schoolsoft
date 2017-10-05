@inject('studentIdCardForm','Erp\Forms\StudentIdCardForm')

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

                                    <h4>Get student id card</h4><br>

                                    {!! formFields($studentIdCardForm) !!}
                                        <br>
                                        {!! Form::submit('Student Id Card',['class'=>'btn btn-primary','id'=>'student-id-card-btn','readonly'=>'readonly']) !!}


                                    <div id="student-id-card-report">


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
            $('#student_class_id').select2();
            $('#section_id').select2();
            $('#student_id').select2();
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

            $('#student-id-card-btn').click(function () {

                var studentClassId = $('#student_class_id').find('option:selected').val();
                var sectionId = $('#section_id').find('option:selected').val();
                var studentId = $('#student_id').find('option:selected').val();
                var host = window.location.origin ;

                if(studentClassId == 0 || sectionId == 0 || studentId == 0){
                    alert('please select class, section and student');
                }else {
                    $.ajax({
                        url: host + '/report/student-id-card-report/' +studentClassId+'/'+ sectionId+'/'+studentId,
                        type: "GET", // not POST, laravel won't allow it
                        success: function(data){
                            /*alert(data);*/
                            $data = $(data); // the HTML content your controller has produced

                            $('#student-id-card-report').html($data);
                        }
                    });
                }


            });
        });
    </script>

@endsection