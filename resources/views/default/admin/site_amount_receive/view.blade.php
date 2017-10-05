@extends('default.admin.layouts.master')


@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-7 col-xs-6">
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
                        <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                        
                    </div>
                    <div class="col-md-5 col-xs-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar_aziz.site_amount_receive') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view">
            <div class="row">
                <table class="table table-bordered table-hover table-striped table-responsive ">
                    <thead>
                    <tr class="th-bg ">
                        <th colspan="4" class="text-center th_font">
                            {{ trans('sidebar_aziz.site_amount_receive') }}
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="th_width_150"> {{ trans('sidebar.site_name') }}</td>
                        <td>  {{ $siteAmountReceiveData->siteInfo->translate($locale)? $siteAmountReceiveData->siteInfo->site_name:$siteAmountReceiveData->siteInfo->translate($defaultLocale)->site_name }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.amount') }}</td>
                        <td>  {{ number_format($siteAmountReceiveData->amount, 2) }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.date') }}</td>
                        <td>  {{ $siteAmountReceiveData->date or 'Null'}}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.user') }}</td>
                        <td> {{ $siteAmountReceiveData->siteAmountReceiveOfUser->translate($locale)? $siteAmountReceiveData->siteAmountReceiveOfUser->first_name.' '.$siteAmountReceiveData->siteAmountReceiveOfUser->last_name:$siteAmountReceiveData->translate($defaultLocale)->siteAmountReceiveOfUser->first_name.' '.$siteAmountReceiveData->translate($defaultLocale)->siteAmountReceiveOfUser->last_name }}</td>
                    </tr>
                    <tr>
                        <td>  {{ trans('translate.status') }}</td>
                        <td> {{ $siteAmountReceiveData->status }}</td>
                    </tr>
                    </tbody>
                </table>
                <div class="clearfix"></div>
            </div>
        </div>

    </div>



@endsection


