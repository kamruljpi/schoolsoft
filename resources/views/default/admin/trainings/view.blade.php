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
                            <li class="active">{{ trans('sidebar.training') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view">
            <div class="row">
                <table class="table table-bordered table-hover table-striped table-responsive ">
                    <thead>
                    <tr class="th-bg">
                        <th colspan="4" class="text-center th_font">
                           
                            {{ trans('sidebar.training_information') }}
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="th_width_150">{{ trans('sidebar.training_title') }}</td>
                        <td>  {{ $trainingData->translate($locale)? $trainingData->training_title:$trainingData->translate($defaultLocale)->training_title }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.topic_covered') }}</td>
                        <td>  {{ $trainingData->translate($locale)? $trainingData->training_cover:$trainingData->translate($defaultLocale)->training_cover }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.institute') }}</td>
                        <td>  {{ $trainingData->translate($locale)? $trainingData->institute_name:$trainingData->translate($defaultLocale)->institute_name }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.country') }}</td>
                        <td> {{ $trainingData->translate($locale)? $trainingData->trainingCountry->country_name:$trainingData->translate($defaultLocale)->trainingCountry->country_name }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('sidebar.location') }}</td>
                        <td> {{ $trainingData->translate($locale)? $trainingData->location:$trainingData->translate($defaultLocale)->location }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.training_year') }}</td>
                        <td>{{ $trainingData->training_year }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.duration') }}</td>
                        <td>{{ $trainingData->duration }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('translate.status') }}</td>
                        <td> {{ $trainingData->status }}</td>
                    </tr>
                    </tbody>
                </table>

                <div class="clearfix"></div>
            </div>
        </div>

    </div>



@endsection


