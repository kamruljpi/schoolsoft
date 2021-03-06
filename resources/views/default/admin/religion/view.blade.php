@extends('default.admin.layouts.master')


@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid" style="min-height: 1215px;">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-7 col-xs-6">
                       <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
                    <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-5 col-xs-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('translate.dashboard') }}</a></li>
                            <li class="active">{{ trans('translate.religion') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view">
            <div class="row">   
                <table class="table table-striped table-bordered table-hover table-responsive ">
                    <thead>
                    <tr class="th-bg ">
                        <th colspan="4" class="text-center th_font">
                           {{ trans('translate.religion_information') }}
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="th_width_100">{{ trans('translate.religion') }}</td>
                        <td> {{ $religionToView->name  }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('translate.status') }}</td>
                        <td> {{ $religionToView->status }}</td>

                    </tr>

                    </tbody>
                </table>
          
                <div class="clearfix"></div>
            </div>       
        </div>

    </div>



@endsection


