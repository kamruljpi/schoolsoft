
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
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>@if(isset($viewType)){{ strtoupper($viewType) }}@endif
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">Dashboard</a></li>
                            <li class="active">@if(isset($viewType)){{ strtoupper($viewType) }}@endif</li>
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
                              
                                <div class="box-body">
                                    @if (session()->has('success'))
                                        <div class="alert alert-success">
                                            <ul>

                                                <li>{{ session()->get('success') }}</li>

                                            </ul>
                                        </div>
                                    @endif
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th class="th_width_100">SL</th>
                                            <th>Name</th>
                                            <th>Content</th>
                                            <th>Status</th>
                                            <th class="text-center th_width_80">Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        @set('sl',1)
                                        @foreach($allowanceRules as $allowanceRule)


                                            <tr>
                                                <td>{{$sl++}}</td>


                                                <td>{{ $allowanceRule->name or 'Null'}}</td>
                                                <th>
{{--                                                    {!! Form::open(['url' => 'auth/signin', 'class'=>'login-form']) !!}--}}
                                                    @foreach(json_decode($allowanceRule->rules_content) as $contentKey =>$contentValue)

                                                            <input type="text" name="{{ $contentKey }}" value="{{ studly_case($contentKey) }}" readonly />
                                                            <input type="text" name="{{ $contentKey.'_value' }}" value="{{ $contentValue }}" readonly/>

                                                     @endforeach


{{--                                                    {!! Form::close() !!}--}}
                                                </th>
                                                <td>{{ $allowanceRule->status->name or 'Null'}}</td>


                                                <td>

                                                    <a class="btn btn-success btn-xs mrg" data-original-title="Edit" data-toggle="tooltip" href="{{ route('allowance-rule-edit-form',[$allowanceRule->id]) }}"><i class="fa fa-edit"></i></a>

                                                    <a  class="btn btn-danger btn-xs delete_btn mrg" data-original-title="Delete" data-toggle="tooltip" href="{{ route('allowance-rule-delete',[$allowanceRule->id]) }}"><i class="fa fa-trash-o"></i></a>
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
