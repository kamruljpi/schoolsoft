
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
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.set_overtime_ruls') }}
                    </div>
                    <div class="col-md-6 col-xs-7 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <a href="{!! route('overtime-rules-create-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.overtime-rules-create') }}</a>
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
                                            <th class="th_width_100">{{ trans('translate.sl') }}</th>
                                            <th>{{ trans('translate.name') }}</th>
                                            {{--<th>{{ trans('sidebar.content') }}</th>--}}
                                            <th>{{ trans('translate.status') }}</th>
                                            <th class="text-center th_width_80">{{ trans('translate.action') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        @set('sl',1)

                                        @if(isset($overtimeRuleList) && !$overtimeRuleList->isEmpty())
                                            @foreach($overtimeRuleList as $overtimeRule)


                                                <tr>
                                                    <td>{{$sl++}}</td>


                                                    <td>{{ $overtimeRule->name or 'Not Available'}}</td>

                                                    <td>{{ $overtimeRule->status or 'Not Available'}}</td>


                                                    <td>

                                                        <a class="btn btn-primary btn-xs mrg" data-original-title="{{ trans('translate.view') }}" data-toggle="tooltip" href="{{ route('overtime-rule-view',[$overtimeRule->id]) }}">
                                                            <i class="fa fa-check-square-o"></i></a>

                                                        {{--<a class="btn btn-success btn-xs mrg" data-original-title="{{ trans('translate.edit') }}" data-toggle="tooltip" href="{{ route('allowance-rule-edit-form',[$allowanceRule->id]) }}"><i class="fa fa-edit"></i></a>--}}

                                                        {{--<a  class="btn btn-danger btn-xs delete_btn mrg" data-original-title="{{ trans('translate.delete') }}" data-toggle="tooltip" href="{{ route('allowance-rule-delete',[$allowanceRule->id]) }}"><i class="fa fa-trash-o"></i></a>--}}
                                                    </td>

                                                </tr>
                                            @endforeach
                                        @else

                                            <tr>
                                                <td colspan="5">
                                                    <strong>No Data Found</strong>
                                                </td>
                                            </tr>

                                        @endif

                                        </tbody>
                                    </table>
                                        <div class="pagination">{!!   str_replace('/?','?',$overtimeRuleList->render() ) !!} </div>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div> <!--row last-->
                </div>
            </div>
        </div>
    </div>



@endsection
