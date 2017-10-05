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
                            <li class="active">{{ trans('translate.student_name') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="view-table-holder m_bottom_40">
            <table class="table table-bordered table-hover table-responsive">
                <thead>
                <tr class="th-bg ">
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
                        <div class="view-name">{{ $studentProfile->translate($locale)? $studentProfile->first_name.' '.$studentProfile->last_name:$studentProfile->translate($defaultLocale)->first_name.' '.$studentProfile->translate($defaultLocale)->last_name }}</div>
                    </th>
                </tr>

                <tr class="th-bg">
                    <th colspan="4" class="text-center">
                        <div class="view-name">
                            {{ trans('translate.fathers_name') }} :
                            {{ $studentProfile->translate($locale)?$studentProfile->translate($locale)->father_name:$studentProfile->translate($defaultLocale)->father_name }}
                        </div>
                    </th>
                </tr>

                <tr class="th-bg">
                    <th colspan="4" class="text-center">
                        <div class="view-name">
                            {{ trans('translate.class_name') }} : Six

                        </div>
                    </th>
                </tr>

                <tr class="th-bg">
                    <th colspan="4" class="text-center">{{ $studentProfile->email }}</th>
                </tr>

                </thead>
            </table>

            <fieldset>
                <legend>{{ trans('translate.student_login') }}</legend>
                <table class="table table-bordered  table-striped">

                    <tbody>
                    <tr>
                        <td>{{ trans('translate.user_name') }}</td>
                        <td>{{ $studentProfile->username }}</td>
                    </tr>
                    </tbody>
                </table>

            </fieldset>
            <fieldset>
                <legend>{{ trans('translate.student_information') }}</legend>
                <table class="table table-bordered table-striped">
                    <tbody>
                    <tr>
                        <td>{{ trans('translate.student_id') }}</td>
                        <td>{{ $studentProfile->employee_id }}</td>
                    </tr>

                    <tr>
                        <td>{{ trans('translate.roll_number') }}</td>
                        <td> {{ $studentProfile->roll_no }}</td>
                    </tr>

                    <tr>
                        <td> {{ trans('translate.guardian') }}</td>
                        <td> {{ $guardianData->translate($locale)? $guardianData->first_name.' '.$guardianData->last_name:$guardianData->translate($defaultLocale)->first_name.' '.$guardianData->translate($defaultLocale)->last_name }}</td>
                    </tr>


                    <tr>
                        <td>{{ trans('translate.mothers_name') }} </td>
                        <td> {{ $studentProfile->translate($locale)?$studentProfile->translate($locale)->mother_name:$studentProfile->translate($defaultLocale)->mother_name }}</td>

                    </tr>
                    <tr>
                        <td>{{ trans('translate.admission_date') }}</td>
                        <td> {{ $studentProfile->dept_join_date }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('translate.address') }}</td>
                        <td> {{ $studentProfile->translate($locale)?$studentProfile->translate($locale)->address:$studentProfile->translate($defaultLocale)->address }}</td>

                    </tr>

                    <tr>
                        <td>{{ trans('translate.gender') }}</td>
                        <td> {{ $studentProfile->gender->translate($locale)?$studentProfile->gender->gender_name:$studentProfile->gender->translate($defaultLocale)->gender_name  }}</td>
                    </tr>

                    <tr>
                        <td> {{ trans('translate.religion') }}</td>
                        <td> {{ $studentProfile->religion->name }}</td>
                    </tr>

                    <tr>
                        <td>{{ trans('translate.nid_number') }}</td>
                        <td> {{ $studentProfile->nid_number }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('translate.passport_number') }}</td>
                        <td> {{ $studentProfile->passport_no }}</td>
                    </tr>
                    <tr>
                        <td>  {{ trans('translate.birth_certificate') }}</td>
                        <td> {{ $studentProfile->birth_certificate_no }}</td>
                    </tr>

                    </tbody>
                </table>



            </fieldset>

            <fieldset>
                <legend>{{ trans('translate.contact') }}</legend>
                <table class="table table-bordered table-striped">

                    <tbody>
                    <tr>
                        <td> {{ trans('translate.phone') }}</td>
                        <td> {{ $studentProfile->phone }}</td>

                    </tr>
                    <tr>
                        <td>{{ trans('translate.emergency_contact') }}</td>
                        <td> {{ $studentProfile->emergency_contact }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('translate.email') }}</td>
                        <td>{{ $studentProfile->email }}</td>
                    </tr>
                    </tbody>
                </table>


            </fieldset>


        </div>


    </div>



@endsection


