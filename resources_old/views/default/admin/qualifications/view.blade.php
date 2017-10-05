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
                            <li class="active">Professional Qualification</li>
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
                        ProfessionalQualification Information
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="th_width_150">Certification </td>
                    <td>  {{ $professionalQualificationData->translate($locale)? $professionalQualificationData->certification:$professionalQualificationData->translate($defaultLocale)->certification }}</td>
                </tr>
                <tr>
                    <td>Institute </td>
                    <td>  {{ $professionalQualificationData->translate($locale)? $professionalQualificationData->institute_name:$professionalQualificationData->translate($defaultLocale)->institute_name }}</td>
                </tr>
                <tr>
                    <td>Location </td>
                    <td>  {{ $professionalQualificationData->translate($locale)? $professionalQualificationData->location:$professionalQualificationData->translate($defaultLocale)->location }}</td>
                </tr>
                <tr>
                    <td>From </td>
                    <td> {{ $professionalQualificationData->from_date }}</td>
                </tr>
                <tr>
                    <td>To </td>
                    <td> {{ $professionalQualificationData->to_date }}</td>
                </tr>
                <tr>
                    <td> Status</td>
                    <td> {{ $professionalQualificationData->status }}</td>
                </tr>
                </tbody>
            </table>

            <div class="clearfix"></div>
        </div>

    </div>



@endsection


