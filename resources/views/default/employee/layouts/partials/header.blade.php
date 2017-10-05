<div class="header">
    <!-- Navbar -->
    <div class="navbar navbar-default mega-menu" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="fa fa-bars"></span>
                </button>
                <a class="navbar-brand" href="#">
{{--                    <img src="{{ asset('employee/images/logo.png') }}" class="logo-default" id="logo-header" height="22px" width="86px" alt="Logo">--}}

                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="{{url('profile')}}">
                            Home
                        </a>
                    </li>

                    <li class="dropdown ">
                        <a href="" class="dropdown-toggle" data-toggle="dropdown">
                            Punch Info
                        </a>
                        <ul class="dropdown-menu">
                            <li class="active">
                                <a href="{{ route('punch-insert-form') }}">
                                    Punch
                                </a>
                            </li>
                            <li class="active">
                                <a href="{{ route('my-timesheet') }}">
                                    My Timesheet
                                </a>
                            </li>

                        </ul>
                    </li>
                    <li class="active">
                        <a href="{{url('admin')}}">
                            Admin Panel
                        </a>
                    </li>
                    <li class="dropdown ">
                        <a href="" class="dropdown-toggle" data-toggle="dropdown">
                            Leave
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="{{ route('application-add-form') }}" {{--data-toggle="modal" data-target=".apply_modal"--}}>Apply Leave</a></li>
                            <li><a href="{{ route('employee-leave') }} ">My Leave</a></li>

                        </ul>
                    </li>
                    <!-- End Leave -->
                    <!-- My Account -->
                    <li class="dropdown">
                        <a href="" class="dropdown-toggle" data-toggle="dropdown">
                            My Account
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="" data-toggle="modal" data-target=".change_password_modal" id="change_password_link">Change Password</a></li>
                            <!-- Logout -->
                            <li>
                                <a href="{{ url('auth/signout') }}">
                                    Logout
                                </a>

                            </li>
                            <!-- End Logout -->

                        </ul>
                    </li>
                    <!-- End Leave -->

                </ul>
            </div><!--/navbar-collapse-->
        </div>
    </div>
    <!-- End Navbar -->
</div> <!--header-->