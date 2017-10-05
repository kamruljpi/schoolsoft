
@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')

    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6 col-xs-5">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.institute_group_list') }}
                    </div>
                    <div class="col-md-6 col-xs-7 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <a href="{!! route('site-group-create-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.create_site_group') }}</a>
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

                                            <th class="text-center">{{ trans('sidebar.site_group_name') }}</th>
                                            <th class="text-center">{{ trans('sidebar.site_group_alias') }}</th>
                                            <th class="text-center">{{ trans('translate.email') }}</th>
                                            <th class="text-center">{{ trans('translate.address') }}</th>
                                            <th class="text-center">{{ trans('translate.phone') }}</th>
                                            <th class="text-center">{{ trans('translate.status') }}</th>
                                            <th class="th_width_70 text-center">{{ trans('translate.edit') }}</th>

                                        </tr>
                                        </thead>
                                        <tbody>
                                        @set('sl',1)

                                            {{--{{ dd(json_decode($shift->contents)) }}--}}
                                        @foreach($siteGroups as $siteGroup)

                                            <tr>
                                                <td>{{$sl++}}</td>


                                                <td class="text-center">
                                                    {{  $siteGroup->name or 'Not Available'}}
                                                </td>
                                                <td class="text-center">
                                                    {{ $siteGroup->group_alias or 'Not Available' }}
                                                </td>

                                                <td class="text-center">
                                                    {{ $siteGroup->group_email or 'Not Available' }}
                                                </td>
                                                <td class="text-center">
                                                    {{ $siteGroup->group_address or 'Not Available' }}

                                                </td>
                                                <td class="text-center">

                                                    {{ $siteGroup->group_phone or 'Not Available' }}
                                                </td>
                                                <td class="text-center">

                                                    {{ $siteGroup->status? 'Active':  'Inactive' }}
                                                </td>

                                                <td class="text-center">

                                                    <a class="btn btn-success btn-xs mrg" data-original-title="{{ trans('translate.edit') }}" data-toggle="tooltip" href="{{ route('site-group-edit-form',[$siteGroup->id]) }}"><i class="fa fa-edit"></i></a>


                                                </td>

                                            </tr>

                                        @endforeach
                                        </tbody>
                                    </table>
                                        <div class="pagination">{!!   str_replace('/?','?',$siteGroups->render() ) !!} </div>
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
