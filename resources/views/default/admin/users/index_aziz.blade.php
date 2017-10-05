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
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ strtoupper($viewType) }}
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <a href="{!! route('user-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.user-create') }}</a>
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
                     <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
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
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                             <th>{{ trans('translate.sl') }}</th>
                                            <th class="text-center">{{ trans('translate.photo') }}</th>
                                            <th class="text-center">{{ trans('translate.name') }}</th>
                                            <th class="text-center">{{ trans('translate.email') }}</th>
                                            <th class="text-center">{{ trans('translate.department') }}</th>
                                            <th class="text-center">{{ trans('translate.designation') }}</th>
                                            <th class="text-center">{{ trans('translate.address') }}</th>
                                            <th class="text-center">{{ trans('translate.phone') }}</th>
                                            <th class="text-center">{{ trans('translate.gender') }}</th>
                                            <th class="text-center">{{ trans('translate.religion') }}</th>
                                            <th class="text-center th_width_100">{{ trans('translate.action') }}</th>

                                        </tr>
                                        </thead>
                                        <tbody>

                                        @set('sl',1)

                                        @if(isset($usersWithPhotos) && !empty($usersWithPhotos))

                                            @foreach($usersWithPhotos as $photo => $user)



                                                    <tr>
                                                    <td>{{$sl++}}</td>

                                                    <td class="text-center">{!!  Html::image('imagecache/dummy/'.$photo) !!}</td>
                                                    {{--<td><span class="glyphicon glyphicon-user fa-man" aria-hidden="true"></span></td>--}}
                                                    <td class="text-center">
                                                        @if(!is_null($user->translate($defaultLocale)))

                                                            {{ $user->translate($locale)? $user->first_name.' '.$user->last_name:$user->translate($defaultLocale)->first_name.' '.$user->translate($defaultLocale)->last_name }}
                                                        @else

                                                            No Name Given in ...@if($locale=='en') English @else  Bangla @endif
                                                        @endif




                                                    </td>

                                                    <td class="text-center">{{ $user->email or 'Not Available'}}</td>
                                                    <td class="text-center">

                                                        @if(!is_null($user->department))

                                                            {{ $user->department->name or 'Not Available'}}
                                                        @else

                                                            No Department Given

                                                        @endif




                                                    </td>
                                                    <td class="text-center">
                                                        @if(!is_null($user->designation))

                                                            {{ $user->designation->name or 'Not Available' }}
                                                        @else
                                                         No Designation Given..............
                                                        @endif

                                                    </td>
                                                    <td class="text-center">
                                                        @if(!is_null($user->translate($defaultLocale)))

                                                            {{ $user->translate($locale)?$user->address:$user->translate($defaultLocale)->address }}
                                                        @else

                                                            No Address Given in ...@if($locale=='en') English @else  Bangla @endif
                                                        @endif

                                                    </td>
                                                    <td class="text-center">{{ $user->phone or 'Not Available' }}</td>

                                                    <td class="text-center">
                                                        @if(!is_null($user->gender) && !is_null($user->gender->translate($defaultLocale)))

                                                            {{ $user->gender->translate($locale)?$user->gender->gender_name:$user->gender->translate($defaultLocale)->gender_name }}
                                                        @else

                                                         No Gender Given..........

                                                        @endif

                                                    </td>
                                                    <td class="text-center">
                                                        @if(!is_null($user->religion))

                                                            {{ $user->religion->name or 'Not Available' }}
                                                        @else

                                                            No Religion Given ..............

                                                        @endif

                                                    </td>
                                                    <td>
                                                        <a class="btn btn-primary btn-xs mrg" data-original-title="{{ trans('translate.view') }}" data-toggle="tooltip" href="{{ route('user-view',[$user->id]) }}">
                                                            <i class="fa fa-check-square-o"></i></a>
                                                        <a class="btn btn-success btn-xs mrg" data-original-title="{{ trans('translate.edit') }}" data-toggle="tooltip" href="{{ route('user-edit-form',[$user->id]) }}"><i class="fa fa-edit"></i></a>

                                                        <a  class="btn btn-danger delete_btn btn-xs mrg" data-original-title="{{ trans('translate.delete') }}" data-toggle="tooltip" href="{{ route('user-delete',[$user->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                    </td>

                                            </tr>


                                        @endforeach
                                    @else

                                            <tr>
                                                <td>
                                                    Sorry !!! No Employess Found........
                                                </td>
                                            </tr>

                                        @endif
                                        </tbody>
                                    </table>
                                    <div class="pagination">{!!   str_replace('/?','?',$users->render() ) !!} </div>
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