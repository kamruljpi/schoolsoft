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
                            <li class="active">{{ trans('sidebar.site') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row--> 
        <div class="inner-view view-table-holder m_bottom_40">
            <div class="row">
                <table class="table table-bordered table-hover table-responsive ">
                    <thead>
                    <tr class="th-bg">
                        <th colspan="4" class="text-center">
                            <div class="view-picture">
                                @if(isset($logo) && !empty($logo))

                                    {!!  Html::image('imagecache/dummy/'.$logo) !!}
                                @else

                                <span class="glyphicon glyphicon-user fa-man img-circle" aria-hidden="true"></span>
                                @endif
                            </div>
                        </th>
                    </tr>
                    <tr class="th-bg">
                        <th colspan="4" class="text-center">
                            <div class="view-name">{{ $siteToView->translate($locale)? $siteToView->site_name:$siteToView->translate($defaultLocale)->site_name }}</div>
                        </th>
                    </tr>
                    <tr class="th-bg">
                        <th colspan="4" class="text-center">{{ $siteToView->site_alias or 'Not Available' }}</th>
                    </tr>

                    </thead>
                </table>

                <fieldset>
                    <legend>{{ trans('translate.login_information') }}</legend>
                     <table class="table table-bordered table-hover table-responsive table-striped">
                        <tbody>
                            <tr>
                            <td> {{ trans('sidebar.site_alias') }}</td>
                            <td>   {{ $siteToView->site_email or 'Not Available' }}</td>
                            </tr>
                        </tbody>
                    </table>
                </fieldset>

                <fieldset>
                    <legend>{{ trans('sidebar.more_information') }}</legend>
                    <table class="table table-bordered table-hover table-responsive table-striped">
                    <tbody>                   
                    
                        <tr>
                            <td>{{ trans('sidebar.site_type') }} </td>
                            <td> {{ $siteToView->siteType->name or 'Not Available'  }}</td>
                        </tr>
                        <tr>
                            <td>{{ trans('sidebar.site_group') }} </td>
                            <td> {{ $siteToView->siteGroup->name or 'Not Avaialable' }}</td>
                        </tr>
                        <tr>
                            <td> {{ trans('translate.address') }}</td>
                            <td>{{ $siteToView->translate($locale)? $siteToView->address:$siteToView->translate($defaultLocale)->address }}</td>

                        </tr>
                        </tbody>
                    </table>
                </fieldset>


                <fieldset>
                    <legend>{{ trans('translate.contact') }}</legend>
                    <table class="table table-bordered table-hover table-responsive table-striped">
                        <tbody>
                            <tr>
                            <td> {{ trans('translate.phone') }}</td>
                            <td> {{ $siteToView->site_phone or 'Not Available' }}</td>

                        </tr>

                        </tbody>
                    </table>

                </fieldset>
            </div>
        </div>

    </div>



@endsection


