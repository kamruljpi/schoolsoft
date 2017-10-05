@inject('createStudentReportForm','Erp\Forms\StudentReportForm')

@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
    {!! Html::style('select/css/select2.min.css') !!}
@endsection

@section('content')

    <div class="container-fluid min_height_area" >
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6 col-xs-5">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.get_student_report') }}
                    </div>
                    <div class="col-md-6 col-xs-7 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.get_student_report') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-view">
            <div class="row">
                <div id="datatable">


                    <div class="row last">
                        <div class="col-sm-12">
                            <div class="box">

                                <div class="box-body">
                                    @if (count($errors) > 0)
                                        <div class="alert alert-danger">
                                            <ul>
                                                @foreach ($errors->all() as $error)
                                                    <li>{{ $error }}</li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    @endif

                                    <div class="custom_row">                     
                                        <h2 class="form_title">
                                            {{ trans('sidebar.get_student_report') }}
                                        </h2>                                          
                                    </div>
                                    <div class="print_none">
                                    {!! formFields($createStudentReportForm) !!}
                                   </div>


                                    <div id="student-report-div">

                                    </div>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div> <!--row last-->
                </div>
            </div>
        </div>
    </div>
@endsection


@section('scripts')

    @parent
    {!! Html::script('theme_components/admin/plugins/datatables/dataTables.bootstrap.min.js') !!}
    {!! Html::script('select/js/select2.min.js') !!}

    <script type="text/javascript">
        $(document).ready(function(){
            $('#examination_id').select2();

            /* start class routine generate */
            $('#routine-report-btn').click(function () {
                $.ajax({
                    url: '{{ route("student-report-routine") }}',
                    type: "GET", // not POST, laravel won't allow it
                    success: function(data){
                        /*alert(data); */
                        $data = $(data); // the HTML content your controller has produced

                        $('#student-report-div').html($data);
                    }
                });
            });
            /* end class routine generate */

            /* start exam routine generate */
            $('#exam-report-btn').click(function () {
                var examId = $('#examination_id').find('option:selected').val();

                if(examId == 0){
                    alert("Please select examination.");
                } else{
                    $.ajax({
                        url: '{{ route("student-report-exam") }}',
                        data:{
                            'examId' : examId
                        },
                        type: "GET", // not POST, laravel won't allow it
                        success: function(data){
                            /*alert(data); */
                            $data = $(data); // the HTML content your controller has produced

                            $('#student-report-div').html($data);
                        }
                    });
                }
            });
            /* end exam routine generate */

            /* start account report generate */
            $('#account-report-btn').click(function () {
                $.ajax({
                    url: '{{ route("student-report-account") }}',
                    type: "GET", // not POST, laravel won't allow it
                    success: function(data){
                        /*alert(data); */
                        $data = $(data); // the HTML content your controller has produced

                        $('#student-report-div').html($data);
                    }
                });
            });
            /* end account report generate */

            /* start testimonial report generate */
            $('#testimonial-report-btn').click(function () {
                $.ajax({
                    url: '{{ route("student-report-testimonial") }}',
                    type: "GET", // not POST, laravel won't allow it
                    success: function(data){
                        /*alert(data); */
                        $data = $(data); // the HTML content your controller has produced

                        $('#student-report-div').html($data);
                    }
                });
            });
            /* end testimonial report generate */
        });
    </script>

@endsection