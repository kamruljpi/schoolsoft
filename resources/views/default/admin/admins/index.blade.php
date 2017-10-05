@extends('default.admin.layouts.master')
@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection
@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <div class="col-md-7">
                       
                    </div>
                    <div class="col-md-5 view">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('translate.dashboard') }}</a></li>
                            <li class="active">{{ trans('translate.view-settings') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
         <div class="dashboard_view">
            <div class="row">
              
                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,548))
                        @foreach($displayedMenus as $displayedMenu)
@if (Route::has($displayedMenu->route_name))
                          <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            
                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <div class="menu_box_class">
                                    <div class="menu_box_icon">
                                        <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                                {{ $displayedMenu->icon_name }}
                                        @else
                                        fa fa-users
                                    @endif"></i> 
                                </div>
                                    <div class="menu_box_content">
                                            @if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
                                             {{ $displayedMenu->translate('en')->menu_name }}
                                            @endif
                                    </div>

                                </div>
                            </div>
                            </a>
@endif
                        @endforeach

                            @set('displayedMenus',"")
                            @set('displayedMenus',displayableMenus($menus,549))
                            @foreach($displayedMenus as $displayedMenu)
                            @if (Route::has($displayedMenu->route_name))
                            <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                                <div class="col-md-3 col-sm-6 col-xs-12">
                                 <div class="menu_box_class">
                                    <div class="menu_box_icon">
                                        <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                                {{ $displayedMenu->icon_name }}
                            @else
                                fa fa-users
                            @endif"></i> 
                                    </div>
                                    <div class="menu_box_content">
    @if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
       {{ $displayedMenu->translate('en')->menu_name }}
    @endif
                                    </div>
                                    </div>
                                </div>
                                </a>
                                @endif
                            @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,550))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                               <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,551))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,206))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,118))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                             <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,262))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                             <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,532))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                             <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,531))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                             <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,91))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                             <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,495))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                             <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,496))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                             <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,570))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                             <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,542))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                             <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,560))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                             <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,381))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                             <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,561))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                             <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,563))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                             <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,564))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                             <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,232))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                             <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,565))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                             <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,553))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                             <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                        @set('displayedMenus',"")
                        @set('displayedMenus',displayableMenus($menus,122))
                        @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                        <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                             <div class="menu_box_class">
                                <div class="menu_box_icon">
                                    <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                            {{ $displayedMenu->icon_name }}
                        @else
                            fa fa-users
                        @endif"></i> 
                                </div>
                                <div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
   {{ $displayedMenu->translate('en')->menu_name }}
@endif
                                </div>
                                </div>
                            </div>
                            </a>
                            @endif
                        @endforeach

                    @set('displayedMenus',"")
                    @set('displayedMenus',displayableMenus($menus,562))
                    @foreach($displayedMenus as $displayedMenu)
                        @if (Route::has($displayedMenu->route_name))
                            <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}">
                                <div class="col-md-3 col-sm-6 col-xs-12">
                                 <div class="menu_box_class">
                                    <div class="menu_box_icon">
                                        <i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                                        {{ $displayedMenu->icon_name }}
                                        @else
                                                fa fa-users
                                            @endif"></i>
                                    </div>
                                    <div class="menu_box_content">
                                        @if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
                                            {{ $displayedMenu->translate('en')->menu_name }}
                                        @endif
                                    </div>
                                    </div>
                                </div>
                            </a>
                        @endif
                    @endforeach
               
            </div>
            <div class="clearfix"></div>          
        </div>
    </div>
@endsection