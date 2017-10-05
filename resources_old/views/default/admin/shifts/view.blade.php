@extends('default.admin.layouts.master')


@section('head')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-6">                     
                         <button class="btn btn-warning"><span class="fa fa-print"></span> Print </button>
                         <button class="btn btn-warning"><span class="fa fa-file"></span> PDF Preview </button>
                         <button class="btn btn-warning"><span class="fa fa-file"></span> Edit</button>
                         <button class="btn btn-warning"><span class="fa fa-file"></span> Send Pdf to Mail </button> 
                    </div>
                    <div class="col-md-6 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">Dashboard</a></li>
                            <li class="active">User</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view view-table-holder">
            <table class="table table-striped table-bordered table-hover table-responsive">
                    <thead>
                       <tr class="th-bg ">
                           <th colspan="4" class="th_font text-center">
                               Role Iformation
                            </th>
                        </tr>


                   </thead>

                   <tbody>


                       <tr>
                           <td>Role </td>
                           <td> {{ $roleToView->name  }}</td>
                       </tr>
                        <tr>
                           <td> Role Description</td>
                           <td> {{ $roleToView->label }}</td>
                                                   
                       </tr>
                       <tr>

                           <td> Status </td>
                           <td> {{ $roleToView->status }}</td>
                                                     
                       </tr>
                   </tbody>
               </table> 
          
            <div class="clearfix"></div>
        </div>

    </div>



@endsection


