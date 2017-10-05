
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
                                <a href="{!! route('site-create-form') !!}"><i class="fa fa-plus"></i> {{ trans('translate.site-create') }}</a>
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

                                            <th class="text-center">Site Name</th>
                                            <th class="text-center">Site Alias</th>
                                            <th class="text-center">Site Type</th>
                                            <th class="text-center">Site Group</th>
                                            <th class="text-center">{{ trans('translate.action') }}</th>

                                        </tr>
                                        </thead>
                                        <tbody>
                                        @set('sl',1)

                                            {{--{{ dd(json_decode($shift->contents)) }}--}}
                                        @foreach($sites as $site)

                                            <tr>
                                                <td>{{$sl++}}</td>


                                                <td>
                                                    {{ $site->translate($locale)? $site->site_name:$site->translate($defaultLocale)->site_name }}
                                                </td>
                                                <td>
                                                    {{ $site->site_alias or 'Not Available' }}
                                                </td>

                                                <td>
                                                    {{ $site->siteType->name or 'Not Available' }}
                                                </td>
                                                <td>
                                                    {{ $site->siteGroup->name or 'Not Available' }}
                                                </td>

                                                <td class="text-center">
                                                    <a class="btn btn-info btn-xs mrg" data-original-title="View" data-toggle="tooltip" href="{{ route('site-view',[$site->id]) }}">
                                                        <i class="fa fa-check-square-o"></i></a>
                                                    <a class="btn btn-success btn-xs mrg" data-original-title="Edit" data-toggle="tooltip" href="{{ route('site-edit-form',[$site->id]) }}"><i class="fa fa-edit"></i></a>

                                                    <a  class="btn btn-danger btn-xs delete_btn mrg" data-original-title="Delete" data-toggle="tooltip" href="{{ route('site-delete',[$site->id]) }}"><i class="fa fa-trash-o"></i></a>
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
