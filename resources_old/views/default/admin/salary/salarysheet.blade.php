@inject('timesheetForm','Erp\Forms\TimesheetForm')

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
        <div class="inner-box">
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

                                    <h4>Get the Whole Month's Salary Report for All the Employees</h4><br>
                                    {{--                                    {!! Form::open(array('route' => 'timesheet-report','method'=>'GET', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}--}}

                                    {{--{!! yearList() !!}
                                    {!! monthsListForTimesheet() !!}
                                    {!! Form::submit('Get Report',['class'=>'btn btn-primary']) !!}


--}}
                                    {!! formFields($timesheetForm) !!}
                                    {{--                                    {!! Form::close() !!}--}}


                                    <div id="monthly-time-report">


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
    <script src="{{ asset('theme_components/admin/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    {!! Html::script('theme_components/admin/plugins/datatables/dataTables.bootstrap.min.js') !!}
    {!! Html::script('select/js/select2.min.js') !!}




    <script type="text/javascript">

        $(document).ready(function(){



            $('#punch_year').select2();
            $('#punch_month').select2();
//            $(".punch-user").hide();
            $("#punch_user").select2();
            /*$('#indi-report-btn').click(function () {

             $(".punch-user").show();
             $(this).hide();


             });*/
            $('#individual-employee-report-btn').click(function () {

                var userId = $('#punch_user').find('option:selected').val();
                var year = $('#punch_year').find('option:selected').val();
                var month = $('#punch_month').find('option:selected').val();
                var host = window.location.origin ;

                if(year == 0 || userId == 0){
                    alert('please select employee name, year');
                }else {
                    $.ajax({
                        url: host + '/salary/user-yearly-report/' +userId+'/'+year,
                        type: "GET", // not POST, laravel won't allow it
                        success: function(data){
                            /*alert(data);*/
                            $data = $(data); // the HTML content your controller has produced

                            $('#monthly-time-report').html($data);
                        }
                    });
                }


            });

            $('#time-report-btn').click(function(e)
            {
                e.preventDefault();

                /* setting currently changed option value to option variable */
                var year = $('#punch_year').find('option:selected').val();
                var month = $('#punch_month').find('option:selected').val();

                /* setting input box value to selected option value */

                /*alert(option);*/
                var host = window.location.origin ;

                if(year == 0 || month == 0){
                    alert('please select year and month');
                }else {
                    $.ajax({
                        url: host + '/salary/monthly-report/' + year+'/'+month,
                        type: "GET", // not POST, laravel won't allow it
                        success: function(data){

                            $data = $(data); // the HTML content your controller has produced

                            $('#monthly-time-report').html($data);
                        }
                    });
                }


            });
        });

    </script>

@endsection
