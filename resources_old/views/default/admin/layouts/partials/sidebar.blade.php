@inject('menus','Erp\Models\Menu\Menu')

<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                {!!  Html::image('imagecache/large/'.request()->user()->photos->last()->name, 'User Image',['class'=>'img-circle']) !!}
            </div>
            <div class="pull-left info">
                <p>{{ request()->user()->first_name.' '.request()->user()->last_name }}</p>
                <a href="{!! url('#') !!}"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>


        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class=" ">
                <a href="{!! route('admin') !!}">
                    <i class="fa fa-dashboard"></i> <span>{{ trans('sidebar.dashboard') }}</span>
                </a>
            </li>
            <li class="treeview">
            <li><a href="{!! route('menu-list') !!}"><i class="fa fa-users"></i> <span>{{ trans('sidebar.menu') }}</span></a></li>
            </li>
          {{--  <li class="treeview">
                <li><a href="{!! route('status-list') !!}"><i class="fa fa-users"></i> <span>{{ trans('sidebar.status') }}</span></a></li>
            </li>--}}
           {{-- <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.roles') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('role-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.role-list') }}</a></li>
                    <li class="active"><a href="{!! route('role-assign-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.role-assign') }}</a></li>
                    <li class="active"><a href="{!! route('assign-permission-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.set-permission') }}</a></li>
                </ul>
            </li>--}}
          {{--  <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.permissions') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! Route::has('permission-list')?route('permission-list'):'#' !!}"><i class="fa fa-users"></i> {{ trans('sidebar.permission-list') }}</a></li>
                    <li class="{{ request()->is('permission/assign') ? 'current' : '' }}"><a href="{!! Route::has('permission-assign-form')?route('permission-assign-form'):'#' !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.permission-assign') }}</a></li>

                </ul>
            </li>--}}
           {{-- <li class="treeview">
                <li><a href="{!! route('admin-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.admins') }}</a></li>
            </li>--}}
            {{--<li class="treeview">
                    <li><a href="{!! route('user-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar.users') }}</span> </a></li>
            </li>
            <li class="treeview">
                <li><a href="{!! route('student-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar.student-list') }}</span> </a></li>
            </li>
            <li class="treeview">
                <li><a href="{!! route('teacher-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar.teacher-list') }}</span> </a></li>
            </li>
            <li class="treeview">
                <li><a href="{!! route('guardian-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar.guardian-list') }}</span> </a></li>
            </li>--}}
           {{-- <li class="treeview">
                <li><a href="{!! route('gender-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar.gender-list') }}</span> </a></li>
            </li>
            <li class="treeview">
                <li><a href="{!! route('religion-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar.religion-list') }}</span> </a></li>
            </li>--}}

           {{-- <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.cgroups') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! url('cgroup/list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.cgroup-list') }}</a></li>
                    <li class="active"><a href="{!! url('cgroup/add') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.cgroup-create') }}</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.company') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! url('company/list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.company-list') }}</a></li>
                    <li class="active"><a href="{!! url('company/add') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.company-create') }}</a></li>
                </ul>
            </li>--}}
           {{-- <li class="treeview">
                <li><a href="{!! route('department-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar.department-list') }}</span></a></li>
            </li>--}}
            {{--<li class="treeview">
                <li><a href="{!! route('building-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar_aziz.building-list') }}</span></a></li>
            </li>--}}
           {{-- <li class="treeview">
                <li><a href="{!! route('floor-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar_aziz.floor-list') }}</span></a></li>
            </li>--}}
            {{--<li class="treeview">
                <li><a href="{!! route('room-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar_aziz.room-list') }}</span></a></li>
            </li>--}}
            {{--<li class="treeview">
                <li><a href="{!! route('class-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar_aziz.class-list') }}</span></a></li>
            </li>--}}
           {{-- <li class="treeview">
                <li><a href="{!! route('section-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar.section-list') }}</span></a></li>
            </li>--}}
            {{--<li class="treeview">
                <li><a href="{!! route('subject-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar_aziz.subject-list') }}</span></a></li>
            </li>--}}
            {{--<li class="treeview">
                <li><a href="{!! route('routine-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar_aziz.routine-list') }}</span></a></li>
            </li>--}}
           {{-- <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.marks') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('mark-type-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.marks-type-list') }}</a></li>
                    <li><a href="{!! route('create-marks-form') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.create-marks-form') }}</a></li>
                    <li><a href="{!! route('student-marks-form') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.student-marks') }}</a></li>
                </ul>
            </li>--}}
            {{--<li class="treeview">
                <li><a href="{!! route('designation-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar.designation-list') }}</span></a></li>
            </li>--}}
           {{-- <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar_aziz.examination') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('examination-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.examination-list') }}</a></li>
                    <li><a href="{!! route('examinationSchedule-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.examinationSchedule-list') }}</a></li>
                </ul>
            </li>--}}
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar_aziz.location') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('country-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.country-list') }}</a></li>
                    <li><a href="{!! route('division-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.division-list') }}</a></li>
                    <li><a href="{!! route('district-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.district-list') }}</a></li>
                </ul>
            </li>
           {{-- <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.shift') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('shift-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.shift-list') }}</a></li>
                    <li class="active"><a href="{!! route('assign-shift-dept-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.assign-shift-department') }}</a></li>
                </ul>
            </li>--}}
           {{-- <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.punch') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('punch-insert-form') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.punch-insert') }}</a></li>

                </ul>
            </li>--}}
           {{-- <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.attendance') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('monthly-device-attendance') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.monthly-device-attendance') }}</a></li>
                    <li><a href="{!! route('student-attendance-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.student-attendance-list') }}</a></li>

                </ul>
            </li>--}}
           {{-- <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.result') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('result-system-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.result-system-list') }}</a></li>

                </ul>
            </li>--}}

          {{--  @can('Hello')

                <li><a href="{!! route('result-system-list') !!}"><i class="fa fa-users"></i> Access Test</a></li>
            @endcan--}}
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar_aziz.message') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('message-add-form') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.compose-message') }}</a></li>
                    <li><a href="{!! route('message-sent') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.sent-message') }}</a></li>
                    <li><a href="{!! route('message-inbox') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.inbox-message') }}</a></li>
                    <li><a href="{!! route('message-trash') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.trash-message') }}</a></li>
                </ul>
            </li>
            <li class="treeview">
                <li><a href="{!! route('notice-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar_aziz.notice-list') }}</span> </a></li>
            </li>
            <li class="treeview">
            <li><a href="{!! route('event-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar_aziz.event-list') }}</span> </a></li>
            </li>
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar_aziz.accounts') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('account-type-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.account-type-list') }}</a></li>
                    <li><a href="{!! route('amount-type-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.amount-type-list') }}</a></li>
                    <li><a href="{!! route('amount-category-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.amount-category-list') }}</a></li>
                    <li><a href="{!! route('account-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.account-list') }}</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.report') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('your-timesheet') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.your-timesheet-report') }}</a></li>
                    <li><a href="{!! route('employee-salary') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.employee-salary-report') }}</a></li>
                    <li><a href="{!! route('report-student-id-card') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.student-id-card-report') }}</a></li>
                    <li><a href="{!! route('report-student-admit-card') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.student-admit-card-report') }}</a></li>
                    <li><a href="{!! route('report-testimonial') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.testimonial-report') }}</a></li>
                    <li><a href="{!! route('report-tc') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.tc-report') }}</a></li>
                    <li><a href="{!! route('report-clearance') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.clearance-report') }}</a></li>
                    <li><a href="{!! route('report-certification') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.certification-report') }}</a></li>
                    <li><a href="{!! route('account-report') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.account-report') }}</a></li>
                    <li><a href="{!! route('general-report-page') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.general-report') }}</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.salary-settings') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('salary-type-create-form') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.create-salary-type') }}</a></li>
                    <li><a href="{!! route('salary-rules-create-form') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.create-salary-rules') }}</a></li>
                    <li><a href="{!! route('overtime-rules-create-form') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.create-overtime-rules') }}</a></li>
                    <li><a href="{!! route('cut-rules-create-form') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.create-cut-rules') }}</a></li>
                    <li><a href="{!! route('bonus-rules-create-form') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.create-bonus-rules') }}</a></li>
                    <li><a href="{!! route('salary-type-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.salary-type-list') }}</a></li>
                    <li><a href="{!! route('salary-allowance-rules-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.allowance-list') }}</a></li>
                    {{--<li><a href="{!! route('salary-overtime-rules-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.overtime-list') }}</a></li>
                    <li><a href="{!! route('salary-cut-rules-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.salary-cut-list') }}</a></li>
                    <li><a href="{!! route('salary-bonus-rules-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.bonus-list') }}</a></li>
--}}                </ul>
            </li>
            <li class="treeview">
                <li><a href="{!! route('form-setting-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar.form-settings-list') }}</span> </a></li>
            </li>
            <li class="treeview">
                <li><a href="{!! route('leave-list') !!}"><i class="fa fa-users"></i><span>{{ trans('sidebar.leave-list') }}</span> </a></li>
            </li>

            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.leave-application') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('application-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.application-list') }}</a></li>

                </ul>
            </li>

            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar.holydays') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('holydaytype-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.holydaytype-list') }}</a></li>
                    <li><a href="{!! route('holyday-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar.holyday-list') }}</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="{!! url('#') !!}">
                    <i class="fa fa-user"></i> <span>{{ trans('sidebar_aziz.library') }}</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{!! route('author-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.author-list') }}</a></li>
                    <li><a href="{!! route('rack-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.rack-list') }}</a></li>
                    <li><a href="{!! route('book-category-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.book-category-list') }}</a></li>
                    <li><a href="{!! route('book-list') !!}"><i class="fa fa-users"></i> {{ trans('sidebar_aziz.book-list') }}</a></li>
                </ul>
            </li>
                @set('displayedMenus',displayableMenus($menus))
                @foreach($displayedMenus as $displayedMenu)
                        @set('displayedChildMenus',displayableMenus($menus,$displayedMenu->id))

                    @if(isset($displayedChildMenus)  && count($displayedChildMenus) > 0)
                        <li class="treeview">
                    @else
                        <li>
                    @endif
                         <a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}"><i class="fa fa-users"></i><span>{{ $displayedMenu->translate('en')->menu_name }}</span>
                            @if(isset($displayedChildMenus)  && count($displayedChildMenus) > 0)
                                 <i class="fa fa-angle-left pull-right"></i>
                            @endif
                         </a>
                         @if(isset($displayedChildMenus) && count($displayedChildMenus) > 0)
                             <ul class="treeview-menu">
                                 @foreach($displayedChildMenus as $displayedchildMenu)
                                     <li><a href="{!! Route::has($displayedchildMenu->route_name)? route($displayedchildMenu->route_name):'#' !!}"><i class="fa fa-users"></i> {{ $displayedchildMenu->translate('en')->menu_name }}</a></li>
                                 @endforeach
                            </ul>
                         @endif
                        </li>
                    {{--@set('displayedChildMenus','')--}}
                @endforeach
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
