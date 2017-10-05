@extends('default.admin.layouts.master')


@section('content')



    <!-- Main content -->
    <section class="content">
        <section class="content-header">
            <h1>
                Dashboard
                <small>Version 1.0</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="{!! url('#') !!}"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Dashboard</li>
            </ol>
        </section>

        <br>

    </section><!-- /.content -->


@endsection


@section('scripts')

    @parent
        <!-- FastClick -->
{{--<script src="{!! asset('theme_components/admin/plugins/fastclick/fastclick.min.js') !!}"></script>--}}
        <!-- Sparkline -->
<script src="{!! asset('theme_components/admin/plugins/sparkline/jquery.sparkline.min.js') !!}"></script>
<!-- jvectormap -->
<script src="{!! asset('theme_components/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js') !!}"></script>
<script src="{!! asset('theme_components/admin/plugins/jvectormap/jquery-jvectormap-world-mill-en.js') !!}"></script>
<!-- ChartJS 1.0.1 -->
<script src="{!! asset('theme_components/admin/plugins/chartjs/Chart.min.js') !!}"></script>
<!-- admin dashboard demo (This is only for demo purposes) -->
<script src="{!! asset('theme_components/admin/dist/js/pages/dashboard2.js') !!}"></script>
@endsection