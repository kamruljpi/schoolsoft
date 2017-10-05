
@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')

    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ strtoupper($viewType) }}
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <a href="{!! route('site-membership-create-form') !!}"><i class="fa fa-plus"></i> Create Site Member</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> Print </button>
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> Print Preview </button>

                    <button class="btn btn-primary"><span class="fa fa-file"></span> Edit</button>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-box">
            <div class="row">
                <div id="datatable">
                    <div class="row last">
                        <div class="col-sm-12">
                            <div class="box">
                                <div class="box-body auto_scroll">
                                    @if(session()->has('success'))
                                        <div class="alert alert-success">
                                            <ul>

                                                <li>{{ session()->get('success') }}</li>

                                            </ul>
                                        </div>
                                    @endif
                                    <table class="table table-bordered table-striped table-responsive">
                                        <thead>
                                        <tr>
                                            <th>{{ trans('translate.sl') }}</th>

                                            <th class="text-center">Member Name</th>
                                            <th class="text-center">Payment</th>
                                            <th class="text-center">Payment Amount</th>
                                            <th class="text-center">Payment Installment</th>
                                            <th class="text-center">Late Payment Membership Status</th>
                                            <th class="text-center">Late Payment Membership Days</th>
                                            <th class="text-center">Late Fee</th>
                                            <th class="text-center">Alumni Login</th>
                                            <th class="text-center">Alumni Fee</th>
                                            <th class="text-center">Discount Type</th>
                                            <th class="text-center">Discount</th>
                                            <th class="text-center">Status</th>
                                            <th class="text-center">Action</th>

                                        </tr>
                                        </thead>
                                        @if(isset($siteMembers) && !$siteMembers->isEmpty())
                                        <tbody>
                                        @set('sl',1)


                                            @foreach($siteMembers as $siteMember)

                                                <tr>
                                                    <td>{{$sl++}}</td>


                                                    <td>
                                                        {{  $siteMember->name or 'Not Available'}}
                                                    </td>
                                                    <td>
                                                        {{ $siteMember->payment_type or 'Not Available' }}
                                                    </td>

                                                    <td>
                                                        {{ $siteMember->payment_amount or 'Not Available' }}
                                                    </td>
                                                    <td>
                                                        {{ $siteMember->payment_installment or 'Not Available' }}

                                                    </td>
                                                    <td>

                                                        {{ $siteMember->late_payment_membership_status ? 'Active' : 'Inactive'  }}
                                                    </td>
                                                    <td>

                                                        {{ $siteMember->late_payment_membership_days or 'Not Available' }}
                                                    </td>
                                                    <td>

                                                        {{ $siteMember->late_fee or 'Not Available' }}
                                                    </td>
                                                    <td>

                                                        {{ $siteMember->alumni_login ? 'Active' : 'Inactive'  }}
                                                    </td>
                                                    <td>

                                                        {{ $siteMember->alumni_fee or 'Not Available' }}
                                                    </td>
                                                    <td>

                                                        {{ $siteMember->discount_type or 'Not Available' }}
                                                    </td>
                                                    <td>

                                                        {{ $siteMember->discount or 'Not Available' }}
                                                    </td>
                                                    <td>

                                                        {{ $siteMember->status? 'Active':  'Inactive' }}
                                                    </td>

                                                    <td class="text-center">

                                                        <a class="btn btn-success btn-xs mrg" data-original-title="Edit" data-toggle="tooltip" href="{{ route('site-membership-edit-form',[$siteMember->id]) }}"><i class="fa fa-edit"></i></a>


                                                    </td>

                                                </tr>

                                            @endforeach
                                        @else

                                           <tr>
                                               <td colspan="13">
                                                   No Data
                                               </td>
                                           </tr>


                                        </tbody>
                                        @endif
                                    </table>
                                    {{--this function is described in the helper/forms.php page and the
                                    parameteres are provided from the relevant controller i.e UsersController in this case--}}
                                    {{--                                    {!! dataTableList($roleList,$locale,$defaultLocale,$model) !!}--}}
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div> <!--row last-->
                </div>
            </div>
        </div>
    </div>



@endsection
