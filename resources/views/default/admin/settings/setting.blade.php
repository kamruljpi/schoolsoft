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
         <div class="inner-view">
			<div class="row">
				<div class="col-md-12">
						@set('displayedMenus',displayableMenus($menus,0))
						@foreach($displayedMenus as $displayedMenu)
							<div class="col-sm-3 menu_box_class">
								<div class="menu_box_icon">
									<i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))
                        	{{ $displayedMenu->icon_name }}
                        @else
                          	fa fa-users
                        @endif"></i> 
								</div>
								<div class="menu_box_content">
@if(isset($displayedMenu->translate('en')->menu_name)  && !empty($displayedMenu->translate('en')->menu_name))
  <a href="{!! Route::has($displayedMenu->route_name)?$displayedMenu->route_name:'#' !!}"> {{ $displayedMenu->translate('en')->menu_name }}</a>
@endif
								</div>
							</div>
						@endforeach
				</div>
			</div>
            <div class="clearfix"></div>          
        </div>
    </div>
@endsection