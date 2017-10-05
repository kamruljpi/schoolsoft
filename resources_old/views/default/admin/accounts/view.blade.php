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
                       <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print_preview') }} </button>
                    <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-5 view">
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

        <div class="inner-view view-table-holder ">
            <table class="table table-bordered table-hover table-striped table-responsive ">
                    <thead>
                    <tr class="th-bg ">
                        <th colspan="4" class="text-center th_font">
                          
                           {{ trans('sidebar.account_information') }}
                        </th>
                    </tr>
                    </thead>
                    <tbody>
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
                        <td> {{ $accountData->amount }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.account_subject') }}</td>
                        <td> {{ $accountData->translate($locale)?$accountData->translate($locale)->account_name:$accountData->translate($defaultLocale)->account_name }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.account_note') }}</td>
                        <td> {{ $accountData->translate($locale)?$accountData->translate($locale)->account_description:$accountData->translate($defaultLocale)->account_description }}</td>
                    </tr>
                    <tr>
                        <td>  {{ trans('translate.status') }}</td>
                        <td> {{ $accountData->status }}</td>
                    </tr>
                    </tbody>
                </table>
           
            <div class="clearfix"></div>
        </div>

    </div>



@endsection


