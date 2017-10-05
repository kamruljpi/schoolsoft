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
                            <li class="active">Reference</li>
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
                        Reference Information
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="th_width_150">Name </td>
                    <td>  {{ $referenceData->translate($locale)? $referenceData->reference_name:$referenceData->translate($defaultLocale)->reference_name }}</td>
                </tr>
                <tr>
                    <td>Organization </td>
                    <td>  {{ $referenceData->translate($locale)? $referenceData->organization:$referenceData->translate($defaultLocale)->organization }}</td>
                </tr>
                <tr>
                    <td>Designation </td>
                    <td>  {{ $referenceData->translate($locale)? $referenceData->designation:$referenceData->translate($defaultLocale)->designation }}</td>
                </tr>
                <tr>
                    <td>Address </td>
                    <td>  {{ $referenceData->translate($locale)? $referenceData->address:$referenceData->translate($defaultLocale)->address }}</td>
                </tr>
                <tr>
                    <td>Phone (Off) </td>
                    <td> {{ $referenceData->office_phone }}</td>
                </tr>
                <tr>
                    <td>Phone (Res) </td>
                    <td> {{ $referenceData->home_phone }}</td>
                </tr>
                <tr>
                    <td>Mobile </td>
                    <td> {{ $referenceData->mobile }}</td>
                </tr>
                <tr>
                    <td>Email </td>
                    <td> {{ $referenceData->email }}</td>
                </tr>
                <tr>
                    <td>Relation </td>
                    <td>  {{ $referenceData->translate($locale)? $referenceData->referenceRelation->relation_name:$referenceData->translate($defaultLocale)->referenceRelation->relation_name }}</td>
                </tr>
                <tr>
                    <td> Status</td>
                    <td> {{ $referenceData->status }}</td>
                </tr>
                </tbody>
            </table>

            <div class="clearfix"></div>
        </div>

    </div>



@endsection


