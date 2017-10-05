@inject('createSpecializationForm','Erp\Forms\SpecializationForm')



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
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.specialization_create') }}
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.specialization_create') }}</li>
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
                            {{ trans('sidebar.specialization_create') }}
                        </h2>                                          
                    </div>
                    
                    {!! Form::open(array('route' => 'specialization-create', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}

                    {!! formFields($createSpecializationForm)  !!}

                    {!!  Form::close()   !!}

                </div>
            </div>
        </div>
    </div>



@endsection
@section('scripts')


    @parent
    <script src="{{ asset('jquery-validation/dist/jquery.validate.min.js') }}"></script>
    {!! Html::script('select/js/select2.min.js') !!}
    {{-- <script>
         $("#create-form").validate();
     </script>--}}
    <script type="text/javascript">
        $(document).ready(function(){
            $('#skill_category_id').select2();
            $('#skills').select2();
            $(".translation_wrap").hide();
            $(".translation_wrap.trans_en"/*+lang_def*/).show();
            $(".control_lang").on("click",function(){
                var selected_lang = $(this).val();
                $(".translation_wrap").hide();
                $(".translation_wrap.trans_"+selected_lang).show();
                $(".control_lang").val(selected_lang);
            });
            /*start choose skill onchange event of skillCategory*/
            $('#skill_category_id').change(function(){
                var host = window.location.origin ;
                var skillCategoryId = $('#skill_category_id').find('option:selected').val();
                $.ajax({
                    'url': host + '/skill-category/' + skillCategoryId,
                    'dataType': 'json'
                }).success(function (data) {
                    console.log(data);
                    var skillForSkillCategory = "<option value=''>Select Skill</option>";
                    $(data[0]).each(function(index,item){
                        skillForSkillCategory += "<option value ="+ item.id +">"+item.skill_name+" </option>";
                    });
                    $('#skills').html(skillForSkillCategory);
                })
            });
            /*end choose skill onchange event of skillCategory*/
        });
    </script>


    {{--<script src="{{ asset('jquery-validation/dist/jquery.validate.js') }}"></script>--}}

@endsection