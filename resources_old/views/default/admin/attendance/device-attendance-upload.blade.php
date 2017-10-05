@inject('uploadDeviceData', 'Erp\Forms\DeviceDataUploadForm')

{{--@inject('userForm','Erp\Models\User\UserForm')--}}


@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')

    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>@if(isset($viewType)){{ strtoupper($viewType) }}@endif
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">Dashboard</a></li>
                            <li class="active">@if(isset($viewType)){{ strtoupper($viewType) }}@endif</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-box">
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
                        @if (session()->has('success'))
                            <div class="alert alert-success">
                                <ul>

                                    <li>{{ session()->get('success') }}</li>

                                </ul>
                            </div>
                        @endif


                    {!! Form::open(array('route' => 'monthly-device-data-upload', 'files' => true, 'id'=>'create-form')) !!}

                        <h4>only txt file allowed</h4>
                        {!! formFields($uploadDeviceData)  !!}
                        <br>
                        <div class="text-left">
                            {!! Form::submit('Preview',['class'=>'btn btn-primary','id'=>'preview-btn','readonly'=>'readonly']) !!}
                            {{--{!! Form::submit('Process',['class'=>'btn btn-success','id'=>'process-btn','readonly'=>'readonly']) !!}--}}
                            {{--{!! Form::submit('Cancel',['class'=>'btn btn-danger','id'=>'cancel-btn','readonly'=>'readonly']) !!}--}}
                            {!! Form::submit('Upload File',['class'=>'btn btn-primary','id'=>'upload-btn','readonly'=>'readonly']) !!}
                        </div>
                    {!!  Form::close() !!}

                    <div class="preview">


                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')

    @parent
    <script src="{{ asset('theme_components/admin/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    {!! Html::script('theme_components/admin/plugins/datatables/dataTables.bootstrap.min.js') !!}
    {!! Html::script('select/js/select2.min.js') !!}




    <script type="text/javascript">

var host = window.location.origin ;
        $("#preview-btn").on("click",function(e){
            e.preventDefault();

            var formData = new FormData();
            var fileToUpload = $("#file").prop("files")[0];
            formData.append('formFile',fileToUpload);

            $.ajax({
                url: host+'/attendance/device-data/preview/',
                type: 'POST',
                data: formData,
                cache: false,
                dataType: 'json',
                processData: false, // Don't process the files
                contentType: false, // Set content type to false as jQuery will tell the server its a query string request
                success: function(data){

                    console.log(data);

                    var tableWithPunch = "<table border='1'><thead><td>Employee Id</td><td> Punch In Time</td><td>Punch Out Time</td> </thead>";
                    var userPunch = data;

                    for(var i in userPunch){

                        console.log(i);
                        tableWithPunch += "<tr><td>"+userPunch[i].employee_id+"</td><td>"+ userPunch[i].punch_in_date_time+"</td><td>"+userPunch[i].punch_out_date_time+"</td></tr>"
                    }

                    tableWithPunch += "</table>";

                    $('.preview').html(tableWithPunch);
                },
                error: function(){

                },
            });
        });

    </script>

@endsection
