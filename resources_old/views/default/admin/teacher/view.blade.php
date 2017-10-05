{{-- dd($studentProfile) --}}
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
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
                    <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-5 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('translate.dashboard') }}</a></li>
                            <li class="active">{{ trans('translate.teacher_name') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
         <div class="view-table-holder m_bottom_40">
            <table class="table table-bordered table-hover table-responsive">
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
                        <div class="view-name">{{ $teacherProfile->translate($locale)? $teacherProfile->first_name.' '.$teacherProfile->last_name:$teacherProfile->translate($defaultLocale)->first_name.' '.$teacherProfile->translate($defaultLocale)->last_name }}</div>
                    </th>
                </tr>
                <tr class="th-bg">
                    <th colspan="4" class="text-center">
                        <div class="view-name">
                            {{ trans('translate.designation') }}: Lecturer
                        </div>
                    </th>
                </tr>

                <tr class="th-bg">
                    <th colspan="4" class="text-center">{{ $teacherProfile->email }}</th>
                </tr>

                </thead>
            </table>     

            <fieldset>
                <legend>{{ trans('translate.teacher_login') }}</legend>
                <table class="table table-bordered table-hover table-responsive table-striped">
                        <tbody>
                        
                        <tr>
                            <td> {{ trans('translate.user_name') }}</td>
                            <td> {{ $teacherProfile->username }}</td>

                        </tr>                    
                       

                        </tbody>
                    </table>
            </fieldset>

            <fieldset>
                <legend>{{ trans('translate.{{ trans('translate.sl') }}') }}</legend>
                <table class="table table-bordered table-hover table-responsive table-striped">
                        <tbody>
                        
                        <tr>
                            <td> {{ trans('translate.teacher_id') }} </td>
                            <td> {{ $teacherProfile->employee_id }}</td>

                        </tr>
                        
                        <tr>
                            <td> {{ trans('translate.joining_date') }} </td>
                            <td> {{ $teacherProfile->dept_join_date }}</td>

                        </tr>
                        <tr>
                            <td>{{ trans('translate.fathers_name') }}</td>
                            <td> {{ $teacherProfile->translate($locale)?$teacherProfile->translate($locale)->father_name:$teacherProfile->translate($defaultLocale)->father_name }}</td>

                        </tr>
                        <tr>
                            <td>{{ trans('translate.mothers_name') }}</td>
                            <td> {{ $teacherProfile->translate($locale)?$teacherProfile->translate($locale)->mother_name:$teacherProfile->translate($defaultLocale)->mother_name }}</td>

                        </tr>
                        <tr>
                            <td> {{ trans('translate.address') }} </td>
                            <td> {{ $teacherProfile->translate($locale)?$teacherProfile->translate($locale)->address:$teacherProfile->translate($defaultLocale)->address }}</td>

                        </tr>
                        <tr>

                            <td> {{ trans('translate.gender') }} </td>
                            <td> {{ $teacherProfile->gender->translate($locale)?$teacherProfile->gender->gender_name:$teacherProfile->gender->translate($defaultLocale)->gender_name  }}</td>

                        </tr>
                        <tr>
                            <td> {{ trans('translate.religion') }} </td>
                            <td> {{ $teacherProfile->religion->name }}</td>
                        </tr>
                        <tr>
                            <td> {{ trans('translate.phone') }}</td>
                            <td> {{ $teacherProfile->phone }}</td>

                        </tr>
                        <tr>
                            <td>{{ trans('translate.emergency_contact') }}</td>
                            <td> {{ $teacherProfile->emergency_contact }}</td>
                        </tr>
                        <tr>
                            <td> {{ trans('translate.nid_number') }}</td>
                            <td> {{ $teacherProfile->nid_number }}</td>
                        </tr>
                        <tr>
                            <td>{{ trans('translate.passport_number') }}</td>
                            <td> {{ $teacherProfile->passport_no }}</td>
                        </tr>
                        <tr>
                            <td>{{ trans('translate.birth_certificate') }}</td>
                            <td> {{ $teacherProfile->birth_certificate_no }}</td>
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
                                <td> {{ $teacherProfile->phone }}</td>

                            </tr>
                            <tr>
                                <td> {{ trans('translate.emergency_contact') }}</td>
                                <td> {{ $teacherProfile->emergency_contact }}</td>
                            </tr>
                            <tr>
                                <td> {{ trans('translate.email') }}</td>
                                <td> {{ $teacherProfile->email }}</td>
                            </tr>
                           

                            </tbody>
                        </table>
                </fieldset>


            </div>
            <div class="clearfix"></div>          
        </div>



@endsection


