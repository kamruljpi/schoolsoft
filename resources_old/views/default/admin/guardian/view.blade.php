{{-- dd($studentProfile) --}}
@extends('default.admin.layouts.master')


@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-7">
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
                        <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-5 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('translate.dashboard') }}</a></li>
                            <li class="active">{{ trans('translate.guardian') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

         <div class="view-table-holder m_bottom_40">
            <table class="table table-bordered table-hover table-responsive view-table-holder">
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
                            <div class="view-name">{{ $guardianProfile->translate($locale)? $guardianProfile->first_name.' '.$guardianProfile->last_name:$guardianProfile->translate($defaultLocale)->first_name.' '.$guardianProfile->translate($defaultLocale)->last_name }}</div>
                        </th>
                    </tr>
                    <tr class="th-bg">
                        <th colspan="4" class="text-center">{{ $guardianProfile->email }}</th>
                    </tr>

                    </thead>

                </table>

                <fieldset>
                    <legend>{{ trans('translate.guardian_login') }}</legend>
                    <table class="table table-bordered table-hover table-responsive table-striped">
                        <tbody>
                        
                        <tr>
                            <td> {{ trans('translate.user_name') }}</td>
                            <td> {{ $guardianProfile->username }}</td>

                        </tr>                    
                       

                        </tbody>
                    </table>
                </fieldset>

                <fieldset>
                    <legend>{{ trans('translate.personal_information') }}</legend>
                    <table class="table table-bordered table-hover table-responsive table-striped">
                    <tbody>
                    
                    <tr>
                        <td> {{ trans('translate.guardian_id') }} </td>
                        <td> {{ $guardianProfile->employee_id }}</td>

                    </tr>
                   
                    <tr>
                        <td>{{ trans('translate.fathers_name') }}</td>
                        <td> {{ $guardianProfile->translate($locale)?$guardianProfile->translate($locale)->father_name:$guardianProfile->translate($defaultLocale)->father_name }}</td>

                    </tr>
                    <tr>
                        <td>{{ trans('translate.mothers_name') }}</td>
                        <td> {{ $guardianProfile->translate($locale)?$guardianProfile->translate($locale)->mother_name:$guardianProfile->translate($defaultLocale)->mother_name }}</td>

                    </tr>
                    <tr>
                        <td>{{ trans('translate.address') }}</td>
                        <td> {{ $guardianProfile->translate($locale)?$guardianProfile->translate($locale)->address:$guardianProfile->translate($defaultLocale)->address }}</td>

                    </tr>
                    <tr>

                        <td> {{ trans('translate.gender') }} </td>
                        <td> {{ $guardianProfile->gender->translate($locale)?$guardianProfile->gender->gender_name:$guardianProfile->gender->translate($defaultLocale)->gender_name  }}</td>

                    </tr>
                    <tr>
                        <td> {{ trans('translate.religion') }} </td>
                        <td> {{ $guardianProfile->religion->name }}</td>
                    </tr>
                    
                    <tr>
                        <td>{{ trans('translate.nid_number') }}</td>
                        <td> {{ $guardianProfile->nid_number }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.passport_number') }}</td>
                        <td> {{ $guardianProfile->passport_no }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.birth_certificate') }}</td>
                        <td> {{ $guardianProfile->birth_certificate_no }}</td>
                    </tr>

                    </tbody>
                </table> 
                </fieldset>



                <fieldset>
                    <legend> {{ trans('translate.contact') }} </legend>
                    <table class="table table-bordered table-hover table-responsive table-striped">
                        <tbody>
                        
                            <tr>
                                <td> {{ trans('translate.phone') }}</td>
                                <td> {{ $guardianProfile->phone }}</td>

                            </tr>
                            <tr>
                                <td>{{ trans('translate.emergency_contact') }}</td>
                                <td> {{ $guardianProfile->emergency_contact }}</td>
                            </tr>

                             <tr>
                                <td>{{ trans('translate.email') }}</td>
                                <td> {{ $guardianProfile->email }}</td>
                            </tr>

                        </tbody>
                    </table>
                </fieldset>




                         
            <div class="clearfix"></div>
        </div>

    </div>



@endsection


