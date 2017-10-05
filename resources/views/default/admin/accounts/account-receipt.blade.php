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
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print_preview') }} </button>
                        <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-5 col-xs-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.account') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view">
            <div class="row">
                <div class="col-md-8">
                    <h1>Edu360</h1>
                </div>
                <div class="col-md-4">
                    <div class="receipt_inner">
                        <span>
                            Cash Receipt# {{ $accountData->receipt_no }}
                        </span>
                        <br>
                        <span>Date : {{ $accountData->created_at }}</span>
                    </div>
                </div>
            </div>


            <div class="row">
                <table class="table table-bordered table-hover table-striped table-responsive ">
                    <thead>
                    <tr class="th-bg ">
                        <th colspan="4" class="text-center th_font">
                            {{ $accountData->siteInfo->translate($locale)? $accountData->siteInfo->site_name : $accountData->translate($defaultLocale)->siteInfo->site_name }}
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="th_width_150"> {{ trans('sidebar.address') }} </td>
                        <td>  {{ $accountData->siteInfo->translate($locale)? $accountData->siteInfo->address : $accountData->translate($defaultLocale)->siteInfo->address }}</td>
                    </tr>
                    <tr>
                        <td class="th_width_150"> {{ trans('sidebar.receipt_no') }} </td>
                        <td> {{ $accountData->receipt_no }}</td>
                    </tr>
                    <tr>
                        <td class="th_width_150"> {{ trans('sidebar.to_role') }} </td>
                        <td> {{ $accountData->toRole->name }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.to_user') }}</td>
                        <td>
                            {{ $accountData->toUser->translate($locale)? $accountData->toUser->first_name.' '.$accountData->toUser->last_name:$accountData->translate($defaultLocale)->toUser->first_name.' '.$accountData->translate($defaultLocale)->toUser->last_name }}
                        </td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.from_role') }} </td>
                        <td> {{ $accountData->fromRole->name }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.from_user') }} </td>
                        <td>
                            {{ $accountData->fromUser->translate($locale)? $accountData->fromUser->first_name.' '.$accountData->fromUser->last_name:$accountData->translate($defaultLocale)->fromUser->first_name.' '.$accountData->translate($defaultLocale)->fromUser->last_name }}
                        </td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.account_type') }}</td>
                        <td>  {{ $accountData->translate($locale)? $accountData->accountType->account_type_name:$accountData->translate($defaultLocale)->accountType->account_type_name }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.amount_type') }}</td>
                        <td> {{ $accountData->translate($locale)? $accountData->amountType->amount_type_name:$accountData->translate($defaultLocale)->amountType->amount_type_name }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.amount_category') }}</td>
                        <td> {{ $accountData->translate($locale)? $accountData->amountCategory->amount_category_name:$accountData->translate($defaultLocale)->amountCategory->amount_category_name }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.amount') }}</td>
                        <td> {{ number_format($accountData->amount, 2)}}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.account_subject') }}</td>
                        <td> {{ $accountData->translate($locale)?$accountData->translate($locale)->account_name:$accountData->translate($defaultLocale)->account_name }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.account_note') }}</td>
                        <td> {{ $accountData->translate($locale)?$accountData->translate($locale)->account_description:$accountData->translate($defaultLocale)->account_description }}</td>
                    </tr>
                    </tbody>
                </table>

                <div class="clearfix"></div>
            </div>
        </div>

    </div>



@endsection


