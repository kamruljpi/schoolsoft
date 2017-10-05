
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
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>@if(isset($viewType)){{ strtoupper($viewType) }}@endif
                    </div>
                    <div class="col-md-6 col-xs-7 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">@if(isset($viewType)){{ strtoupper($viewType) }}@endif</li>
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
                                    @if (session()->has('success'))
                                        <div class="alert alert-success">
                                            <ul>

                                                <li>{{ session()->get('success') }}</li>

                                            </ul>
                                        </div>
                                    @endif
                                                                           @set('sl',1)

                                        @if(isset($overtimeRuleToView) && !is_null($overtimeRuleToView) )



                                                        <strong>Overtime Rule Name :</strong>{{ $overtimeRuleToView->name or 'Not Available'}} <br>



                                                @if(isset($overtimeRuleToView->salary_types) && count(json_decode($overtimeRuleToView->salary_types))>0)
                                                <strong>Salary Types :</strong>


                                                        @foreach(json_decode($overtimeRuleToView->salary_types) as $contentKey =>$contentValue)

                                                           {{  ucwords(str_replace('_',' ',$contentKey)) }},

                                                         @endforeach
                                                @endif

                                        <br>


                                           <strong>Amount:</strong> {{ $overtimeRuleToView->amount or 'Not Available'}}<br>
                                            <strong>Amount Type:</strong>{{ $overtimeRuleToView->amount_type or 'Not Available' }}


                                        @else


                                                    <strong>No Data Found</strong>

                                      @endif

                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div> <!--row last-->
                </div>
            </div>
        </div>
    </div>



@endsection
