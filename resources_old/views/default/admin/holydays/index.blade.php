
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
                                <a href="{!! route('holyday-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.holyday-create') }}</a>
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
                        <div class="col-sm-12">
                            <div class="box">
                                <div class="box-body  col-sm-12">
                                    <div class="col-sm-4"> {!! monthsList() !!}</div>

                                    <div class="col-sm-8" id="holyday-list">

                                        @if(count($holydays)>0)
                                            <table id="example1" class="table table-bordered table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>{{ trans('translate.sl') }}
                                                        </th>
                                                        <th>{{ trans('sidebar.date') }}</th>
                                                        <th>{{ trans('sidebar.occasion') }}</th>
                                                        <th>{{ trans('sidebar.holiday_type') }}</th>
                                                        <th>{{ trans('translate.status') }}</th>
                                                        <th class="th_width_100">{{ trans('translate.action') }}</th>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                @set('sl',1)
                                                @foreach($holydays as $holyday)
                                                    <tr>
                                                        <td>{{$sl++}}</td>

                                                        <td>{{ $holyday->date or 'Null'}}</td>
                                                        <td>{{ $holyday->occasion or 'Null'}}</td>
                                                        <td>{{ $holyday->holydayType->type  }}</td>
                                                        <td>{{ $holyday->status->name or 'Null' }}</td>
                                                        <td>
         <a class="btn btn-info btn-xs mrg" data-original-title="{{ trans('translate.view') }}" data-toggle="tooltip" href="{{ route('view-holiday', [$holyday->id]) }}">
                                                                <i class="fa fa-check-square-o"></i></a>
                                                            <a class="btn btn-success btn-xs mrg" data-original-title="{{ trans('translate.edit') }}" data-toggle="tooltip" href="{{ route('edit-holiday-form',[$holyday->id]) }}"><i class="fa fa-edit"></i></a>

                                                            <a  class="btn btn-danger btn-xs delete_btn mrg" data-original-title="{{ trans('translate.delete') }}" data-toggle="tooltip" href="{{ route('delete-holiday', [$holyday->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                        </td>

                                                    </tr>
                                                @endforeach

                                                </tbody>
                                                
                                            </table>
                                        @else
                                            No Holydays ..........
                                        @endif
                                    </div>


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

    <script>
        $(document).ready(function(){
            $("#example1").DataTable();
            $('#example2').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": false,
                "ordering": true,
                "info": true,
                "autoWidth": false
            });
        });
    </script>

    <script>
        $(document).ready(function(){
            $('.month').click(function() {
                this.preventDefault;
//                alert($('#year').find('option:selected').val());
                //get month number from each li
                var year = $('#year').find('option:selected').val();
                var month = this.value;

                var host = window.location.origin ;
//alert(host + '/holyday/list/' +year + '/'+ month);
                $.ajax({
                    url: host + '/holyday/list/' +year + '/'+ month,
                    type: "GET", // not POST, laravel won't allow it
                    success: function(data){

                        $data = $(data); // the HTML content your controller has produced
                        console.log($data);
                        $('#holyday-list').html($data);
                    }
                });

            });
        });
    </script>

@endsection
