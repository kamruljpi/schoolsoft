@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6 col-xs-5">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.subject_list') }}
                    </div>
                    <div class="col-md-6 col-xs-7 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <a href="{!! route('subject-group-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.create_subject_group') }}</a>
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
                <div id="datatable">
                    <div class="row last">
                        <div class="col-sm-12">
                            <div class="box">
                                <div class="box-body auto_scroll">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>{{ trans('translate.sl') }}</th>
                                            <th>{{ trans('translate.subject_group_name') }}</th>
                                            <th>{{ trans('translate.class_name') }}</th>
                                            <th>{{ trans('translate.status') }}</th>
                                            <th class="text-center th_width_100">{{ trans('translate.action') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @set('sl',1)

                                        @if(isset($subjectGroupList) && !$subjectGroupList->isEmpty())
                                            @foreach($subjectGroupList as $subjectGroup)
                                                <tr>
                                                    <td>{{ $sl++ }}</td>
                                                    <td>{{ $subjectGroup->subject_group_name or 'Not Available' }}</td>
                                                    <td>
                                                        @if(isset($subjectGroup->classOfSubjectGroup) && !empty($subjectGroup->classOfSubjectGroup))


                                                            {{ $subjectGroup->classOfSubjectGroup->class_name or 'Not Available' }}


                                                        @else

                                                            Sorry !!!! No Class Name Given .....

                                                        @endif

                                                    </td>
                                                    <td>{{ $subjectGroup->status or 'Not Available' }}</td>
                                                    <td>
                                                        <a class="btn btn-primary btn-xs mrg" data-original-title="{{ trans('translate.view') }}" data-toggle="tooltip" href="{{ route('subject-group-view',[$subjectGroup->id]) }}">
                                                            <i class="fa fa-check-square-o"></i></a>
                                                        <a class="btn btn-success btn-xs mrg" data-original-title="{{ trans('translate.edit') }}" data-toggle="tooltip" href="{{ route('subject-group-edit-form',[$subjectGroup->id]) }}"><i class="fa fa-edit"></i></a>
                                                        <a  class="btn btn-danger btn-xs delete_btn mrg" data-original-title="{{ trans('translate.delete') }}" data-toggle="tooltip" href="{{ route('subject-group-delete', [$subjectGroup->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        @else
                                            <tr>
                                                <td>
                                                    Sorry !!! No Subjects Found........
                                                </td>
                                            </tr>


                                        @endif
                                        </tbody>
                                    </table>
                                    <div class="pagination">{!!   str_replace('/?','?',$subjectGroupList->render() ) !!} </div>
                                </div> <!-- box-body -->
                            </div> <!-- box -->
                        </div>
                    </div> <!-- row last -->
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

