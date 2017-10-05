@inject('stdAttendanceForm','Erp\Forms\StudentAttendanceForm')


@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
    {!! Html::style('datepicker/css/datepicker.css') !!}
    {!! Html::style('datepicker/css/timepicker.css') !!}
    {!! Html::style('select/css/select2.min.css') !!}
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
                    @if (session()->has('success'))
                        <div class="alert alert-success">
                            <ul>

                                <li>{{ session()->get('success') }}</li>

                            </ul>
                        </div>
                    @endif


                        {!! Form::open(array('route' => 'add-student-attendance', 'files' => true, 'id'=>'create-form')) !!}



                        {!! formFields($stdAttendanceForm) !!}

                        <br>
                        {!! Form::submit('Add Attendance',['class'=>'btn btn-primary','id'=>'attendance-btn','readonly'=>'readonly']) !!}
                        {!! Form::close() !!}
                        <br>
                    <div id="student-list-for-attendance">

                    </div>


                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')

    @parent

    {!! Html::script('datepicker/js/bootstrap-datepicker.js') !!}
    {!! Html::script('datepicker/js/bootstrap-timepicker.js') !!}
    {!! Html::script('select/js/select2.min.js') !!}

<script>



            function isValidDate(str){


                // STRING FORMAT yyyy-mm-dd
                if(str=="" || str==null){
                    alert('no date given');
                    return false;
                }

                // m[1] is year 'YYYY' * m[2] is month 'MM' * m[3] is day 'DD'
                var m = str.match(/(\d{4})-(\d{2})-(\d{2})/);


                // STR IS NOT FIT m IS NOT OBJECT
                if( m === null || typeof m !== 'object'){
                    return false;
                }

                // CHECK m TYPE
                if (typeof m !== 'object' && m !== null && m.size!==3){
                    alert('2-false');
                    return false;
                }

                var ret = true; //RETURN VALUE
                var thisYear = new Date().getFullYear(); //YEAR NOW

                var thisMonth = new Date().getMonth(); //Month NOW
                var thisDay = new Date().getDate(); //Day NOW
                var minYear = 1999; //MIN YEAR


                if( m[1].length < 4
                    || m[2].length < 2
                    || m[3].length < 2
                    || m[1] < minYear
                    || m[1] > thisYear
                    || (m[1] == thisYear
                        && (m[2] > (thisMonth+1)
                        || m[3] > thisDay) )){

                    alert('you have to put today\'s date or a previous one...');

                    ret = false;
                }

                return ret;
            }
    $(document).ready(function(){

        $('#student_class').select2();
        $('#section').select2();
        $("#subject").select2();
        $('#present_date').datepicker() ;

        var host = window.location.origin ;

        $('#student_class').change(function () {

            var studentClass = $('#student_class').find('option:selected').val();

            $.ajax({
                'url': host+'/section/list-by-class/'+studentClass,
                'dataType': 'json',
                success: function(data){

                    var sectionList = "<option value=''>Select </option>";
                    var subjectList = "<option value=''>Select </option>";

                    $(data[0]).each(function(index,item){

                        sectionList += "<option value ="+ item.id +">"+item.section_name+" </option>";

                    });
                    $(data[1]).each(function(index,item){

                        subjectList += "<option value ="+ item.id +">"+item.subject_name+" </option>";

                    });

                    $('#section').html(sectionList);
                    $('#subject').html(subjectList);
                }
            });
        });



        $('#attendance-btn').click(function (e) {

            e.preventDefault();

            var todaysDate = $('#present_date').val();
            var studentClass = $('#student_class').find('option:selected').val();
            var studentSection = $('#section').find('option:selected').val();
            var studentSubject = $('#subject').find('option:selected').val();


            var url = null;



            if(isValidDate(todaysDate) &&  studentClass != 0) {


                if( studentSection == 0 && studentSubject == 0 ){

                    url =host + '/student/list-by-class/' +studentClass+'/'+todaysDate;


                }else if(studentSection != 0  && studentSubject == 0) {

                    url = host + '/student/list-by-section/' +studentClass+'/'+studentSection+ '/'+todaysDate;
                }else if(studentSection != 0 && studentSubject != 0){

                    url = host + '/student/list-by-subject/' +studentClass+'/'+studentSection+'/'+todaysDate+'/'+studentSubject;
                }else if(studentSubject != 0 && studentSection == 0){

                    alert('Section not chosen');

                    return false;
                }



                $.ajax({
                    url: url,
                    type: "GET", // not POST, laravel won't allow it
                    success: function(data){
                        /*alert(data);*/
                        $data = $(data); // the HTML content your controller has produced

                        $('#student-list-for-attendance').html($data);
                    }
                });

            }else {

                alert('Either Date or Class not given ');
                return false;
            }
        });


        $("#student-list-for-attendance").on("click",".action-normal",function () {

            var todaysDate = $('#present_date').val();
            var studentClass = $('#student_class').find('option:selected').val();
            var studentSection = $('#section').find('option:selected').val();
            var studentSubject = $('#subject').find('option:selected').val();
            var stinfos = $(this).data("stinfo");

            if (this.checked == true) {
                var stInfo = stinfos;
                $.ajax({
                    type:'POST',
                    url:host + '/student-attendance/add',
                    data:{
                        'stInfo':stInfo,
                    },
                    beforesend: function () {
                        $('.spning').css('display','block');
                        $('body').css('display','visible');
                    },
                    success: function (successData) {

//                        console.log("i am print")
                    }
                });
            }
        });

        $("#student-list-for-attendance").on("click",".attendance-time",function () {

            $(this).timepicker({
                minuteStep: 1,
                showSeconds: true,
                showMeridian: false,
//                defaultTime: false
            });

        });

        $("#student-list-for-attendance").on("click",".in-time",function () {

            var todaysDate = $('#present_date').val();
            var studentClass = $('#student_class').find('option:selected').val();
            var studentSection = $('#section').find('option:selected').val();
            var studentSubject = $('#subject').find('option:selected').val();
            var inTime = $('.att-in').val();
            var stinfos = $(this).data("stinfo");

            if (this.checked == true) {

                var stInfo = stinfos;

                $.ajax({
                    type:'POST',
                    url:host + '/student-attendance/add',
                    data:{
                        'stInfo':stInfo,
                        'inTime':inTime,
                    },
                    beforesend: function () {
                        $('.spning').css('display','block');
                        $('body').css('display','visible');
                    },
                    success: function (successData) {

                        console.log(successData)
                    }
                });
            }

        });

        $("#student-list-for-attendance").on("click",".out-time",function () {

            var todaysDate = $('#present_date').val();
            var studentClass = $('#student_class').find('option:selected').val();
            var studentSection = $('#section').find('option:selected').val();
            var studentSubject = $('#subject').find('option:selected').val();
            var outTime = $('.att-in').val();

            var stinfos = $(this).data("stinfo");

            if (this.checked == true) {

                var stInfo = stinfos;

                $.ajax({
                    type:'POST',
                    url:host + '/student-attendance/add',
                    data:{
                        'stInfo':stInfo,
                        'outTime':outTime,
                    },
                    beforesend: function () {
                        $('.spning').css('display','block');
                        $('body').css('display','visible');
                    },
                    success: function (successData) {

                        console.log(successData)
                    }
                });
            }

        });

    });



</script>










@endsection
