@inject('createSalaryCutForm', 'Erp\Forms\SalaryCutForm')




@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')

    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6 col-xs-5">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.set_salary_cut_rules') }}
                    </div>
                    <div class="col-md-6 col-xs-7 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.set_salary_cut_rules') }}</li>
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
                            {{ trans('sidebar.salary_cut_rules_enrole_form') }}
                        </h2>                                          
                    </div>

                    {!! Form::open(array('route' => 'create-salary-cut-rules', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}

                    {!! formFields($createSalaryCutForm)  !!}


                    {!!  Form::close()   !!}
                </div>
            </div>
        </div>
    </div>



@endsection
