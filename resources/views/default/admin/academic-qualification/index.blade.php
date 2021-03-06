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
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.education_qua_list') }}
                    </div>
                    <div class="col-md-6 col-xs-7 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <a href="{!! route('academic-qualification-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar_aziz.academic-qualification-create') }}</a>
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
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
                    <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-box">
            <div class="row">
                <div class="col-md-12 snt form-horizontal">
                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    @if(session()->has('success'))
                        <div class="alert alert-success">
                            <ul>

                                <li>{{ session()->get('success') }}</li>

                            </ul>
                        </div>
                    @endif
                </div>
                <div id="datatable">
                    <div class="row last">
                        <div class="col-sm-12">
                            <div class="box">
                                <div class="box-body auto_scroll">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th class="th_width_80">{{ trans('translate.sl') }}</th>
                                            <th> {{ trans('sidebar.level_edu') }}</th>
                                            <th>{{ trans('sidebar.degree_title') }}</th>
                                            <th>{{ trans('sidebar.degree_title') }}</th>
                                            <th>{{ trans('sidebar.result') }}</th>
                                            <th>{{ trans('sidebar.passing_year') }}</th>
                                            <th>{{ trans('translate.status') }}</th>
                                            <th class="text-center th_width_100">{{ trans('translate.action') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        @set('sl',1)
                                        @if(!$academicQualificationList->isEmpty())
                                            @foreach($academicQualificationList as $academicQualification)


                                                <tr>
                                                    <td>{{$sl++}}</td>
                                                    <td>
                                                        @if(!is_null($academicQualification->translate($defaultLocale)))
                                                            {{ $academicQualification->translate($locale)? $academicQualification->academicQualificationOfEducationLevel->education_level_name:$academicQualification->translate($defaultLocale)->academicQualificationOfEducationLevel->education_level_name }}
                                                        @else
                                                            No Education Level Given in ...@if($locale=='en') English @else  Bangla @endif
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @if(!is_null($academicQualification->translate($defaultLocale)))
                                                            {{ $academicQualification->translate($locale)? $academicQualification->degree_title:$academicQualification->translate($defaultLocale)->degree_title }}
                                                        @else
                                                            No Degree Given in ...@if($locale=='en') English @else  Bangla @endif
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @if(!is_null($academicQualification->translate($defaultLocale)))
                                                            {{ $academicQualification->translate($locale)? $academicQualification->institute_name:$academicQualification->translate($defaultLocale)->institute_name }}
                                                        @else
                                                            No Institute Name Given in ...@if($locale=='en') English @else  Bangla @endif
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @if(!is_null($academicQualification->translate($defaultLocale)))
                                                            {{ $academicQualification->translate($locale)? $academicQualification->result:$academicQualification->translate($defaultLocale)->result }}
                                                        @else
                                                            No Result Given in ...@if($locale=='en') English @else  Bangla @endif
                                                        @endif
                                                    </td>
                                                    <td>{{ $academicQualification->year_of_passing}}</td>
                                                    <td>{{ $academicQualification->status or 'Null'}}</td>
                                                    <td>
                                                        <a class="btn btn-primary btn-xs mrg" data-original-title="View" data-toggle="tooltip" href="{{ route('academic-qualification-view',[$academicQualification->id]) }}">
                                                            <i class="fa fa-check-square-o"></i></a>
                                                        <a class="btn btn-success btn-xs mrg" data-original-title="Edit" data-toggle="tooltip" href="{{ route('academic-qualification-edit-form',[$academicQualification->id]) }}"><i class="fa fa-edit"></i></a>

                                                        <a  class="btn btn-danger btn-xs delete_btn mrg" data-original-title="Delete" data-toggle="tooltip" href="{{ route('academic-qualification-delete',[$academicQualification->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                    </td>

                                                </tr>
                                            @endforeach
                                        @else
                                            <tr>
                                                <td colspan="4">
                                                    <strong>No data found</strong>
                                                </td>
                                            </tr>
                                        @endif
                                        </tbody>
                                    </table>
                                    <div class="pagination">{!!   str_replace('/?','?',$academicQualificationList->render() ) !!} </div>
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

@section('scripts')

    @parent
    <script src="{{ asset('theme_components/admin/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    {!! Html::script('theme_components/admin/plugins/datatables/dataTables.bootstrap.min.js') !!}

@endsection