
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
                                <a href="{!! route('site-group-create-form') !!}"><i class="fa fa-plus"></i> Create Site Group</a>
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

                                            <th class="text-center">Site Group Name</th>
                                            <th class="text-center">Site Group Alias</th>
                                            <th class="text-center">Email</th>
                                            <th class="text-center">Address</th>
                                            <th class="text-center">Phone</th>
                                            <th class="text-center">Status</th>
                                            <th class="text-center">Edit</th>

                                        </tr>
                                        </thead>
                                        <tbody>
                                        @set('sl',1)

                                            {{--{{ dd(json_decode($shift->contents)) }}--}}
                                        @foreach($siteGroups as $siteGroup)

                                            <tr>
                                                <td>{{$sl++}}</td>


                                                <td>
                                                    {{  $siteGroup->name or 'Not Available'}}
                                                </td>
                                                <td>
                                                    {{ $siteGroup->group_alias or 'Not Available' }}
                                                </td>

                                                <td>
                                                    {{ $siteGroup->group_email or 'Not Available' }}
                                                </td>
                                                <td>
                                                    {{ $siteGroup->group_address or 'Not Available' }}

                                                </td>
                                                <td>

                                                    {{ $siteGroup->group_phone or 'Not Available' }}
                                                </td>
                                                <td>

                                                    {{ $siteGroup->status? 'Active':  'Inactive' }}
                                                </td>

                                                <td class="text-center">

                                                    <a class="btn btn-success btn-xs mrg" data-original-title="Edit" data-toggle="tooltip" href="{{ route('site-group-edit-form',[$siteGroup->id]) }}"><i class="fa fa-edit"></i></a>


                                                </td>

                                            </tr>

                                        @endforeach
                                        </tbody>
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
