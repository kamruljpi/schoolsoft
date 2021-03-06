@inject('createMenuSearchForm','Erp\Forms\MenuSearchForm')
@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')

    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6 col-xs-6">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>
                        {{ trans('sidebar.menu_list') }}
                        {{-- {{ strtoupper($viewType) }} --}}
                    </div>
                    <div class="col-md-6 col-xs-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <a href="{!! route('menu-create-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.menu-create') }}</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-box">
            <div class="row">
                <div id="datatable">
                    <div class="row last">
                        <div class="col-sm-12 col-xs-12">
                            <div class="box">
                                <div class="box-body auto_scroll">
                                    @if(session()->has('success'))
                                        <div class="alert alert-success">
                                            <ul>

                                                <li>{{ session()->get('success') }}</li>

                                            </ul>
                                        </div>
                                    @endif
                                    <table id="example1" class="table table-bordered table-striped table-responsive">
                                        <thead>
                                        <tr>
                                            <th>{{ trans('translate.sl') }}
                                            </th>
                                            <th>{{ trans('sidebar.menu') }}
                                            </th>
                                            <th>{{ trans('sidebar.route_name') }}
                                            </th>
                                            <th>{{ trans('sidebar.parent') }}</th>
                                            <th>{{ trans('sidebar.accessable') }} </th>
                                            <th> {{ trans('sidebar.displayable') }}</th>
                                            <th>{{ trans('translate.status') }}
                                            </th>
                                            <th class="text-center th_width_80">{{ trans('translate.action') }}
                                            </th>

                                        </tr>
                                        </thead>
                                        <tbody>

                                        @set('sl',1)
                                        @foreach($menus as  $menu)


                                        <tr>
                                                <td>{{$sl++}}</td>


                                                <td>
                                                    {{ $menu->translate($locale)? $menu->menu_name : 'Not Avaliable' }}
                                                </td>

                                                <td>{{ $menu->route_name or 'Not Available'}}</td>
                                                <td>{{ $menu->parent_id }}</td>
                                                <td>{{ $menu->is_common_access?'yes':'no' }}</td>
                                                <td>{{ $menu->is_displayable?'yes':'no' }}</td>
                                                <td>
                                                    @if(isset($menu->status) && $menu->status == true)
                                                        {{ 'Active' }}
                                                    @else
                                                        {{ 'Inactive' }}
                                                    @endif
                                                </td>

                                                <td>

                                                <a class="btn btn-success btn-xs mrg" data-original-title="{{ trans('translate.edit') }}" data-toggle="tooltip" href="{{ route('menu-edit-form',[$menu->id]) }}"><i class="fa fa-edit"></i></a>

                                                <a  class="btn btn-danger delete_btn btn-xs mrg" data-original-title="{{ trans('translate.delete') }}" data-toggle="tooltip" href="{{ route('menu-delete',[$menu->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                </td>

                                        </tr>
                                        @endforeach

                                        </tbody>
                                    </table>
                                        <div class="pagination">
                                            {!!   str_replace('/?','?',$menus->render() ) !!}</div>
                                        {!! formFields($createMenuSearchForm) !!}
                                        <br>
                                        {!! Form::submit('Search',['class'=>'btn btn-primary','id'=>'menu-search-btn','readonly'=>'readonly']) !!}
                                        
                                        <div id="menu-search-div">

                                        </div>
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

    <script type="text/javascript">
        $(document).ready(function(){
            $('#menu-search-btn').click(function () {
                var menuName = $('#menu_name').val();

                $.ajax({
                    url: '{{ route("menu-search") }}',
                    data:{
                        'menuName' : menuName
                    },
                    type: "GET", // not POST, laravel won't allow it
                    success: function(data){
                        /*alert(data); */
                        $data = $(data); // the HTML content your controller has produced

                        $('#menu-search-div').html($data);
                    }
                });
            });
        });
    </script>

@endsection