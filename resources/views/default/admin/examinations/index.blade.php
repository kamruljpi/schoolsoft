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
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.examination_list') }}
                    </div>
                    <div class="col-md-6 col-xs-7 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <a href="{!! route('examination-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar_aziz.examination-create') }}</a>
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
        <div class="inner-view">
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
                                            <th class="th_width_100">{{ trans('translate.sl') }}</th>
                                            <th>{{ trans('sidebar.examination_name') }}</th>
                                            <th>{{ trans('sidebar.date') }} </th>
                                            <th>{{ trans('translate.note') }} </th>
                                            <th>{{ trans('translate.status') }} </th>
                                            <th class="text-center th_width_80">{{ trans('translate.action') }} </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @set('sl',1)
                                        @foreach($examinationList as $examination)
                                            <tr>
                                                <td>{{ $sl++ }}</td>
                                                <td>{{ $examination->examination_name or 'Null' }}</td>
                                                <td>{{ $examination->examination_date or 'Null' }}</td>
                                                <td>{{ $examination->examination_note or 'Null' }}</td>
                                                <td>{{ $examination->status or 'Null' }}</td>
                                                <td>
                                                    <a class="btn btn-success btn-xs mrg" data-original-title="Edit" data-toggle="tooltip" href="{{ route('examination-edit-form',[$examination->id]) }}"><i class="fa fa-edit"></i></a>
                                                    <a  class="btn btn-danger btn-xs delete_btn mrg" data-original-title="Delete" data-toggle="tooltip" href="{{ route('examination-delete', [$examination->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                    <div class="pagination">{!!   str_replace('/?','?',$examinationList->render() ) !!} </div>
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
