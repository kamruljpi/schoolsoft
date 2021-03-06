@extends('default.admin.layouts.master')


@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-7 col-xs-6">
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print_preview') }} </button>
                        <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-5 col-xs-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.author') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view">
            <div class="row">
            <table class="table table-bordered table-hover table-striped table-responsive ">
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
                <tr class="th-bg ">
                    <th colspan="4" class="text-center th_font">
                        {{ trans('sidebar.author_information') }}
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>{{ trans('translate.name') }}</td>
                    <td>  {{ $authorData->translate($locale)? $authorData->author_name:$authorData->translate($defaultLocale)->author_name }}</td>
                </tr>
                <tr>
                    <td>{{ trans('sidebar.date_of_birth') }}</td>
                    <td> {{ $authorData->date_of_birth }}</td>
                </tr>
                <tr>
                    <td>{{ trans('sidebar.birth_place') }}</td>
                    <td>  {{ $authorData->translate($locale)? $authorData->author_birth_place:$authorData->translate($defaultLocale)->author_birth_place }}</td>
                </tr>
                <tr>
                    <td>{{ trans('sidebar.note') }}</td>
                    <td>  {{ $authorData->translate($locale)? $authorData->author_note:$authorData->translate($defaultLocale)->author_note }}</td>
                </tr>
                <tr>
                    <td> {{ trans('translate.status') }}</td>
                    <td> {{ $authorData->status }}</td>
                </tr>
                </tbody>
            </table>

            <div class="clearfix"></div>
            </div>
        </div>

    </div>



@endsection


