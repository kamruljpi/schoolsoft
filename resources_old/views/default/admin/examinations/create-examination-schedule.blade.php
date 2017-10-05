@inject('createExaminationscheduleForm','Erp\Forms\ExaminationScheduleForm')



@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
    {!! Html::style('datepicker/css/datepicker.css') !!}
    {!! Html::style('datepicker/css/timepicker.css') !!}
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
        <div class="inner-view">
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

                    {!! Form::open(array('route' => 'examinationSchedule-create', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}

                    {!! formFields($createExaminationscheduleForm)  !!}

                    {!!  Form::close()   !!}

                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')

    @parent

    {!! Html::script('datepicker/js/bootstrap-datepicker.js') !!}
    {!! Html::script('datepicker/js/bootstrap-timepicker.js') !!}

    <script>
        $(document).ready(function(){
            $('#examination_date').datepicker() ;
            $('#start_time').timepicker({
                minuteStep: 1,
                //template: 'modal',
                //appendWidgetTo: 'body',
                showSeconds: true,
                showMeridian: false
                //defaultTime: false
            });
            $('#end_time').timepicker({
                minuteStep: 1,
                //template: 'modal',
                //appendWidgetTo: 'body',
                showSeconds: true,
                showMeridian: false
                //defaultTime: false
            });
        });

    </script>


@endsection