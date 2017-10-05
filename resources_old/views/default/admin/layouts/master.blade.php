<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="_token" content="{!! csrf_token() !!}"/>
    <title>Edu360 | Dashboard</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->

    {!! Html::style('theme_components/admin/bootstrap/css/bootstrap.min.css') !!}

            <!-- Font Awesome -->
    {!! Html::style('https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css') !!}
    {{--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">--}}

            <!-- Theme style -->
    {!! Html::style('theme_components/admin/dist/css/AdminLTE.min.css') !!}

            <!-- admin Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    {!! Html::style('theme_components/admin/dist/css/skins/_all-skins.min.css') !!}
    {!! Html::style('css/jquery.growl.css') !!}
    {!! Html::style('css/styles.css') !!}

            @yield('style')


            <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    {!! Html::script('theme_components/admin/maxcdn/js/html5shiv373.min.js') !!}
    {!! Html::script('theme_components/admin/maxcdn/js/respond142.min.js') !!}


    <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    @include('default.admin.layouts.partials.header')


    <!-- Left side column. contains the logo and sidebar -->
    @include('default.admin.layouts.partials.sidebar')

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        {{--@section('controlbtn')--}}

        {{--<div class="container-fluid" style="">--}}
        {{--<div class="row">--}}
            {{--<div class="col-md-12">--}}
                {{--<div class="view-header">--}}
                    {{--<div class="col-md-6">--}}
                        {{--<button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> Print </button>--}}
                        {{--<button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> Print Preview </button>--}}


                        {{--<button class="btn btn-primary"><span class="fa fa-file"></span> Edit</button>--}}
                    {{--</div>--}}
                    {{--<div class="col-md-6 view">--}}
                        {{--<ul class="breadcrumb text-right">--}}
                            {{--<li>--}}
                                {{--<span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>--}}
                                {{--<a href="#">Dashboard</a></li>--}}
                            {{--<li class="active">Designation</li>--}}
                        {{--</ul>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
        {{--</div> <!--row-->--}}
        {{--</div> <!--row-->--}}
        {{--@show--}}
        @yield('content')

    </div><!-- /.content-wrapper -->

    @include('default.admin.layouts.partials.footer')

    <!-- Control Sidebar -->
    @include('default.admin.layouts.partials.control-sidebar')
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>

</div><!-- ./wrapper -->



@section('scripts')


<!-- jQuery 2.1.4 -->
<script src="{!! asset('theme_components/admin/plugins/jQuery/jQuery-2.1.4.min.js') !!}"></script>
<!-- Bootstrap 3.3.5 -->
<script src="{!! asset('theme_components/admin/bootstrap/js/bootstrap.min.js') !!}"></script>
<script src="{!! asset('js/jquery.growl.js') !!}"></script>


<!-- admin App --> <!-- admin sidebar menu sliding -->
<script src="{!! asset('theme_components/admin/dist/js/app.min.js') !!}"></script>

<!-- SlimScroll 1.3.0 -->
<script src="{!! asset('theme_components/admin/plugins/slimScroll/jquery.slimscroll.min.js') !!}"></script>

<!-- admin for demo purposes -->
<script src="{!! asset('theme_components/admin/dist/js/demo.js') !!}"></script>

<script>

    $.ajaxSetup({
        headers: { 'X-CSRF-Token' : $('meta[name=_token]').attr('content') }
    });

</script>


@show

</body>
</html>
