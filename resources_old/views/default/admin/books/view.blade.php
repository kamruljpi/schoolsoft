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
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> Print </button>
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> Print Preview </button>
                        <button class="btn btn-primary"><span class="fa fa-file"></span> Edit</button>
                    </div>
                    <div class="col-md-5 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">Dashboard</a></li>
                            <li class="active">Book</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view view-table-holder ">
            <table class="table table-bordered table-hover table-striped table-responsive ">
                <thead>
                <tr class="th-bg ">
                    <th colspan="4" class="text-center th_font">
                        Book Information
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="th_width_150">Book Category </td>
                    <td>  {{ $bookData->translate($locale)? $bookData->bookCategory->book_category_name:$bookData->translate($defaultLocale)->bookCategory->book_category_name }}</td>
                </tr>
                <tr>
                    <td>Author </td>
                    <td>  {{ $bookData->translate($locale)? $bookData->bookAuthor->author_name:$bookData->translate($defaultLocale)->bookAuthor->author_name }}</td>
                </tr>
                <tr>
                    <td>Book Name </td>
                    <td>  {{ $bookData->translate($locale)? $bookData->book_name:$bookData->translate($defaultLocale)->book_name }}</td>
                </tr>
                <tr>
                    <td>Subject Code </td>
                    <td> {{ $bookData->subject_code }}</td>
                </tr>
                <tr>
                    <td>Book Price (tk) </td>
                    <td> {{ number_format($bookData->book_price, 2)}}</td>
                </tr>
                <tr>
                    <td>Quantity </td>
                    <td> {{ $bookData->quantity }}</td>
                </tr>
                <tr>
                    <td>Rack No </td>
                    <td> {{ $bookData->rack_no }}</td>
                </tr>
                <tr>
                    <td> Status</td>
                    <td> {{ $bookData->status }}</td>
                </tr>
                </tbody>
            </table>

            <div class="clearfix"></div>
        </div>

    </div>



@endsection


