@extends('default.admin.layouts.master')


@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-7">
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> Print </button>
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> Print Preview </button>
                        <button class="btn btn-primary"><span class="fa fa-file"></span> Edit</button>
                    </div>
                    <div class="col-md-5 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">Dashboard</a></li>
                            <li class="active">Training</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view view-table-holder ">
            <table class="table table-bordered table-hover table-striped table-responsive ">
                <thead>
                <tr class="th-bg ">
                    <th colspan="4" class="text-center th_font">
                        Training Information
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="th_width_150">Training Title </td>
                    <td>  {{ $trainingData->translate($locale)? $trainingData->training_title:$trainingData->translate($defaultLocale)->training_title }}</td>
                </tr>
                <tr>
                    <td>Topic Covered </td>
                    <td>  {{ $trainingData->translate($locale)? $trainingData->training_cover:$trainingData->translate($defaultLocale)->training_cover }}</td>
                </tr>
                <tr>
                    <td>Institute </td>
                    <td>  {{ $trainingData->translate($locale)? $trainingData->institute_name:$trainingData->translate($defaultLocale)->institute_name }}</td>
                </tr>
                <tr>
                    <td>Country </td>
                    <td>  {{ $trainingData->translate($locale)? $trainingData->trainingCountry->country_name:$trainingData->translate($defaultLocale)->trainingCountry->country_name }}</td>
                </tr>
                <tr>
                    <td>Location </td>
                    <td>  {{ $trainingData->translate($locale)? $trainingData->location:$trainingData->translate($defaultLocale)->location }}</td>
                </tr>
                <tr>
                    <td>Training Year </td>
                    <td> {{ $trainingData->training_year }}</td>
                </tr>
                <tr>
                    <td>Duration </td>
                    <td> {{ $trainingData->duration }}</td>
                </tr>
                <tr>
                    <td> Status</td>
                    <td> {{ $trainingData->status }}</td>
                </tr>
                </tbody>
            </table>

            <div class="clearfix"></div>
        </div>

    </div>



@endsection


