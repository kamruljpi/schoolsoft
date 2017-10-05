@inject('createDesignation', 'Erp\Forms\DesignationForm')

{{--@inject('userForm','Erp\Models\User\UserForm')--}}


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
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.designation_create') }}
                    </div>
                    <div class="col-md-6 col-xs-7 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('translate.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.designation_create') }}</li>
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
                   
                    <div class="custom_row">                      
                        <h2 class="form_title">
                            {{ trans('sidebar.designation_enrole_form') }}
                        </h2>                                          
                    </div>



                    {!! Form::open(array('url' => 'designation/add', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}

                    {!! formFields($createDesignation)  !!}

                    {!!  Form::close()   !!}
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
            $('#department_id').select2();
        });
    </script>
@endsection
