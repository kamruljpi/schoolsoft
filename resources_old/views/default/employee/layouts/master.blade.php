<!DOCTYPE html>
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="{{ asset('employee/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('employee/css/bootstrap-theme.min.css') }}">
    <link rel="stylesheet" href="{{ asset('employee/styles.css') }}" type="text/css" />
    <link rel="stylesheet" href="{{ asset('employee/css/header.css') }}" type="text/css" />
    <link rel="stylesheet" href="{{ asset('employee/css/fullcalendar.min.css') }}" type="text/css" />

@yield('style')
    <!-- <link rel="stylesheet" href="css/fullcalendar.print.css" type="text/css" /> -->
    <link rel="stylesheet" href="{{ asset('employee/css/font-awesome.min.css') }}">
    <script src="{!! asset('theme_components/admin/plugins/jQuery/jQuery-2.1.4.min.js') !!}"></script>
{{--    <script src="{{ asset('employee/js/jquery-1.11.0.min.js') }}"></script>--}}
    <script src="{{ asset('employee/js/moment.min.js') }}"></script>
    <script src="{{ asset('employee/js/fullcalendar.min.js') }}"></script>
    <title>Bootstrap</title>
</head>
<body>
<script>

    $(document).ready(function() {

        $('#calendar').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            defaultDate: '2016-01-12',
            editable: true,
            eventLimit: true, // allow "more" link when too many events
            events: [
                {
                    title: 'All Day Event',
                    start: '2016-01-01'
                },
                {
                    title: 'Long Event',
                    start: '2016-01-07',
                    end: '2016-01-10'
                },
                {
                    id: 999,
                    title: 'Repeating Event',
                    start: '2016-01-09T16:00:00'
                },
                {
                    id: 999,
                    title: 'Repeating Event',
                    start: '2016-01-16T16:00:00'
                },
                {
                    title: 'Conference',
                    start: '2016-01-11',
                    end: '2016-01-13'
                },
                {
                    title: 'Meeting',
                    start: '2016-01-12T10:30:00',
                    end: '2016-01-12T12:30:00'
                },
                {
                    title: 'Lunch',
                    start: '2016-01-12T12:00:00'
                },
                {
                    title: 'Meeting',
                    start: '2016-01-12T14:30:00'
                },
                {
                    title: 'Happy Hour',
                    start: '2016-01-12T17:30:00'
                },
                {
                    title: 'Dinner',
                    start: '2016-01-12T20:00:00'
                },
                {
                    title: 'Birthday Party',
                    start: '2016-01-13T07:00:00'
                },
                {
                    title: 'Click for Google',
                    url: 'http://google.com/',
                    start: '2016-01-28'
                }
            ]
        });

    });

</script>
<style>
    #calendar {
        max-width: 900px;
        margin: 0 auto;
    }

</style>

<div class="wrapper">
@include('default.employee.layouts.partials.header')
    <div class="container content">
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <div class="inner-wrapper">

                        @yield('left-two-collumn')

                    </div>
                </div>

                <div class="col-md-3">

                    @yield('profile-image')

                </div> <!--col-md-3-->



            </div>
        </div> <!--container-->
    </div>
</div> <!--wrapper-->

@section('scripts')
    {{--<script src="{!! asset('theme_components/admin/plugins/jQuery/jQuery-2.1.4.min.js') !!}"></script>--}}
<script src="{{ asset('employee/js/bootstrap.min.js') }}"></script>
@show

</body>
</html>