


@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')
    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-6">
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print_preview') }} </button>
                    <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">Dashboard</a></li>
                            <li class="active">Message</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-view view-table-holder">
           

                <table class="table table-striped table-bordered table-hover table-responsive ">
                    <thead>
                    <tr class="th-bg ">
                        <th colspan="4" class="th_font text-center">
                            Message Information
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($messageData as $trash)

                    <tr>
                        <td>Subject</td>
                        <td>{{ $trash->translate($locale)? $trash->notice_name:$trash->translate($defaultLocale)->notice_name }}</td>
                    </tr>
                    <tr>
                        <td>Date</td>
                        <td>  {{ $trash->notice_date or 'Null'}}</td>
                    </tr>
                    <tr>
                        <td>Message</td>
                        <td> {{ $trash->translate($locale)? $trash->notice_description:$trash->translate($defaultLocale)->notice_description }}</td>
                    </tr>

                    @endforeach
                    </tbody>
                </table>
         
            <div class="clearfix"></div>
        </div>
    </div>
@endsection


