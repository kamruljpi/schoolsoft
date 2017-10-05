{{--@inject('createShift','Erp\Forms\ShiftForm')--}}



@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
    {{--{!! Html::style('timepicker/jquery-timepicker-1.3.2/jquery.timepicker.css') !!}--}}
    {!! Html::style('bootstrap-datetime-picker/css/bootstrap-datetimepicker.min.css') !!}
    {!! Html::style('datepicker/css/timepicker.css') !!}
{{--    {!! Html::style('timepicker/css/timepicki.css') !!}--}}
    {{--{!! Html::style('timepicker/css/wickedpicker.min.css') !!}--}}
@endsection

@section('content')

    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6 col-xs-5">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.shift_create') }}
                    </div>
                    <div class="col-md-6 col-xs-7 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.shift_create') }}</li>
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

                  

                    <div class="custom_row">
                        {!! inputLangControl() !!}
                    </div>

                    <div class="custom_row">                      
                        <h2 class="form_title">
                            {{ trans('sidebar.shift_enrole_form') }}
                        </h2>                                          
                    </div>

                    {!! Form::open(array('route' => 'shift-create-json', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}


{{--                    {!! formFields($createShift)  !!}--}}
                        <div class="row">
                            <div class="form-group bonus_rule">
                                {!! Form::label('name_en','Shift', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}

                                <div class="col-md-4 col-sm-8 col-xs-8">
                                    {!! Form::text('name_en',null,['class'=>'form-control ']) !!}
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="form-group bonus_rule">                              
                                    {!! Form::label('sat','Day', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                    <div class="col-md-2 col-sm-4 col-xs-8">
                                        {!! Form::label('sat','Saturday', ['class'=>'form-control','readonly'=>'readonly']) !!}
                                    </div>
                                </div>
                         </div>

                            <div class="row">
                                 <div class="form-group bonus_rule">

                                {!! Form::label('time','Time', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                    <div class="col-sm-2 col-xs-4">
                                        {!! Form::text('sat_in',null,['class'=>'form-control timepick','placeholder'=>'in time']) !!}

                                    </div>
                                    <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('sat_out',null,['class'=>'form-control timepick','placeholder'=>'out time']) !!}

                                    </div>
                                </div>

                            </div>


                            <div class="row">
                                 <div class="form-group bonus_rule">
                                {!! Form::label('time_range','Time Range', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}

                                    <div class="col-sm-2 col-xs-4">
                                        {!! Form::text('sat_max',null,['class'=>'form-control timepick','placeholder'=>'max time']) !!}

                                    </div>
                                    <div class="col-sm-2 col-xs-4">
                                        {!! Form::text('sat_min',null,['class'=>'form-control timepick','placeholder'=>'min time']) !!}

                                    </div>
                                </div>
                            </div>



                            <div class="row">
                                <div class="form-group bonus_rule">
                                    {!! Form::label('sat_extend_day','Extend Day', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                    <div class="col-sm-2 col-xs-2 bonus_rule_shift_check">
                                        {!! Form::checkbox('sat_extend_day',null,false) !!}
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('sat_day_off','Day-off', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-2 bonus_rule_shift_check">
                                    {!! Form::checkbox('sat_day_off',null,false) !!}
                                </div>
                                </div>
                            </div>


                      
                        

                            <div class="row">
                                <div class="form-group bonus_rule">
                               {!! Form::label('sun','Day', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                               <div class="col-md-2 col-sm-4 col-xs-8">
                                   {!! Form::label('sun','Sunday', ['class'=>'form-control','readonly'=>'readonly']) !!}
                               </div>
                               </div>
                            </div>



                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('time','Time', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('sun_in',null,['class'=>'form-control timepick','placeholder'=>'in time']) !!}

                                </div>
                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('sun_out',null,['class'=>'form-control timepick','placeholder'=>'out time']) !!}

                                </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('time_range','Time Range', ['class'=>'col-sm-2  col-xs-2 bonus_rule_shift']) !!}

                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('sun_max',null,['class'=>'form-control timepick','placeholder'=>'max time']) !!}

                                </div>
                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('sun_min',null,['class'=>'form-control timepick','placeholder'=>'min time']) !!}

                                </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('sun_extend_day','Extend Day', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-2 bonus_rule_shift_check">
                                    {!! Form::checkbox('sun_extend_day',null,false) !!}
                                </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('sun_day_off','Day-off', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-2 bonus_rule_shift_check">
                                    {!! Form::checkbox('sun_day_off',null,false) !!}
                                </div>
                                </div>
                            </div>
                      



                  

                            <div class="row">
                                <div class="form-group bonus_rule">
                               {!! Form::label('mon','Day', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                               <div class="col-md-2 col-sm-4 col-xs-8">
                                   {!! Form::label('mon','Monday', ['class'=>'form-control','readonly'=>'readonly']) !!}
                               </div>
                               </div>
                            </div>

                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('time','Time', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('mon_in',null,['class'=>'form-control timepick','placeholder'=>'in time']) !!}

                                </div>
                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('mon_out',null,['class'=>'form-control timepick','placeholder'=>'out time']) !!}

                                </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('time_range','Time Range', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}

                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('mon_max',null,['class'=>'form-control timepick','placeholder'=>'max time']) !!}

                                </div>
                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('mon_min',null,['class'=>'form-control timepick','placeholder'=>'min time']) !!}

                                </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('mon_extend_day','Extend Day', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-2 bonus_rule_shift_check">
                                    {!! Form::checkbox('mon_extend_day',null,false) !!}
                                </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('mon_day_off','Day-off', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-2 bonus_rule_shift_check">
                                    {!! Form::checkbox('mon_day_off',null,false) !!}
                                </div>
                                </div>
                            </div>
                     




                      

                            <div class="row">
                                <div class="form-group bonus_rule">
                               {!! Form::label('tue','Day', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                               <div class="col-md-2 col-sm-4 col-xs-8">
                                   {!! Form::label('tue','Tuesday', ['class'=>'form-control','readonly'=>'readonly']) !!}
                               </div>
                               </div>
                            </div>

                            <div class="row">
                                <div class="form-group bonus_rule">

                                {!! Form::label('time','Time', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('tue_in',null,['class'=>'form-control timepick','placeholder'=>'in time']) !!}

                                </div>
                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('tue_out',null,['class'=>'form-control timepick','placeholder'=>'out time']) !!}

                                </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('time_range','Time Range', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}

                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('tue_max',null,['class'=>'form-control timepick','placeholder'=>'max time']) !!}

                                </div>
                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('tue_min',null,['class'=>'form-control timepick','placeholder'=>'min time']) !!}

                                </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('tue_extend_day','Extend Day', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-2 bonus_rule_shift_check">
                                    {!! Form::checkbox('tue_extend_day',null,false) !!}
                                </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('tue_day_off','Day-off', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-2 bonus_rule_shift_check">
                                    {!! Form::checkbox('tue_day_off',null,false) !!}
                                </div>
                                </div>
                            </div>
                       



                       

                            <div class="row">
                            <div class="form-group bonus_rule">
                               {!! Form::label('wed','Day', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                               <div class="col-md-2 col-sm-4 col-xs-8">
                                   {!! Form::label('wed','Wednesday', ['class'=>'form-control','readonly'=>'readonly']) !!}
                               </div>
                               </div>
                            </div>

                            <div class="row">
                            <div class="form-group bonus_rule">

                                {!! Form::label('time','Time', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('wed_in',null,['class'=>'form-control timepick','placeholder'=>'in time']) !!}

                                </div>
                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('wed_out',null,['class'=>'form-control timepick','placeholder'=>'out time']) !!}

                                </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('time_range','Time Range', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}

                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('wed_max',null,['class'=>'form-control timepick','placeholder'=>'max time']) !!}

                                </div>
                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('wed_min',null,['class'=>'form-control timepick','placeholder'=>'min time']) !!}

                                </div>
                                </div>
                            </div>
                            <div class="row">
                            <div class="form-group bonus_rule">
                                {!! Form::label('wed_extend_day','Extend Day', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-2   bonus_rule_shift_check">
                                    {!! Form::checkbox('wed_extend_day',null,false) !!}
                                </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('wed_day_off','Day-off', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-2 bonus_rule_shift_check">
                                    {!! Form::checkbox('wed_day_off',null,false) !!}
                                </div>
                                </div>
                            </div>
                      





                       

                           <div class="row">
                           <div class="form-group bonus_rule">
                              {!! Form::label('thu','Day', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                              <div class="col-md-2 col-sm-4 col-xs-8">
                                  {!! Form::label('thu','Thursday', ['class'=>'form-control','readonly'=>'readonly']) !!}
                              </div>
                              </div>
                           </div>

                            <div class="row">
                                <div class="form-group bonus_rule">

                                {!! Form::label('time','Time', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('thu_in',null,['class'=>'form-control timepick','placeholder'=>'in time']) !!}

                                </div>
                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('thu_out',null,['class'=>'form-control timepick','placeholder'=>'out time']) !!}

                                </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('time_range','Time Range', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}

                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('thu_max',null,['class'=>'form-control timepick','placeholder'=>'max time']) !!}

                                </div>
                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('thu_min',null,['class'=>'form-control timepick','placeholder'=>'min time']) !!}

                                </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('thu_extend_day','Extend Day', ['class'=>'col-sm-2 col-xs-2  bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-2 bonus_rule_shift_check">
                                    {!! Form::checkbox('thu_extend_day',null,false) !!}
                                </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('thu_day_off','Day-off', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-2 bonus_rule_shift_check">
                                    {!! Form::checkbox('thu_day_off',null,false) !!}
                                </div>
                                </div>
                            </div>
                     





                     

                           <div class="row">
                               <div class="form-group bonus_rule">
                              {!! Form::label('fri','Day', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                              <div class="col-md-2 col-sm-4 col-xs-8">
                                  {!! Form::label('fri','Friday', ['class'=>'form-control text-left','readonly'=>'readonly']) !!}
                              </div>
                              </div>
                           </div>

                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('time','Time', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('fri_in',null,['class'=>'form-control timepick','placeholder'=>'in time']) !!}

                                </div>
                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('fri_out',null,['class'=>'form-control timepick','placeholder'=>'out time']) !!}

                                </div>
                                </div>

                            </div>


                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('time_range','Time Range', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}

                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('fri_max',null,['class'=>'form-control timepick','placeholder'=>'max time']) !!}

                                </div>
                                <div class="col-sm-2 col-xs-4">
                                    {!! Form::text('fri_min',null,['class'=>'form-control timepick','placeholder'=>'min time']) !!}

                                </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('fri_extend_day','Extend Day', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-2 text-left bonus_rule_shift_check">
                                    {!! Form::checkbox('fri_extend_day',null,false) !!}
                                </div>
                                </div>
                            </div>
                            <div class="row text-right">
                                <div class="form-group bonus_rule">
                                {!! Form::label('fri_day_off','Day-off', ['class'=>'col-sm-2  col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-sm-2 col-xs-2 text-left">
                                    {!! Form::checkbox('fri_day_off',null,false) !!}
                                </div>
                                </div>
                            </div>
                      



                        

                            <div class="row">
                                <div class="form-group bonus_rule">
                                {!! Form::label('status_id','Status', ['class'=>'col-sm-2 col-xs-2 bonus_rule_shift']) !!}
                                <div class="col-md-2 col-sm-4 col-xs-9">
                                    {!! Form::select('status_id',$statusList,0, ['class'=>'form-control','readonly'=>'readonly']) !!}
                                </div>
                                </div>
                            </div>
                        

                        <div class="row text-right">
                            <div class="col-md-12">
                            {!! Form::submit('Submit',['class'=>'btn btn-success','readonly'=>'readonly']) !!}
                            </div>
                        </div>


                    {!!  Form::close()   !!}

                </div>
            </div>
        </div>
    </div>



@endsection

@section('scripts')

    @parent


        {{--<script src="{{ asset('timepicker/jquery-timepicker-1.3.2/jquery.timepicker.js') }}"></script>--}}
    {{--<script src="{{ asset('timepicker/js/timepicki.js') }}"></script>--}}
    {{--<script src="{{ asset('timepicker/js/wickedpicker.js') }}"></script>--}}
    <script src="{{ asset('bootstrap-datetime-picker/js/bootstrap-datetimepicker.min.js') }}"></script>
    {!! Html::script('datepicker/js/bootstrap-timepicker.js') !!}

    <script>

        $(document).ready(function(){

            /* start multi-lingual option*/
            $('.timepick').timepicker({
                minuteStep: 1,
                //template: 'modal',
                //appendWidgetTo: 'body',
                showSeconds: true,
                showMeridian: false
                //defaultTime: false
            });

            $(".translation_wrap").hide();
            $(".translation_wrap.trans_en"/*+lang_def*/).show();
            $(".control_lang").on("click",function(){
                var selected_lang = $(this).val();
                $(".translation_wrap").hide();
                $(".translation_wrap.trans_"+selected_lang).show();
                $(".control_lang").val(selected_lang);
            });

            /*end multi-lingual option*/

           /* $('.timepick').timepicker({
                timeFormat: 'D-M-Y HH:mm:ss',
//                minTime: '12:00:00', // 11:45:00 AM,
//                maxHour: 20,
//                maxMinutes: 30,
                dropdown: true,
                startTime: new Date(01,01,2016,12,0,0) ,// 3:00:00 PM - noon
                interval:  15
            });*/

            /*$(".timepick").datetimepicker({
             //                format: "dd MM yyyy hh:ii",
             //                format: "D - hh:ii",
             format: "hh:ii",
             autoclose: true,
             todayBtn: true,
             startDate: "2013-02-14 10:00",
             minuteStep: 10
             });*/
        });

    </script>

    <script type='text/javascript'>
//        $('.timepick').timepicki();
//$('.timepick').wickedpicker();


    </script>


@endsection
