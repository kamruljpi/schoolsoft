
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
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.institute_member_list') }}
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <a href="{!! route('site-membership-create-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.create_site_member') }}</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                   <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print_preview') }} </button>
                    <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-box">
            <div class="row">
                <div id="datatable">
                    <div class="row last">
                        <div class="col-sm-12">
                            <div class="box">
                                <div class="box-body auto_scroll auto_scroll_other">
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

                                            <th class="text-center">{{ trans('sidebar.member_name') }}</th>
                                            <th class="text-center">{{ trans('sidebar.payment') }}</th>
                                            <th class="text-center">{{ trans('sidebar.payment_amount') }}</th>
                                            <th class="text-center">{{ trans('sidebar.payment_installment') }}</th>
                                            <th class="text-center">{{ trans('sidebar.late_pay_mem_status') }}</th>
                                            <th class="text-center">{{ trans('sidebar.late_pay_mem_day') }}</th>
                                            <th class="text-center">{{ trans('sidebar.late_fee') }}</th>
                                            <th class="text-center">{{ trans('sidebar.alumni_login') }}</th>
                                            <th class="text-center">{{ trans('sidebar.alumni_fee') }}</th>
                                            <th class="text-center">{{ trans('sidebar.discount_type') }}</th>
                                            <th class="text-center">{{ trans('sidebar.discount') }}</th>
                                            <th class="text-center">{{ trans('translate.status') }}</th>
                                            <th class="text-center width_80">{{ trans('translate.action') }}</th>

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

                                                        <a class="btn btn-success btn-xs mrg" data-original-title="{{ trans('translate.edit') }}" data-toggle="tooltip" href="{{ route('site-membership-edit-form',[$siteMember->id]) }}"><i class="fa fa-edit"></i></a>


                                                    </td>

                                                </tr>

                                            @endforeach
                                        @else

                                           <tr>
                                               <td colspan="14">
                                                   {{ trans('sidebar.no_data') }}
                                               </td>
                                           </tr>


                                        </tbody>
                                        @endif
                                    </table>
                                        <div class="pagination">{!!   str_replace('/?','?',$siteMembers->render() ) !!} </div>
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
