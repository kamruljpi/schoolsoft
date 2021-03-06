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
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ trans('sidebar.book_list') }}
                    </div>
                    <div class="col-md-6 col-xs-7 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <a href="{!! route('book-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar_aziz.book-create') }}</a>
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
                                <div class="box-body auto_scroll">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th class="th_width_80">{{ trans('translate.sl') }}</th>
                                            <th>Category</th>
                                            <th>{{ trans('sidebar.author') }}</th>
                                            <th>{{ trans('translate.name') }}</th>
                                        <th>   
                                            {{ trans('translate.subject_code') }}</th>
                                            <th>
                                            {{ trans('sidebar.price') }}</th>
                                            <th>{{ trans('sidebar.quantity') }}</th>
                                            <th>{{ trans('sidebar.rack_no') }}</th>
                                            <th>{{ trans('translate.status') }}</th>
                                            <th class="text-center th_width_100">{{ trans('translate.action') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        @set('sl',1)
                                        @foreach($bookList as $book)


                                            <tr>
                                                <td>{{$sl++}}</td>
                                                <td>
                                                    @if(!is_null($book->bookCategory) && !is_null($book->bookCategory->translate($defaultLocale)))
                                                        {{ $book->bookCategory->translate($locale)?$book->bookCategory->book_category_name:$book->bookCategory->translate($defaultLocale)->book_category_name }}

                                                    @else
                                                        No Book Category Given in ...@if($locale=='en') English @else  Bangla @endif
                                                    @endif

                                                </td>
                                                <td>
                                                    @if(!is_null($book->bookCategory) && !is_null($book->bookCategory->translate($defaultLocale)))
                                                        {{ $book->bookAuthor->translate($locale)?$book->bookAuthor->author_name:$book->bookAuthor->translate($defaultLocale)->author_name }}
                                                    @else
                                                        No Author Given in ...@if($locale=='en') English @else  Bangla @endif
                                                    @endif
                                                </td>
                                                <td>
                                                    @if(!is_null($book->translate($defaultLocale)))
                                                        {{ $book->translate($locale)?$book->book_name:$book->translate($defaultLocale)->book_name }}
                                                    @else
                                                        No Book Given in ...@if($locale=='en') English @else  Bangla @endif
                                                    @endif
                                                </td>
                                                <td>
                                                    {{ $book->subject_code or 'Null'}}
                                                </td>
                                                <td>
                                                    {{ number_format($book->book_price, 2)}}
                                                </td>
                                                <td>{{ $book->quantity or 'Null'}}</td>
                                                <td>{{ $book->rack_no or 'Null'}}</td>
                                                <td>{{ $book->status or 'Null'}}</td>
                                                <td>
                                                    <a class="btn btn-primary btn-xs mrg" data-original-title="{{ trans('translate.view') }}" data-toggle="tooltip" href="{{ route('book-view',[$book->id]) }}">
                                                        <i class="fa fa-check-square-o"></i></a>
                                                    <a class="btn btn-success btn-xs mrg" data-original-title="{{ trans('translate.edit') }}" data-toggle="tooltip" href="{{ route('book-edit-form',[$book->id]) }}"><i class="fa fa-edit"></i></a>

                                                    <a  class="btn btn-danger btn-xs delete_btn mrg" data-original-title="{{ trans('translate.delete') }}" data-toggle="tooltip" href="{{ route('book-delete',[$book->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                </td>

                                            </tr>
                                        @endforeach

                                        </tbody>
                                    </table>
                                    <div class="pagination">{!!   str_replace('/?','?',$bookList->render() ) !!} </div>
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