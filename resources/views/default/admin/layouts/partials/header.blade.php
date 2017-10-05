<header class="main-header">

    <!-- Logo -->
    <a href="{!! url('#') !!}" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>{{ trans('sidebar.e') }}</b>{{ trans('sidebar.rp') }}</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>{{ trans('sidebar.admin') }}</b>{{ trans('sidebar.sms') }}</span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="{!! url('#') !!}" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">{{ trans('sidebar.toggle_navigation') }}</span>
        </a>
        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">

                {{--for choosing language start--}}
                <li class="dropdown user user-menu">
                    <a href="{!! url('#') !!}" class="dropdown-toggle" data-toggle="dropdown">

                        <span class="hidden-xs">{{ \Session::get('language')?\Session::get('language'):'Choose language' }}</span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                       {{-- <li class="user-header">
                            <img src="{!! asset('theme_components/admin/dist/img/user2-160x160.jpg') !!}" class="img-circle" alt="User Image">
                            <p>
                                Alexander Pierce - Web Developer
                                <small>Member since Nov. 2012</small>
                            </p>
                        </li>--}}
                        <!-- Languages start -->
                        <li class="user-body">
                            <div class="col-xs-4 text-center">
                                    {{--<a href="{!! url('lang/bn') !!}">{{ trans('language.bangla') }}</a>--}}
                                <a href="{!! route('choose-lang',['bn']) !!}">{{ trans('language.bangla') }}</a>
                            </div>
                        </li>
                        <li class="user-body">
                            <div class="col-xs-4 text-center">
                                {{--<a href="{!! url('lang/en') !!}">{{ trans('language.english') }}</a>--}}
                                <a href="{!! route('choose-lang',['en']) !!}">{{ trans('language.english') }}</a>
                            </div>
                        </li>
                        <!-- Languages end -->

                    </ul>
                </li>

                {{--for choosign language end--}}

                <!-- User Account: style can be found in dropdown.less -->
                <li class="dropdown user user-menu">
                    <a href="{!! url('#') !!}" class="dropdown-toggle" data-toggle="dropdown">

                        @if(\Auth::check())
                            @set('authUser',request()->user())
                        @endif

                        @if( isset($authUser)  && !$authUser->photos->isEmpty())
                            {!!  Html::image('imagecache/large/'.$authUser->photos->last()->name, 'User Image',['class'=>'user-image']) !!}
                        @endif

                            @if( isset($authUser))

                                <span class="hidden-xs">

                                {{ $authUser->first_name?$authUser->first_name:'not available'}}
                                    {{$authUser->last_name?$authUser->last_name:'not available' }}

                                </span>
                            @endif




                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header">
                            @if( isset($authUser) && !$authUser->photos->isEmpty())
                                {!!  Html::image('imagecache/large/'.$authUser->photos->last()->name, 'User Image',['class'=>'user-image']) !!}
                            @endif
                            <p>
                                @if( isset($authUser))



                                    {{ $authUser->first_name?$authUser->first_name:'not available'}}
                                    {{$authUser->last_name?$authUser->last_name:'not available' }} -

                                @endif
                                @if(isset($authUser) && !is_null($authUser->designation))

                                    {{  $authUser->designation->name  }}
                                @endif

                                <small>Member since Nov. 2012</small>
                            </p>
                        </li>

                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="{{url('profile')}}" class="btn btn-default btn-flat">Profile</a>
                            </div>
                            <div class="pull-right">
                                <a href="{{ route('log-out') }}" class="btn btn-default btn-flat">Sign out</a>
                            </div>
                        </li>
                    </ul>
                </li>
                <!-- Control Sidebar Toggle Button -->
                <li>
                    <a href="{!! url('#') !!}" data-toggle="control-sidebar" class="layout-setting"><i class="fa fa-gears"></i></a>
                </li>
            </ul>
        </div>

    </nav>
</header>