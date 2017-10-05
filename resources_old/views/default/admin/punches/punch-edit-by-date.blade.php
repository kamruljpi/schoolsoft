{{--{{ dd($userPunchesByDate) }}--}}

@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')

    <div class="container-fluid" style="min-height: 1215px;">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>@if( isset($viewType)){{ strtoupper($viewType) }} @endif
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">Dashboard</a></li>
                            <li class="active">@if(isset($viewType)){{ strtoupper($viewType) }} @endif</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-box">
            <div class="row margin-top-area">
                <div class="col-md-8 snt form-horizontal">

                    @if(isset($errorMessage) && isset($punchDate) && $errorMessage == true )
                        <div class="alert alert-danger">
                            <ul>

                                    <li>Sorry !!! No Punch Info on {{ $punchDate }} </li>

                            </ul>
                        </div>


                    @endif

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

                                    <span>{{ session()->get('success') }} </span>

                                </ul>
                            </div>
                        @endif

                    @if($userPunchesByDate->count()>0)

                        {!! Form::open(
                                    array(
                                    'route' => ['user-punch-edit',$punchDate,$userId],
                                    'class'=>'form-create',
                                    'method'=>'PATCH'
                                    ))
                        !!}

                            @foreach($userPunchesByDate as $userPunch)

                                <div class="form-group {{ $errors->has('punch_in_date_time')? 'has-error':'' }}">
                                    {!! Form::label('punch_in_date_time','Punch-in Time', ['class'=>'col-sm-2 control-label']) !!}

                                    <div class="col-sm-10">
                                        {!! Form::text('punch_in_date_time[]',$userPunch->punch_in_date_time,['class'=>'form-control']) !!}
                                        {!!  $errors->first('punch_in_date_time','<span class="help-block">:message</span>')   !!}
                                    </div>

                                </div>

                                <div class="form-group {{ $errors->has('punch_out_date_time')? 'has-error':'' }}">
                                    {!! Form::label('punch_out_date_time','Punch-out Time', ['class'=>'col-sm-2 control-label']) !!}

                                    <div class="col-sm-10">
                                        {!! Form::text('punch_out_date_time[]',$userPunch->punch_out_date_time,['class'=>'form-control']) !!}
                                        {!!  $errors->first('punch_out_date_time','<span class="help-block">:message</span>')   !!}
                                    </div>

                                </div>
                            @endforeach

                                <div class="text-right">

                                    {!! Form::submit('Submit',['class'=>'btn btn-success','readonly'=>'readonly']) !!}

                                </div>

                        {!!  Form::close()   !!}

                    @endif

                </div>
            </div>
        </div>
    </div>



@endsection