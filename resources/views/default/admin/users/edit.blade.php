
@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
    {!! Html::style('datepicker/css/datepicker.css') !!}
    {!! Html::style('select/css/select2.min.css') !!}
@endsection

@section('content')

    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6 col-xs-6">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span> {{ trans('sidebar.edit_employee') }}
                    </div>
                    <div class="col-md-6 col-xs-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.edit_employee') }}</li>
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
                            {{ trans('sidebar.edit_employee') }}
                        </h2>                                          
                    </div>

                    {!! Form::model(
                                $userProfile,
                                array(
                                'route' => ['user-edit',$userProfile->id],
                                'files' => true,
                                'id'=>'create-form',
                                'class'=>'form-create',
                                'method'=>'PATCH'
                                ))
                    !!}

                        {!! formFields($editUser,$mode='edit',$userProfile->id)  !!}

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
            $('#gender_id').select2();
            $('#religion_id').select2();
            $('#department_id').select2();
            $('#designation_id').select2();
            $('#shift_id').select2();
            $('#salary_rule_id').select2();
            $('#overtime_rule_id').select2();
            $('#salary_cut_rule_id').select2();
            $('#bonus_rule_id').select2();
            /* start date picker option*/
            $('#birthday').datepicker() ;
            $('#dept_join_date').datepicker() ;
            /* end date picker option*/

            $(".translation_wrap").hide();
            $(".translation_wrap.trans_en"/*+lang_def*/).show();
            $(".control_lang").on("click",function(){
                var selected_lang = $(this).val();
                $(".translation_wrap").hide();
                $(".translation_wrap.trans_"+selected_lang).show();
                $(".control_lang").val(selected_lang);
            });

            /*start get selected designation for selected department*/


                var userId = "<?php echo $userProfile->id; ?> "

                var host = window.location.origin ;

                $.ajax({
                    'url': host + '/designation/user/'+userId,
                    'dataType': 'json'
                }).success(function (data) {

                    var designationsForDepartment = "<option value="+data.id + ">"+data.name+" </option>";

                    $('#select2-designation_id-container').html(designationsForDepartment);
                    $('#designation_id').html(designationsForDepartment);
                })

                $.ajax({
                    'url': host + '/shift/user/'+userId,
                    'dataType': 'json'
                }).success(function (data) {
    //                console.log(data);
                    var shiftsForDesignation = "<option value="+data.id + ">"+data.name+" </option>";

                    $('#select2-shift_id-container').html(shiftsForDesignation);
                    $('#shift_id').html(shiftsForDesignation);
                })

                /*start get selected designation for selected department*/


                /*start choose designation onchange event of department*/

                $('#department_id').change(function(){

                    var host = window.location.origin ;

                    var departmentId = $('#department_id').find('option:selected').val();

                    $.ajax({
                        'url': host + '/designation/' + departmentId,
                        'dataType': 'json'
                    }).success(function (data) {

                        var designationsForDepartment = "<option value=''>Select </option>";
                        var shiftsForDepartment = "<option value=''>Select </option>";

                        $(data[0]).each(function(index,item){

                            designationsForDepartment += "<option value ="+ item.id +">"+item.name+" </option>";
                        });
                        $('#designation_id').html(designationsForDepartment);
                        $(data[1]).each(function(index,item){

                            for(var i in item){

                                shiftsForDepartment += "<option value ="+ i +">"+item[i]+" </option>";
                            }

    //                        shiftsForDepartment += "<option value ="+ item.id +">"+item.name+" </option>";
                        });
                        $('#shift_id').html(shiftsForDepartment);
                    })
                });

                /*end choose designation onchange event of department*/
        });
    </script>

@endsection