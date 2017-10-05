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
                                <a href="{!! route('reference-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar_aziz.reference-create') }}</a>
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
                                <div class="box-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th class="th_width_80">SL</th>
                                            <th>Reference Name</th>
                                            <th>Organization</th>
                                            <th>Designation</th>
                                            <th>Mobile</th>
                                            <th>Relation</th>
                                            <th>Status</th>
                                            <th class="text-center th_width_100">Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        @set('sl',1)
                                        @foreach($referenceList as $referenc)


                                            <tr>
                                                <td>{{$sl++}}</td>
                                                <td>
                                                    {{ $referenc->translate($locale)? $referenc->reference_name:$referenc->translate($defaultLocale)->reference_name }}
                                                </td>
                                                <td>
                                                    {{ $referenc->translate($locale)? $referenc->organization:$referenc->translate($defaultLocale)->organization }}
                                                </td>
                                                <td>
                                                    {{ $referenc->translate($locale)? $referenc->designation:$referenc->translate($defaultLocale)->designation }}
                                                </td>
                                                <td>{{ $referenc->mobile }}</td>
                                                <td>
                                                    {{ $referenc->translate($locale)? $referenc->referenceRelation->relation_name:$referenc->translate($defaultLocale)->referenceRelation->relation_name }}
                                                </td>
                                                <td>{{ $referenc->status or 'Null'}}</td>
                                                <td>
                                                    <a class="btn btn-primary btn-xs mrg" data-original-title="View" data-toggle="tooltip" href="{{ route('reference-view',[$referenc->id]) }}">
                                                        <i class="fa fa-check-square-o"></i></a>
                                                    <a class="btn btn-success btn-xs mrg" data-original-title="Edit" data-toggle="tooltip" href="{{ route('reference-edit-form',[$referenc->id]) }}"><i class="fa fa-edit"></i></a>

                                                    <a  class="btn btn-danger btn-xs delete_btn mrg" data-original-title="Delete" data-toggle="tooltip" href="{{ route('reference-delete',[$referenc->id]) }}"><i class="fa fa-trash-o"></i></a>
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

@section('scripts')

    @parent
    <script src="{{ asset('theme_components/admin/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    {!! Html::script('theme_components/admin/plugins/datatables/dataTables.bootstrap.min.js') !!}

@endsection