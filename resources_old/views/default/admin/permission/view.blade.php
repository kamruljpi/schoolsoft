@extends('default.admin.layouts.master')


@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid" style="min-height: 1215px;">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-6">
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> Print </button>
                        <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> Print Preview </button>

                        <button class="btn btn-primary"><span class="fa fa-file"></span> Edit</button>
                    </div>
                    <div class="col-md-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">Dashboard</a></li>
                            <li class="active">Permission</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="row margin-top-area">
            <div class="col-md-12 view">
               
               <table class="table table-bordered table-hover table-responsive view-table-holder">
                    <thead>
                       <tr class="th-bg ">
                           <th colspan="4" class="text-center">
                               <div class="view-picture">
                               <h3>Permission Information</h3>
                               </div>
                            </th>
                        </tr>


                   </thead>

                   <tbody>


                       <tr>
                           <td>Permission </td>
                           <td> {{ $permissionToView->name  }}</td>
                       </tr>
                        <tr>
                           <td> Description</td>
                           <td> {{ $permissionToView->label }}</td>
                                                   
                       </tr>
                       <tr>

                           <td> Status </td>
                           <td> {{ $permissionToView->status }}</td>
                                                     
                       </tr>
                   </tbody>
               </table> 
            </div>
            <div class="clearfix"></div>
        </div>

    </div>



@endsection


