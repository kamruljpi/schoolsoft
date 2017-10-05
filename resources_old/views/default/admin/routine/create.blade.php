@inject('createRoutineForm','Erp\Forms\RoutineForm')



@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
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

                    {!! Form::open(array('route' => 'routine-create', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}

                    {!! formFields($createRoutineForm)  !!}

                    {!!  Form::close()   !!}

                </div>
            </div>
        </div>
    </div>

@endsection

@section('scripts')
    @parent
    {!! Html::script('datepicker/js/bootstrap-timepicker.js') !!}

    <script>
        $(document).ready(function(){
            $('#class_start_time').timepicker({
                minuteStep: 1,
                //template: 'modal',
                //appendWidgetTo: 'body',
                showSeconds: true,
                showMeridian: false
                //defaultTime: false
            });
            $('#class_end_time').timepicker({
                minuteStep: 1,
                //template: 'modal',
                //appendWidgetTo: 'body',
                showSeconds: true,
                showMeridian: false
                //defaultTime: false
            });

            /*start choose section, subject onchange event of class*/
            $('#student_class_id').change(function(){
                var host = window.location.origin ;
                var studentClassId = $('#student_class_id').find('option:selected').val();
                $.ajax({
                    'url': host + '/student-class/' + studentClassId,
                    'dataType': 'json'
                }).success(function (data) {
                    //console.log(data);
                    var sectionForClass = "<option value=''>Select </option>";
                    var subjectForClass = "<option value=''>Select </option>";
                    $(data[0]).each(function(index,item){
                        sectionForClass += "<option value ="+ item.id +">"+item.section_name+" </option>";
                    });
                    $('#section_id').html(sectionForClass);

                    $(data[1]).each(function(index,item){
                        subjectForClass += "<option value ="+ item.id +">"+item.subject_name+" </option>";
                    });
                    $('#subject_id').html(subjectForClass);
                })
            });
            /*end choose section, subject onchange event of class*/

            /*start choose floor onchange event of building*/
            $('#building_id').change(function(){
                var host = window.location.origin ;
                var buildingId = $('#building_id').find('option:selected').val();
                $.ajax({
                    'url': host + '/floor/' + buildingId,
                    'dataType': 'json'
                }).success(function (data) {
                    //console.log(data);
                    var floorForBuilding = "<option value=''>Select </option>";
                    $(data[0]).each(function(index,item){
                        floorForBuilding += "<option value ="+ item.id +">"+item.floor_name+" </option>";
                    });
                    $('#floor_id').html(floorForBuilding);
                })
            });
            /*end choose floor onchange event of building*/

            /*start choose room onchange event of floor*/
            $('#floor_id').change(function(){
                var host = window.location.origin;
                var floorId = $('#floor_id').find('option:selected').val();
                $.ajax({
                    'url': host + '/room/' + floorId,
                    'dataType': 'json'
                }).success(function (data) {
                    //console.log(data);
                    var roomForFloor = "<option value=''>Select </option>";
                    $(data[0]).each(function(index,item){
                        roomForFloor += "<option value ="+ item.id +">"+item.room_name+" </option>";
                    });
                    $('#room_id').html(roomForFloor);
                })
            });
            /*end choose room onchange event of floor*/
        });
    </script>
@endsection