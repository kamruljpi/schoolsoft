@inject('timesheetForm','Erp\Forms\TimesheetFormEmplyoee')


@extends('default.employee.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
    {!! Html::style('select/css/select2.min.css') !!}
@endsection

@section('left-two-collumn')

    <div class="container-fluid" style="min-height: 1215px;">
        <div class="row">

        </div> <!--row-->
        <div class="inner-box">
            <div class="row margin-top-area">
                <div id="datatable">


                    <div class="row last">
                        <div class="col-sm-12">
                            <div class="box">
                                <div class="box-header">
                                </div><!-- /.box-header -->
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

                                    <h4>Get Your Time Report for the Whole Month.. </h4><br>
{{--                                    {!! Form::open(array('route' => 'my-timesheet-report','method'=>'GET', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}--}}

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
@section('profile-image')

    @include('default.employee.layouts.partials.profile-image')
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



            $('#individual-employee-report-btn').click(function () {


                var userId = $('#user-id').val();
                var year = $('#punch_year').find('option:selected').val();
                var month = $('#punch_month').find('option:selected').val();
                var host = window.location.origin ;

                if(year == 0 || userId == null){
                    alert('please select year and month');
                }else {
                    $.ajax({
                        url: host + '/timesheet/users-daily-report/' +userId+'/'+ month+'/'+year,
                        type: "GET", // not POST, laravel won't allow it
                        success: function(data){
                            /*alert(data);*/
                            $data = $(data); // the HTML content your controller has produced

                            $('#monthly-time-report').html($data);
                        }
                    });
                }


            });








        });

    </script>

@endsection
