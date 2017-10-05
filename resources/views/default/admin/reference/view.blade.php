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
                            <li class="active">{{ trans('sidebar.reference') }}</li>
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
                            {{ trans('sidebar.reference_info') }}
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="th_width_150">{{ trans('translate.name') }} </td>
                        <td>  {{ $referenceData->translate($locale)? $referenceData->reference_name:$referenceData->translate($defaultLocale)->reference_name }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.organization') }}</td>
                        <td>  {{ $referenceData->translate($locale)? $referenceData->organization:$referenceData->translate($defaultLocale)->organization }}</td>
                    </tr>
                    <tr>

                        <td>{{ trans('translate.designation') }}</td>
                        <td>  {{ $referenceData->translate($locale)? $referenceData->designation:$referenceData->translate($defaultLocale)->designation }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.address') }} </td>
                        <td>  {{ $referenceData->translate($locale)? $referenceData->address:$referenceData->translate($defaultLocale)->address }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.phone_off') }}</td>
                        <td> {{ $referenceData->office_phone }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.phone_res') }}</td>
                        <td> {{ $referenceData->home_phone }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('translate.mobile') }}</td>
                        <td> {{ $referenceData->mobile }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.email') }}</td>
                        <td> {{ $referenceData->email }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.relation') }}</td>
                        <td>  {{ $referenceData->translate($locale)? $referenceData->referenceRelation->relation_name:$referenceData->translate($defaultLocale)->referenceRelation->relation_name }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.status') }}</td>
                        <td> {{ $referenceData->status }}</td>
                    </tr>
                    </tbody>
                </table>
                <div class="clearfix"></div>
            </div>
        </div>

    </div>



@endsection


