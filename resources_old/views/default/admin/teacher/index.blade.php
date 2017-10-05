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

                                <a href="{{ route('teacher-add-form') }}"><i class="fa fa-plus"></i> {{ trans('sidebar.teacher-add') }}</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
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
                                            <th>{{ trans('translate.photo') }}</th>
                                            <th>{{ trans('translate.name') }}</th>
                                            <th>{{ trans('translate.email') }}</th>
                                            <th>{{ trans('translate.department') }}</th>
                                            <th>{{ trans('translate.designation') }}</th>
                                            <th>{{ trans('translate.address') }}</th>
                                            <th>{{ trans('translate.phone') }}</th>
                                            <th>{{ trans('translate.gender') }}</th>
                                            <th>{{ trans('translate.religion') }}</th>
                                            <th class="text-center th_width_100">{{ trans('translate.action') }}</th>

                                        </tr>
                                        </thead>
                                        <tbody>

                                        @set('sl',1)
                                        @foreach($teachersWithPhotos as $photo => $teacher)


                                            <tr>
                                                <td>{{$sl++}}</td>

                                                <td>{!!  Html::image('imagecache/dummy/'.$photo) !!}</td>
                                                {{--<td><span class="glyphicon glyphicon-user fa-man" aria-hidden="true"></span></td>--}}
                                                <td>
                                                    {{ $teacher->translate($locale)? $teacher->first_name.' '.$teacher->last_name:$teacher->translate($defaultLocale)->first_name.' '.$teacher->translate($defaultLocale)->last_name }}
                                                </td>

                                                <td>{{ $teacher->email or 'Null'}}</td>
                                                <td>{{ $teacher->department->name or 'Null'}}</td>
                                                <td>{{ $teacher->designation->name or 'Null' }}</td>
                                                <td>{{ $teacher->translate($locale)?$teacher->address:$teacher->translate($defaultLocale)->address }}</td>
                                                <td>{{ $teacher->phone or 'Null' }}</td>
                                                <td>{{ $teacher->gender->translate($locale)?$teacher->gender->gender_name:$teacher->gender->translate($defaultLocale)->gender_name }}</td>
                                                <td>{{ $teacher->religion->name or 'Null' }}</td>
                                                <td>
                                                    <a class="btn btn-primary btn-xs mrg" data-original-title="{{ trans('translate.view') }}" data-toggle="tooltip" href="{{ route('teacher-view',[$teacher->id]) }}">
                                                        <i class="fa fa-check-square-o"></i></a>
                                                    <a class="btn btn-success btn-xs mrg" data-original-title="{{ trans('translate.edit') }}" data-toggle="tooltip" href="{{ route('teacher-edit-form',[$teacher->id]) }}"><i class="fa fa-edit"></i></a>

                                                    <a  class="btn btn-danger delete_btn btn-xs mrg" data-original-title="{{ trans('translate.delete') }}" data-toggle="tooltip" href="{{ route('user-delete',[$teacher->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                </td>

                                            </tr>
                                        @endforeach

                                        </tbody>
                                    </table>

                                    {{--this function is described in the helper/forms.php page and the
                                    parameteres are provided from the relevant controller i.e UsersController in this case--}}
                                    {{--                                    {!! dataTableList($usersList,null,null,$model) !!}--}}
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div> <!--row last-->
                </div>
            </div>
        </div>
    </div>
@endsection