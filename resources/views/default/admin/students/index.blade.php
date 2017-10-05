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
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span> {{ trans('sidebar.student_list') }}
                    </div>
                    <div class="col-md-6 col-xs-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="fa fa-plus" aria-hidden="true"></span>
                                <a href="{{ route('student-create') }}">
                                        {{ trans('translate.add_student') }}
                                </a></li>
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
                    <button onclick="javascript:window.downloadPdf()" class="btn btn-primary " id="pdf-download" ><span class="fa fa-file"></span> {{ trans('translate.pdf-download') }}</button>
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
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>{{ trans('translate.sl') }}</th>
                                            <th class="text-center">{{ trans('translate.photo') }}</th>
                                            <th class="text-center">{{ trans('translate.name') }}</th>
                                            <th class="text-center">{{ trans('translate.class') }}</th>
                                            <th class="text-center">{{ trans('translate.roll_no') }}</th>
                                            <th class="text-center">{{ trans('translate.department') }}</th>

                                            <th class="text-center">{{ trans('translate.address') }}</th>
                                            <th class="text-center">{{ trans('translate.phone') }}</th>
                                            <th class="text-center">{{ trans('translate.gender') }}</th>
                                            <th class="text-center">{{ trans('translate.religion') }}</th>
                                            <th class="text-center th_width_100">{{ trans('translate.action') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @set('sl',1)

                                        @if(isset($studentsWithPhotos) && !empty($studentsWithPhotos))
                                            @foreach($studentsWithPhotos as $photo => $user)
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

                                                    <td class="text-center">
                                                        @if(!is_null($user->stClass))
                                                            {{ $user->stClass->class_name or 'Not Available'}}
                                                        @else
                                                           No Class Given....
                                                        @endif
                                                    </td>

                                                    <td class="text-center">{{ $user->roll_no or 'Not Available'}}</td>

                                                    <td class="text-center">

                                                        @if(!is_null($user->department))

                                                            {{ $user->department->name or 'Not Available'}}
                                                        @else
                                                           No Department Given....
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
                                                            No Religion Given.....
                                                        @endif

                                                    </td>
                                                    <td>
                                                        <a class="btn btn-info btn-xs mrg" data-original-title="{{ trans('translate.view') }}" data-toggle="tooltip" href="{{ route('student-view',[$user->id]) }}">
                                                            <i class="fa fa-check-square-o"></i></a>
                                                        <a class="btn btn-success btn-xs mrg" data-original-title="{{ trans('translate.edit') }}" data-toggle="tooltip" href="{{ route('student-edit-form',[$user->id]) }}"><i class="fa fa-edit"></i></a>

                                                        <a  class="btn btn-danger delete_btn btn-xs mrg" data-original-title="{{ trans('translate.delete') }}" data-toggle="tooltip" href="{{ route('student-delete',[$user->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                    </td>

                                            </tr>
                                            @endforeach

                                        @else
                                            <tr>
                                               <td>
                                                   Sorry !!! No Students Found........
                                               </td>
                                            </tr>


                                        @endif
                                        </tbody>
                                        <tfoot>

                                        </tfoot>
                                    </table>
                                    <div class="pagination">{!!   str_replace('/?','?',$studentList->render() ) !!} </div>
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
    <script>

//        function asadaf() {
//
//        }
//        function downloadPdf() {
////            var htmltext =
////            var htmltext = $("document").html();
//            var doc = new jsPDF();
////    $(".pagination").append(htmltext);
//            doc.fromHTML(htmltext, 15, 15, {
//                'width': 170,
//            },asadaf);
//            doc.save('test.pdf');
////            console.log($("#example1").html());
//        }

    </script>


@endsection
