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
                            <li class="active">Site</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row--> 
        <div class="inner-view view-table-holder m_bottom_40">
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
                    <legend>Login Information</legend>
                     <table class="table table-bordered table-hover table-responsive table-striped">
                        <tbody>
                            <tr>
                            <td> Site Alias</td>
                            <td>   {{ $siteToView->site_email or 'Not Available' }}</td>
                            </tr>
                        </tbody>
                    </table>
                </fieldset>

                <fieldset>
                    <legend>More Information</legend>
                    <table class="table table-bordered table-hover table-responsive table-striped">
                    <tbody>                   
                    
                        <tr>
                            <td>Site Type </td>
                            <td> {{ $siteToView->siteType->name or 'Not Available'  }}</td>
                        </tr>
                        <tr>
                            <td>Site Group </td>
                            <td> {{ $siteToView->siteGroup->name or 'Not Avaialable' }}</td>
                        </tr>
                        <tr>
                            <td> Address</td>
                            <td>{{ $siteToView->translate($locale)? $siteToView->address:$siteToView->translate($defaultLocale)->address }}</td>

                        </tr>
                        </tbody>
                    </table>
                </fieldset>


                <fieldset>
                    <legend>Contact</legend>
                    <table class="table table-bordered table-hover table-responsive table-striped">
                        <tbody>
                            <tr>
                            <td> Phone</td>
                            <td> {{ $siteToView->site_phone or 'Not Available' }}</td>

                        </tr>

                        </tbody>
                    </table>

                </fieldset>
        </div>

    </div>



@endsection


