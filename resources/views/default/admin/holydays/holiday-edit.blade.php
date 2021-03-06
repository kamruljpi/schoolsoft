@inject('editHolydayForm','Erp\Forms\HolydayForm')



@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
    {!! Html::style('datepicker/css/datepicker.css') !!}
@endsection

@section('content')

    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6 col-xs-5">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span> {{ trans('sidebar.edit_holyday') }}
                    </div>
                    <div class="col-md-6 col-xs-7 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active"> {{ trans('sidebar.edit_holyday') }}</li>
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
                            {{ trans('sidebar.edit_holyday') }}
                        </h2>                                          
                    </div>

                    {!! Form::model(
                        $holidayToEdit,
                        array(
                            'route' => ['edit-holiday',$holidayToEdit->id],
                            'files' => true,
                            'id'=>'create-form',
                            'class'=>'form-create',
                            'method'=>'PATCH'
                        ))
                    !!}

                    {!! formFields($editHolydayForm,$mode='edit',$holidayToEdit->id)  !!}

                    {!!  Form::close()   !!}

                </div>
            </div>
        </div>
    </div>



@endsection
@section('scripts')
    @parent
    {!! Html::script('datepicker/js/bootstrap-datepicker.js') !!}

    <script type="text/javascript">
        $(document).ready(function(){
            $('#date').datepicker();
        });
    </script>
@endsection