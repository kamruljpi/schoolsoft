@extends('default.admin.layouts.master')


@section('head')
    {!! Html::style('css/styles.css') !!}
@endsection



@section('content')
    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-7">     
                      <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print_preview') }} </button>
                    <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                    </div>
                    <div class="col-md-5 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('sidebar.dashboard') }}</a></li>
                            <li class="active">{{ trans('sidebar.admins') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->

        <div class="inner-view view-table-holder">
              <table class="table table-bordered table-hover table-responsive ">
                    <thead>
                       <tr class="th-bg ">
                           <th colspan="4" class="text-center"> 
                               <div class="view-picture">
                                <span class="glyphicon glyphicon-user fa-man img-circle" aria-hidden="true"></span>
                               </div>
                            </th> 
                        </tr>
                         <tr class="th-bg">
                           <th colspan="4" class="text-center">  
                               <div class="view-name">{{ $adminProfile->translate($locale)? $adminProfile->first_name.' '.$adminProfile->last_name:$adminProfile->translate($defaultLocale)->first_name.' '.$adminProfile->translate($defaultLocale)->last_name }}</div>
                           </th> 
                        </tr>
                        <tr class="th-bg">
                           <th colspan="4" class="text-center">{{ $adminProfile->email }}</th> 
                        </tr>
                          
                   </thead>

                   <tbody>
                        <tr>
                           <td colspan="4">
                             <h3 class="nomargin"> 
                             {{ trans('sidebar.personal_information') }}
                               
                             </h3>
                           </td>                                                  
                       </tr>

                       <tr>
                           <td> {{ trans('translate.department') }}</td>
                           <td> {{ $adminProfile->department->name  }}</td>
                       </tr>
                        <tr>
                           <td>  {{ trans('translate.address') }}</td>
                           <td> {{ $adminProfile->translate($locale)?$adminProfile->translate($locale)->address:$adminProfile->translate($defaultLocale)->address }}</td>
                                                   
                       </tr>
                       <tr>

                           <td>  {{ trans('translate.gender') }}</td>
                           <td> {{ $adminProfile->gender->translate($locale)?$adminProfile->gender->gender_name:$adminProfile->gender->translate($defaultLocale)->gender_name  }}</td>
                                                     
                       </tr>
                       <tr>
                           <td>  {{ trans('translate.religion') }}</td>
                           <td> {{ $adminProfile->religion->name }}</td>
                       </tr>
                       <tr>
                           <td>  {{ trans('translate.phone') }}</td>
                           <td> {{ $adminProfile->phone }}</td>                         
                                                     
                       </tr>

                       <tr>
                           <td>  {{ trans('translate.user_name') }}</td>
                           <td>   {{ $adminProfile->username }}</td>                         
                                                     
                       </tr>
                       

                   </tbody>
               </table> 
        
            <div class="clearfix"></div>
        </div>

    </div>



@endsection


