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
                            <li class="active">{{ trans('sidebar.book') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view ">
            <div class="row">
            <table class="table table-bordered table-hover table-striped table-responsive ">
                <thead>
                <tr class="th-bg ">
                    <th colspan="4" class="text-center th_font">
                        {{ trans('sidebar.book_information') }}
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="th_width_150">{{ trans('sidebar.book_category') }}</td>
                    <td>  {{ $bookData->translate($locale)? $bookData->bookCategory->book_category_name:$bookData->translate($defaultLocale)->bookCategory->book_category_name }}</td>
                </tr>
                <tr>
                    <td> {{ trans('sidebar.author') }}</td>
                    <td>  {{ $bookData->translate($locale)? $bookData->bookAuthor->author_name:$bookData->translate($defaultLocale)->bookAuthor->author_name }}</td>
                </tr>
                <tr>
                    <td>{{ trans('sidebar.book_name') }}</td>
                    <td>  {{ $bookData->translate($locale)? $bookData->book_name:$bookData->translate($defaultLocale)->book_name }}</td>
                </tr>
                <tr>
                    <td> {{ trans('translate.subject_code') }}</td>
                    <td> {{ $bookData->subject_code }}</td>
                </tr>
                <tr>
                    <td>{{ trans('sidebar.book_price') }}</td>
                    <td> {{ number_format($bookData->book_price, 2)}}</td>
                </tr>
                <tr>
                    <td> {{ trans('sidebar.quantity') }}</td>
                    <td> {{ $bookData->quantity }}</td>
                </tr>
                <tr>
                    <td>{{ trans('sidebar.rack_no') }}</td>
                    <td> {{ $bookData->rack_no }}</td>
                </tr>
                <tr>
                    <td>  {{ trans('translate.status') }}</td>
                    <td> {{ $bookData->status }}</td>
                </tr>
                </tbody>
            </table>

            <div class="clearfix"></div>
            </div>
        </div>

    </div>



@endsection


