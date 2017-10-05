@inject('createStudent','Erp\Forms\StudentForm')

@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
    {!! Html::style('datepicker/css/datepicker.css') !!}
    {!! Html::style('select/css/select2.min.css') !!}
@endsection

@section('content')

    <div class="container-fluid min_height_area" >
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6 col-xs-6">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>
                         {{ trans('sidebar.create_student') }}
                    </div>
                    <div class="col-md-6 col-xs-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#"> {{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.create_student') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-view">
            <div class="row">
                <div class="col-md-12 snt form-horizontal">

                    @if (count($errors) > 0)
                        <div class="alert alert-danger row">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                        @if(session()->has('success'))
                            <div class="alert alert-success row">
                                <ul>

                                    <li>{{ session()->get('success') }}</li>

                                </ul>
                            </div>
                        @endif

                       

                   <div class="custom_row">
                        {!! inputLangControl() !!}
                    </div>

                    <div class="custom_row">                      
                        <h2 class="form_title">
                            {{ trans('sidebar.student_enrole_form') }}
                        </h2>                                          
                    </div>
                    {!! Form::open(array('route' => 'student-create', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}


                        {!! formFields($createStudent) !!}

                    {!!  Form::close()   !!}
                </div>
            </div>
        </div>
    </div>



@endsection
@section('scripts')


    @parent

   {{-- <script src="{{ asset('jquery-validation/dist/jquery.validate.min.js') }}"></script>--}}
    {!! Html::script('datepicker/js/bootstrap-datepicker.js') !!}
    {!! Html::script('select/js/select2.min.js') !!}

    <script type="text/javascript">
        $(document).ready(function(){
            $('#guardian_id').select2();
            $('#gender_id').select2();
            $('#religion_id').select2();
            $('#department_id').select2();
            $('#student_class_id').select2();
            $('#section_id').select2();
            $('#subject_group_id').select2();
            /* start date picker option*/
            $('#birthday').datepicker() ;
            $('#dept_join_date').datepicker() ;
            /* end date picker option*/

            /* start multi-lingual option*/

            $(".translation_wrap").hide();
            $(".translation_wrap.trans_en"/*+lang_def*/).show();
            $(".control_lang").on("click",function(){
                var selected_lang = $(this).val();
                $(".translation_wrap").hide();
                $(".translation_wrap.trans_"+selected_lang).show();
                $(".control_lang").val(selected_lang);
            });
            /*end multi-lingual option*/
            /*start choose section onchange event of class*/
            $('#student_class_id').change(function(){
                var host = window.location.origin ;
                var studentClassId = $('#student_class_id').find('option:selected').val();
                $.ajax({
                    'url': host + '/student-class/' + studentClassId,
                    'dataType': 'json'
                }).success(function (data) {
//                    console.log(data);
                    var sectionForClass = "<option value=''>Select Section</option>";
                    $(data[0]).each(function(index,item){
                        sectionForClass += "<option value ="+ item.id +">"+item.section_name+" </option>";
                    });
                    $('#section_id').html(sectionForClass);

                    var subjectGroupForClass = "<option value=''>Select Subject Group</option>";
                    $(data[2]).each(function(index,item){
                        subjectGroupForClass += "<option value ="+ item.id +">"+item.subject_group_name+" </option>";
                    });
                    $('#subject_group_id').html(subjectGroupForClass);
                })
            });
            /*end choose section onchange event of class*/

            /*--------------------------------------------------------------------------------------------------------------*/


            /*start choose designation onchange event of department*/

            /*$('#department_id').change(function(){

                var host = window.location.origin ;

                var departmentId = $('#department_id').find('option:selected').val();

                $.ajax({
                    'url': host + '/student/class/' + departmentId,
                    'dataType': 'json'
                }).success(function (data) {
console.log(data);
                    var classesForDepartment = "<option value=''>Select </option>";


                    $(data[0]).each(function(index,item){

                        classesForDepartment += "<option value ="+ item.id +">"+item.class_name+" </option>";
                    });
                        $('#student_class_id').html(classesForDepartment);
                })
            });*/

            /!*end choose class onchange event of department*!/
        });
    </script>

@endsection