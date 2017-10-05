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
                    <div class="col-md-6 col-xs-5">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.subject_group_edit') }}
                    </div>
                    <div class="col-md-6 col-xs-7 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.subject_group_edit') }}</li>
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
                        <h2 class="form_title">
                            {{ trans('sidebar.subject_group_edit') }}
                        </h2>
                    </div>

                    {!! Form::model(
                                $subjectGroupData,
                                array(
                                'route' => ['subject-group-edit',$subjectGroupData->id],
                                'files' => true,
                                'id'=>'create-form',
                                'class'=>'form-create',
                                'method'=>'PATCH'
                                ))
                    !!}

                    {!! formFields($editSubjectGroup,$mode='edit',$subjectGroupData->id)  !!}

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

    <script type="text/javascript">

        $(document).ready(function(){
            $('#student_class_id').select2();
            var ClassId = $('#student_class_id').find('option:selected').val();
            var SubjectGroupId = '<?php echo $subjectGroupData->id ?>';

            ajaxclall(ClassId,SubjectGroupId);

            /*start choose subject_ids onchange event of ClassId and SubjectGroupId*/
            $('#student_class_id').change(function(){
                ClassId = $('#student_class_id').find('option:selected').val();
                ajaxclall(ClassId,SubjectGroupId)
            });
            /*end choose subject_ids onchange event of ClassId and SubjectGroupId*/
        });

       var ajaxclall = function(ClassId,SubjectGroupId){

            if(ClassId==0){
                alert('Please selected a class');
            }
            $.ajax({
                url: "{{ route('subject-class-edit') }}",
                type: "GET",
                data:{
                    'ClassId':ClassId,
                    'SubjectGroupId':SubjectGroupId,
                },
                success: function(data){
                    $data = $(data); // the HTML content your controller has produced
                    $('#subjectTable').html($data);
                },
                error: function(data){
                    if(data.status = 404){
                        alert('Permission Denied!!!!');
                    }else{
                        alert('It has Some Error!');
                    }
                }
            });
        };


    </script>

@endsection