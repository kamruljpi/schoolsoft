@extends('default.admin.layouts.master')


@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-7">
                       <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print_preview') }} </button>
                        <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-5 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                 <a href="#"> {{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active"> {{ trans('sidebar.event') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view view-table-holder">          
                  <table class="table table-bordered table-hover table-responsive table-striped">
                    <thead>
                    <tr class="th-bg">
                        <th colspan="4" class="text-center">
                            <div class="view-picture">
                                @if(isset($photo) && !empty($photo))
                                    {!!  Html::image('imagecache/dummy/'.$photo) !!}
                                @endif
                                {{--<span class="glyphicon glyphicon-user fa-man img-circle" aria-hidden="true"></span>--}}
                            </div>
                        </th>
                    </tr>
                   
                    </thead>
                </table>


                <fieldset>
                    <legend> 
                        {{ trans('sidebar.event_information') }}
                    </legend>
               
                <table class="table table-bordered table-hover table-responsive table-striped">
                    <tbody>
                   
                    <tr>
                        <td class="th_width_100">{{ trans('sidebar.title') }} </td>
                        <td> {{ $eventData->translate($locale)? $eventData->event_title:$eventData->translate($defaultLocale)->event_title }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.from_date') }} </td>
                        <td> {{ $eventData->from_date }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.to_date') }} </td>
                        <td> {{ $eventData->to_date }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.details') }}</td>
                        <td> {{ $eventData->translate($locale)? $eventData->event_description:$eventData->translate($defaultLocale)->event_description }}</td>
                    </tr>
                    <tr>
                        <td>{{ trans('sidebar.event_venue') }} </td>
                        <td> {{ $eventData->translate($locale)? $eventData->event_venue:$eventData->translate($defaultLocale)->event_venue }}</td>
                    </tr>
                    <tr>
                        <td> {{ trans('translate.status') }}</td>
                        <td> {{ $eventData->status }}</td>
                    </tr>
                    </tbody>
                </table>

                 </fieldset>
          
            <div class="clearfix"></div>
        </div>

    </div>



@endsection


