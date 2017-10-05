
@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
    <link rel="stylesheet" href="{{ asset('timer/css/flipclock.css') }}">
@endsection

@section('content')

    <div class="container-fluid" style="min-height: 1215px;">
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
            <div class="row margin-top-area">
                <div class="col-md-4 snt">

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
                    @if( isset($punchFlag)  && $punchFlag=='0' || $punchFlag==null)

                        @if(!session()->has('success'))
                                <div class="alert alert-danger">
                                    <ul>

                                        <li>You r punched out... pls punch in</li>

                                    </ul>
                                </div>
                        @endif
                        {!! Form::open(array('route' => 'punch-in', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}

                        {!! Form::submit('Punch In',['class'=>'btn btn-success','style'=>'background-color:#0073b7', 'readonly'=>'readonly']) !!}

                        {!!  Form::close()   !!}

                     @elseif(isset($punchFlag) && $punchFlag=='1')
                            @if(!session()->has('success'))
                                <div class="alert alert-success">
                                    <ul>

                                        <li>You r punched in ..Pls punch out before leaving...</li>

                                    </ul>
                                </div>
                            @endif
                        {!! Form::open(array('route' => 'punch-out', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}

                        {!! Form::submit('Punch Out',['class'=>'btn btn-success','style'=>'background-color:#0073b7', 'readonly'=>'readonly']) !!}

                        {!!  Form::close()   !!}
                     @endif
                </div>
                <div class="col-md-8 snt ">

                    @set('authenticatedUser',request()->user())
                    @if(  count($authenticatedUser->photos)>0)
                        {!!  Html::image('imagecache/small/'.$authenticatedUser->photos->last()->name , 'Profile Picture',['class'=>'img-responsive margin-bottom-20']) !!}
                    @endif
                    <table border="1">
                        <tr>
                            <td>Name</td>
                            <td>{{ $authenticatedUser->translate('en','bn')->first_name.' '.$authenticatedUser->translate('en','bn')->last_name }}</td>
                        </tr>
                        <tr>
                            <td>Department</td>
                            <td>{{ $authenticatedUser->department->name or 'Not Available' }}</td>
                        </tr>
                        <tr>
                            <td>Designation</td>
                            <td>{{ $authenticatedUser->designation->name or 'Not Available' }}</td>
                        </tr>
                        <tr>
                            <td>Shift</td>
                            <td>{{ !is_null($authenticatedUser->shift)?$authenticatedUser->shift->translate('en','bn')->name:'Not Available' }}</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="clock" id='txt' style="margin:2em;"></div>


@endsection
@section('scripts')

    @parent
    <script src="{{ asset('timer/js/flipclock.js') }}"></script>
    <script type="text/javascript">
        var clock;

        $(document).ready(function() {
            var date = new Date('2016-01-01 05:02:12 pm');

            var d2 = new Date("2016-02-03 11:44:17");
            var d1 = new Date("2016-02-03 10:43:15");

           /* clock = $('.clock').FlipClock((d2-d1)/1000, {
                clockFace: 'TwentyFourHourClock'
            });*/

            var diff = ( new Date("2016-02-03 11:44:17") - new Date("2016-02-03 10:43:15") ) / 1000 / 60 / 60;

//            document.write(diff);

//           startTime() ;
        });


       /* function startTime() {
            var today = new Date();
            var h = today.getHours();
            var m = today.getMinutes();
            var s = today.getSeconds();
            m = checkTime(m);
            s = checkTime(s);
            document.getElementById('txt').innerHTML =
                    h + ":" + m + ":" + s;
            var t = setTimeout(startTime, 500);
        }
        function checkTime(i) {
            if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
            return i;
        }*/
    </script>

@endsection