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
                                <a href="#">{{ trans('translate.dashboard') }}</a></li>
                            <li class="active">{{ trans('translate.user') }}</li>
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
                                @if(isset($photo) && !empty($photo))
                                    {!!  Html::image('imagecache/dummy/'.$photo) !!}
                                @endif
                                {{--<span class="glyphicon glyphicon-user fa-man img-circle" aria-hidden="true"></span>--}}
                            </div>
                        </th>
                    </tr>
                    <tr class="th-bg">
                        <th colspan="4" class="text-center">
                            <div class="view-name">{{ $userProfile->translate($locale)? $userProfile->first_name.' '.$userProfile->last_name:$userProfile->translate($defaultLocale)->first_name.' '.$userProfile->translate($defaultLocale)->last_name }}</div>
                        </th>
                    </tr>
                    <tr class="th-bg">
                        <th colspan="4" class="text-center">{{ $userProfile->email }}</th>
                    </tr>

                    </thead>
                </table>

                <fieldset>
                    <legend>{{ trans('translate.login_information') }}</legend>
                     <table class="table table-bordered table-hover table-responsive table-striped">
                        <tbody>
                            <tr>
                            <td> {{ trans('translate.user_name') }}</td>
                            <td>   {{ $userProfile->username }}</td>
                            </tr>
                        </tbody>
                    </table>
                </fieldset>

                <fieldset>
                    <legend>{{ trans('translate.personal_information') }}</legend>
                    <table class="table table-bordered table-hover table-responsive table-striped">
                    <tbody>                   
                    
                        <tr>
                            <td>{{ trans('translate.department') }} </td>
                            <td> {{ $userProfile->department->name  }}</td>
                        </tr>
                        <tr>
                            <td> {{ trans('translate.address') }}</td>
                            <td> {{ $userProfile->translate($locale)?$userProfile->translate($locale)->address:$userProfile->translate($defaultLocale)->address }}</td>

                        </tr>
                        <tr>

                            <td> {{ trans('translate.gender') }} </td>
                            <td> {{ $userProfile->gender->translate($locale)?$userProfile->gender->gender_name:$userProfile->gender->translate($defaultLocale)->gender_name  }}</td>

                        </tr>
                        <tr>
                            <td> {{ trans('translate.religion') }} </td>
                            <td> {{ $userProfile->religion->name }}</td>
                        </tr>
                        
                        <tr>
                            <td>{{ trans('translate.nid_number') }}</td>
                            <td> {{ $userProfile->nid_number }}</td>
                        </tr>
                        <tr>
                            <td>{{ trans('translate.passport_number') }}</td>
                            <td> {{ $userProfile->passport_no }}</td>
                        </tr>
                        <tr>
                            <td> {{ trans('translate.birth_certificate') }} </td>
                            <td> {{ $userProfile->birth_certificate_no }}</td>
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
                            <td> {{ $userProfile->phone }}</td>

                        </tr>
                        <tr>
                            <td> {{ trans('translate.emergency_contact') }}</td>
                            <td> {{ $userProfile->emergency_contact }}</td>
                        </tr>
                        </tbody>
                    </table>

                </fieldset>
        </div>

    </div>



@endsection


