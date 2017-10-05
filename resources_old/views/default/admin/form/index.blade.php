
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

                                <a href="{!! route('form-setting-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.form-settings') }}</a>
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
                               
                                <div class="box-body">

                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>{{ trans('translate.sl') }}</th>
                                            <th> {{ trans('sidebar.field_name') }}
                                            </th>
                                            <th>{{ trans('sidebar.field_label') }}</th>
                                            <th>{{ trans('sidebar.field_type') }}</th>
                                            <th>{{ trans('sidebar.field_option') }}</th>
                <th>{{ trans('sidebar.default_value') }}</th>
                                            <th>{{ trans('sidebar.form_name') }}</th>
                                            <th>{{ trans('sidebar.required') }}</th>
                                            <th>{{ trans('sidebar.displayable') }}</th>
                                            <th>{{ trans('sidebar.translatable') }}</th>
                                            <th>{{ trans('sidebar.deleted') }}</th>
                                            <th>{{ trans('translate.status') }}</th>
                                            <th class="text-center th_width_80">{{ trans('translate.action') }}</th>

                                        </tr>
                                        </thead>
                                        <tbody>

                                        @set('sl',1)
                                        @foreach($allSettings as $setting)


                                            <tr>
                                                <td>{{$sl++}}</td>

                                                <td>{{ $setting->form_field_name }}</td>

                                                <td>
                                                    {{ $setting->field_level }}
                                                </td>

                                                <td>{{ $setting->field_type }}</td>
                                                <td>{{ $setting->field_options }}</td>
                                                <td>{{ $setting->default_value  }}</td>
                                                <td>{{ $setting->form_name  }}</td>
                                                <td>{{ $setting->is_required==true?'Yes':'No'}}</td>
                                                <td>{{ $setting->is_displayable==true?'Yes':'No' }}</td>
                                                <td>{{ $setting->is_translatable==true?'Yes':'No'}}</td>
                                                <td>{{ $setting->is_deleted==true?'Yes':'No' }}</td>
                                                <td>{{ $setting->status ==true?'Yes':'No' }}</td>
                                                <td>

                                                    <a class="btn btn-success btn-xs mrg" data-original-title="{{ trans('translate.edit') }}" data-toggle="tooltip" href="{{ route('form-setting-edit-form',[$setting->id]) }}"><i class="fa fa-edit"></i></a>

                                                    <a  class="btn btn-danger btn-xs delete_btn mrg" data-original-title="{{ trans('translate.delete') }}" data-toggle="tooltip" href="{{ route('form-setting-delete',[$setting->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                </td>

                                            </tr>
                                        @endforeach

                                        </tbody>
                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div> <!--row last-->
                </div>
            </div>
        </div>
    </div>



@endsection
