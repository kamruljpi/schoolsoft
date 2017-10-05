@inject('siteReportForm','Erp\Forms\SiteReportForm')

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
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.get_institute_report') }}
                    </div>
                    <div class="col-md-6 col-xs-7 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.get_institute_report') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-box">            
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
                                        {{ trans('sidebar.get_institute_report') }}
                                    </h2>                                          
                                </div>

                                {!! formFields($siteReportForm) !!}
                                <br>


                                <div id="general-report-div">

                                </div>
                            </div><!-- /.box-body -->
                        </div><!-- /.box -->
                    </div>
                </div> <!--row last-->
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
            $('#site_id').select2();
            $('#role_id').select2();

            $('#site-report-btn').click(function () {
                var siteId = $('#site_id').find('option:selected').val();
                var roleId = $('#role_id').find('option:selected').val();

                $.ajax({
                    url: '{{ route("official-site-report") }}',
                    data:{
                        'siteId' : siteId,
                        'roleId' : roleId
                    },
                    type: "GET", // not POST, laravel won't allow it
                    success: function(data){
                        /*alert(data); */
                        $data = $(data); // the HTML content your controller has produced

                        $('#general-report-div').html($data);
                    }
                });
            });

            $('#student-report-btn').click(function () {
                var studentClassId = $('#student_class_id').find('option:selected').val();
                var sectionId = $('#section_id').find('option:selected').val();
                var studentId = $('#student_id').find('option:selected').val();

                $.ajax({
                    url: '{{ route("general-report-student") }}',
                    data:{
                        'studentClassId' : studentClassId,
                        'sectionId' : sectionId,
                        'studentId' : studentId
                    },
                    type: "GET", // not POST, laravel won't allow it
                    success: function(data){
                        /*alert(data); */
                        $data = $(data); // the HTML content your controller has produced

                        $('#general-report-div').html($data);
                    }
                });
            });

            /*start choose section onchange event of class*/
            $('#routine_class_id').change(function(){
                var host = window.location.origin ;
                var studentClassId = $('#routine_class_id').find('option:selected').val();
                $.ajax({
                    'url': host + '/student-class/' + studentClassId,
                    'dataType': 'json'
                }).success(function (data) {
//                    console.log(data);
                    var sectionForClass = "<option value=''>Select Section</option>";
                    $(data[0]).each(function(index,item){
                        sectionForClass += "<option value ="+ item.id +">"+item.section_name+" </option>";
                    });
                    $('#routine_section_id').html(sectionForClass);
                })
            });
            /*end choose section onchange event of class*/

            /* start class routine generate */
            $('#routine-report-btn').click(function () {
                var studentClassId = $('#routine_class_id').find('option:selected').val();
                var sectionId = $('#routine_section_id').find('option:selected').val();

                if(sectionId==0){
                    alert("Please select section.");
                } else{
                    $.ajax({
                        url: '{{ route("general-report-routine") }}',
                        data:{
                            'studentClassId' : studentClassId,
                            'sectionId' : sectionId
                        },
                        type: "GET", // not POST, laravel won't allow it
                        success: function(data){
                            /*alert(data); */
                            $data = $(data); // the HTML content your controller has produced

                            $('#general-report-div').html($data);
                        }
                    });
                }
            });
            /* end class routine generate */
        });
    </script>

@endsection