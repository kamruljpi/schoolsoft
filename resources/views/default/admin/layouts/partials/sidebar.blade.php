@inject('menus','Erp\Models\Menu\Menu')
@set('validUser',request()->user())
{{--<aside class="main-sidebar">--}}
    {{--<!-- sidebar: style can be found in sidebar.less -->--}}
    {{--<section class="sidebar">--}}
        {{--<!-- Sidebar user panel -->--}}
        {{--<div class="user-panel">--}}
            {{--<div class="pull-left image">--}}
                {{--@if( isset($validUser) && !$validUser->photos->isEmpty())--}}
                    {{--{!!  Html::image('imagecache/large/'.$validUser->photos->last()->name, 'User Image',['class'=>'user-image']) !!}--}}
                {{--@endif--}}
            {{--</div>--}}
            {{--<div class="pull-left info">--}}
                {{--<p>--}}
                    {{--@if( isset($validUser))--}}
                        {{--{{ $validUser->first_name?$validUser->first_name:'not available'}}--}}
                        {{--{{$validUser->last_name?$validUser->last_name:'not available' }} ---}}
                    {{--@endif--}}
                {{--</p>--}}
                {{--<a href="{!! url('#') !!}"><i class="fa fa-circle text-success"></i> Online</a>--}}
            {{--</div>--}}
        {{--</div>--}}
        {{--<!-- sidebar menu: : style can be found in sidebar.less -->--}}
        {{--<ul class="sidebar-menu">--}}
            {{--<li class="header">{{ trans('sidebar.main_navigation') }}</li>--}}
                {{--@set('displayedMenus',displayableMenus($menus))--}}
                {{--@foreach($displayedMenus as $displayedMenu)--}}
                        {{--@set('displayedChildMenus',displayableMenus($menus,$displayedMenu->id))--}}
                    {{--@if(isset($displayedChildMenus)  && count($displayedChildMenus) > 0)--}}
                        {{--<li class="{{ $displayedMenu->id }} parent_menu_class treeview {!! Route::has($displayedMenu->route_name)?$displayedMenu->route_name:'#' !!}">--}}
                    {{--@else--}}
                        {{--<li class="{{ $displayedMenu->id }} {!! Route::has($displayedMenu->route_name)?$displayedMenu->route_name:'#' !!}">--}}
                    {{--@endif--}}
                         {{--<a href="{!! Route::has($displayedMenu->route_name)?route($displayedMenu->route_name):'#' !!}"><i class="@if(isset($displayedMenu->icon_name)  && !empty($displayedMenu->icon_name))--}}
                        	{{--{{ $displayedMenu->icon_name }}--}}
                        {{--@else--}}
                          	{{--fa fa-users--}}
                        {{--@endif"></i><span>{{ $displayedMenu->translate('en')->menu_name }}</span>--}}
                            {{--@if(isset($displayedChildMenus)  && count($displayedChildMenus) > 0)--}}
                                 {{--<i class="fa fa-angle-left pull-right"></i>--}}
                            {{--@endif--}}
                         {{--</a>--}}
                         {{--@if(isset($displayedChildMenus) && count($displayedChildMenus) > 0)--}}
                             {{--<ul class="treeview-menu">--}}
                                 {{--@foreach($displayedChildMenus as $displayedchildMenu)--}}
                                     {{--@set('displayedSubChildMenus',displayableMenus($menus,$displayedchildMenu->id))--}}
                                     {{--@if(isset($displayedSubChildMenus)  && count($displayedSubChildMenus) > 0)--}}
                                         {{--<li class="{{ $displayedchildMenu->id }} parent_menu_class treeview {!! Route::has($displayedchildMenu->route_name)?$displayedchildMenu->route_name:'#' !!}">--}}
                                             {{--<a href="{!! Route::has($displayedchildMenu->route_name)?route($displayedchildMenu->route_name):'#' !!}"><i class="@if(isset($displayedchildMenu->icon_name)  && !empty($displayedchildMenu->icon_name)) {{ $displayedchildMenu->icon_name }} @else fa fa-users @endif"></i><span>{{ $displayedchildMenu->translate('en')->menu_name }}</span> @if(isset($displayedSubChildMenus)  && count($displayedSubChildMenus) > 0) <i class="fa fa-angle-left pull-right"></i> @endif </a>--}}
                                             {{--<ul class="treeview-menu">--}}
                                                 {{--@foreach($displayedSubChildMenus as $displayedSubChildMenu)--}}
                                                     {{--<li class="{{ $displayedSubChildMenu->id }} child_menu_class {!! Route::has($displayedSubChildMenu->route_name)? $displayedSubChildMenu->route_name:'#' !!}"><a href="{!! Route::has($displayedSubChildMenu->route_name)? route($displayedSubChildMenu->route_name):'#' !!}"><i class="@if(isset($displayedSubChildMenu->icon_name)  && !empty($displayedSubChildMenu->icon_name)) {{ $displayedSubChildMenu->icon_name }} @else fa fa-users @endif"></i> {{ $displayedSubChildMenu->translate('en')->menu_name }}</a> </li>--}}
                                                 {{--@endforeach--}}
                                             {{--</ul>--}}
                                         {{--</li>--}}
                                     {{--@else--}}
                                         {{--<li class="{{ $displayedchildMenu->id }} child_menu_class {!! Route::has($displayedchildMenu->route_name)? $displayedchildMenu->route_name:'#' !!}"><a href="{!! Route::has($displayedchildMenu->route_name)? route($displayedchildMenu->route_name):'#' !!}"><i class="@if(isset($displayedchildMenu->icon_name)  && !empty($displayedchildMenu->icon_name)){{ $displayedchildMenu->icon_name }}@else fa fa-users @endif"></i> {{ $displayedchildMenu->translate('en')->menu_name }}</a> </li>--}}
                                     {{--@endif--}}
                                 {{--@endforeach--}}
                            {{--</ul>--}}
                         {{--@endif--}}
                        {{--</li>--}}
                {{--@endforeach--}}
        {{--</ul>--}}
    {{--</section>--}}
    {{--<!-- /.sidebar -->--}}
{{--</aside>--}}

<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar" style="height: auto;">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="http://localhost:8000/imagecache/large/1455012726XVp2016-01-09-195845.jpg" class="user-image" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>
                    Akshay
                    Khanna -
                </p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="13 admin">
                <a href="http://localhost:8000/admin"><i class="                          	fa fa-users
                        "></i><span>Dashboard</span>
                </a>
            </li>
            <li class="17 menu-list">
                <a href="http://localhost:8000/menu/list"><i class="                          	fa fa-users
                        "></i><span>Menu</span>
                </a>
            </li>
            <li class="25 status-list">
                <a href="http://localhost:8000/status/list"><i class="                          	fa fa-users
                        "></i><span>Status</span>
                </a>
            </li>
            <li class="41 parent_menu_class treeview #">
                <a href="#"><i class="                          	fa fa-users
                        "></i><span>Users</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="5 child_menu_class student-list"><a href="http://localhost:8000/student/list"><i class=" fa fa-users "></i> Students</a> </li>
                    <li class="47 child_menu_class user-list"><a href="http://localhost:8000/user/list"><i class=" fa fa-users "></i> Employees</a> </li>
                    <li class="58 child_menu_class teacher-list"><a href="http://localhost:8000/teacher/list"><i class=" fa fa-users "></i> Teachers</a> </li>
                    <li class="65 child_menu_class guardian-list"><a href="http://localhost:8000/guardian/list"><i class=" fa fa-users "></i> Guardians</a> </li>
                </ul>
            </li>
            <li class="90 parent_menu_class treeview #">
                <a href="#"><i class="                          	fa fa-users
                        "></i><span>User Settings</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="29 child_menu_class role-list"><a href="http://localhost:8000/user-group/list"><i class=" fa fa-users "></i> User Group</a> </li>
                    <li class="30 child_menu_class role-assign-form"><a href="http://localhost:8000/user-group/assign"><i class=" fa fa-users "></i> Assign Role</a> </li>
                    <li class="31 child_menu_class assign-permission-form"><a href="http://localhost:8000/permission/assign"><i class=" fa fa-users "></i> Assign Permission</a> </li>
                    <li class="73 child_menu_class gender-list"><a href="http://localhost:8000/gender/list"><i class=" fa fa-users "></i> Gender</a> </li>
                    <li class="75 child_menu_class religion-list"><a href="http://localhost:8000/religion/list"><i class=" fa fa-users "></i> Religion</a> </li>
                    <li class="88 child_menu_class department-list"><a href="http://localhost:8000/department/list"><i class=" fa fa-users "></i> Department</a> </li>
                    <li class="89 child_menu_class designation-list"><a href="http://localhost:8000/designation/list"><i class=" fa fa-users "></i> Designation</a> </li>
                </ul>
            </li>
            <li class="91 parent_menu_class treeview #">
                <a href="#"><i class="                          	fa fa-users
                        "></i><span>Academic Settings</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="106 child_menu_class building-list"><a href="http://localhost:8000/building/list"><i class=" fa fa-users "></i> Buildings</a> </li>
                    <li class="107 child_menu_class floor-list"><a href="http://localhost:8000/floor/list"><i class=" fa fa-users "></i> Floors</a> </li>
                    <li class="108 child_menu_class room-list"><a href="http://localhost:8000/room/list"><i class=" fa fa-users "></i> Rooms</a> </li>
                    <li class="109 child_menu_class class-list"><a href="http://localhost:8000/student-class/list"><i class=" fa fa-users "></i> Classes</a> </li>
                    <li class="110 child_menu_class section-list"><a href="http://localhost:8000/section/list"><i class=" fa fa-users "></i> Sections</a> </li>
                    <li class="111 child_menu_class subject-list"><a href="http://localhost:8000/subject/list"><i class=" fa fa-users "></i> Subjects</a> </li>
                    <li class="112 child_menu_class routine-list"><a href="http://localhost:8000/routine/list"><i class=" fa fa-users "></i> Routine</a> </li>
                </ul>
            </li>
            <li class="114 parent_menu_class treeview #">
                <a href="#"><i class="                          	fa fa-users
                        "></i><span>Marks</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="115 child_menu_class mark-type-list"><a href="http://localhost:8000/marks-type/list"><i class=" fa fa-users "></i> Mark Types</a> </li>
                    <li class="116 child_menu_class create-marks-form"><a href="http://localhost:8000/marks/add"><i class=" fa fa-users "></i> Add Marks Form</a> </li>
                    <li class="117 child_menu_class student-marks-form"><a href="http://localhost:8000/marks/student-marks"><i class="fa fa-list-ol"></i> Student Marks Form</a> </li>
                </ul>
            </li>
            <li class="118 parent_menu_class treeview #">
                <a href="#"><i class="                          	fa fa-users
                        "></i><span>Exam &amp; Results</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="119 child_menu_class examination-list"><a href="http://localhost:8000/examination/list"><i class=" fa fa-users "></i> Exams</a> </li>
                    <li class="120 child_menu_class examinationSchedule-list"><a href="http://localhost:8000/examinationschedule/list"><i class=" fa fa-users "></i> Exam Schedule</a> </li>
                    <li class="121 child_menu_class result-system-list"><a href="http://localhost:8000/result-system/list"><i class=" fa fa-users "></i> Result System</a> </li>
                </ul>
            </li>
            <li class="122 parent_menu_class treeview #">
                <a href="#"><i class="                          	fa fa-users
                        "></i><span>Attendance</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="123 child_menu_class student-attendance-list"><a href="http://localhost:8000/student-attendance/list"><i class=" fa fa-users "></i> Student Attendance</a> </li>
                    <li class="124 child_menu_class monthly-device-attendance"><a href="http://localhost:8000/attendance/monthly"><i class=" fa fa-users "></i> Upload Device Attendance</a> </li>
                </ul>
            </li>
            <li class="125 parent_menu_class treeview #">
                <a href="#"><i class="                          	fa fa-users
                        "></i><span>Shift</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="126 child_menu_class shift-list"><a href="http://localhost:8000/shift/list"><i class=" fa fa-users "></i> Shift List</a> </li>
                    <li class="127 child_menu_class assign-shift-dept-form"><a href="http://localhost:8000/shift/assign"><i class=" fa fa-users "></i> Assign Shift to Department</a> </li>
                </ul>
            </li>
            <li class="196 parent_menu_class treeview #">
                <a href="#"><i class="                          	fa fa-users
                        "></i><span>Locations</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="197 child_menu_class country-list"><a href="http://localhost:8000/country/list"><i class=" fa fa-users "></i> Country</a> </li>
                    <li class="204 child_menu_class division-list"><a href="http://localhost:8000/division/list"><i class=" fa fa-users "></i> Division</a> </li>
                    <li class="205 child_menu_class district-list"><a href="http://localhost:8000/district/list"><i class=" fa fa-users "></i> District</a> </li>
                </ul>
            </li>
            <li class="206 parent_menu_class treeview #">
                <a href="#"><i class="                          	fa fa-users
                        "></i><span>Message</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="207 child_menu_class message-add-form"><a href="http://localhost:8000/message/add"><i class=" fa fa-users "></i> Compose</a> </li>
                    <li class="208 child_menu_class message-sent"><a href="http://localhost:8000/message/sent"><i class=" fa fa-users "></i> Sent</a> </li>
                    <li class="209 child_menu_class message-inbox"><a href="http://localhost:8000/message/inbox"><i class=" fa fa-users "></i> Inbox</a> </li>
                    <li class="210 child_menu_class message-trash"><a href="http://localhost:8000/message/trash"><i class=" fa fa-users "></i> Trash</a> </li>
                </ul>
            </li>
            <li class="218 notice-list">
                <a href="http://localhost:8000/notice/list"><i class="                          	fa fa-users
                        "></i><span>Notice</span>
                </a>
            </li>
            <li class="225 event-list">
                <a href="http://localhost:8000/event/list"><i class="                          	fa fa-users
                        "></i><span>Event</span>
                </a>
            </li>
            <li class="232 parent_menu_class treeview #">
                <a href="#"><i class="                          	fa fa-users
                        "></i><span>Account Info</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="233 child_menu_class account-type-list"><a href="http://localhost:8000/account-type/list"><i class=" fa fa-users "></i> Account Type</a> </li>
                    <li class="240 child_menu_class amount-type-list"><a href="http://localhost:8000/amount-type/list"><i class=" fa fa-users "></i> Amount Type </a> </li>
                    <li class="246 child_menu_class amount-category-list"><a href="http://localhost:8000/amount-category/list"><i class=" fa fa-users "></i> Amount Category</a> </li>
                    <li class="252 child_menu_class account-list"><a href="http://localhost:8000/account/list"><i class=" fa fa-users "></i> Account</a> </li>
                </ul>
            </li>
            <li class="262 parent_menu_class treeview #">
                <a href="#"><i class="                          	fa fa-users
                        "></i><span>Report</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="259 child_menu_class account-report"><a href="http://localhost:8000/account/reports"><i class=" fa fa-users "></i> Accounts</a> </li>
                    <li class="263 child_menu_class your-timesheet"><a href="http://localhost:8000/timesheet"><i class=" fa fa-users "></i> Timesheet</a> </li>
                    <li class="268 child_menu_class get-salary-from-punch"><a href="http://localhost:8000/salary/reports"><i class=" fa fa-users "></i> Salary</a> </li>
                    <li class="271 child_menu_class report-student-id-card"><a href="http://localhost:8000/report/student-id-card"><i class=" fa fa-users "></i> Student Id Card</a> </li>
                    <li class="272 child_menu_class report-student-admit-card"><a href="http://localhost:8000/report/student-admit-card"><i class=" fa fa-users "></i> Student Admit Card</a> </li>
                    <li class="273 child_menu_class report-testimonial"><a href="http://localhost:8000/report/testimonial"><i class=" fa fa-users "></i> Testimonial</a> </li>
                    <li class="274 child_menu_class report-tc"><a href="http://localhost:8000/report/tc"><i class=" fa fa-users "></i> Transfer Certificate</a> </li>
                    <li class="275 child_menu_class report-clearance"><a href="http://localhost:8000/report/clearance"><i class=" fa fa-users "></i> Clearance</a> </li>
                    <li class="276 child_menu_class report-certification"><a href="http://localhost:8000/report/certification"><i class=" fa fa-users "></i> Certification</a> </li>
                    <li class="377 child_menu_class general-report-page"><a href="http://localhost:8000/general-report/reports"><i class=" fa fa-users "></i> General Report</a> </li>
                    <li class="531 child_menu_class tabulation-sheet-page"><a href="http://localhost:8000/general-report/tabulation-sheet"><i class=" fa fa-users "></i> Tabulation Sheet</a> </li>
                </ul>
            </li>
            <li class="285 parent_menu_class treeview #">
                <a href="#"><i class="                          	fa fa-users
                        "></i><span>Salary Setting</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="286 child_menu_class salary-type-create-form"><a href="http://localhost:8000/salary/type"><i class=" fa fa-users "></i> Create Salary Type</a> </li>
                    <li class="287 child_menu_class salary-type-list"><a href="http://localhost:8000/salary/type/list"><i class=" fa fa-users "></i> Salary Type List</a> </li>
                    <li class="292 child_menu_class salary-rules-create-form"><a href="http://localhost:8000/salary/allowance-rules"><i class=" fa fa-users "></i> Create Allowance Rules</a> </li>
                    <li class="294 child_menu_class salary-allowance-rules-list"><a href="http://localhost:8000/salary/allowance-rules-list"><i class=" fa fa-users "></i> Allowance Rules List</a> </li>
                    <li class="298 child_menu_class overtime-rules-create-form"><a href="http://localhost:8000/salary/overtime-rules"><i class=" fa fa-users "></i> Create Overtime Rules</a> </li>
                    <li class="300 child_menu_class salary-overtime-rules-list"><a href="http://localhost:8000/salary/overtime-rules-list"><i class=" fa fa-users "></i> Overtime Rules List</a> </li>
                    <li class="301 child_menu_class cut-rules-create-form"><a href="http://localhost:8000/salary/cut-rules"><i class=" fa fa-users "></i> Create Salary Cut Rules</a> </li>
                    <li class="303 child_menu_class salary-cut-rules-list"><a href="http://localhost:8000/salary/cut-rules-list"><i class=" fa fa-users "></i> Salary Cut Rules List</a> </li>
                    <li class="304 child_menu_class bonus-rules-create-form"><a href="http://localhost:8000/salary/bonus-rules"><i class=" fa fa-users "></i> Create Bonus Rules</a> </li>
                    <li class="306 child_menu_class salary-bonus-rules-list"><a href="http://localhost:8000/salary/bonus-rules-list"><i class=" fa fa-users "></i> Bonus Rules List</a> </li>
                </ul>
            </li>
            <li class="311 form-setting-list">
                <a href="http://localhost:8000/form-settings"><i class="                          	fa fa-users
                        "></i><span>Form Settings</span>
                </a>
            </li>
            <li class="317 leave-list">
                <a href="http://localhost:8000/leave/list"><i class="                          	fa fa-users
                        "></i><span>Leave List</span>
                </a>
            </li>
            <li class="324 parent_menu_class treeview #">
                <a href="#"><i class="                          	fa fa-users
                        "></i><span>Leave Applications</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="325 child_menu_class application-list"><a href="http://localhost:8000/application/list"><i class=" fa fa-users "></i> Application List</a> </li>
                </ul>
            </li>
            <li class="332 parent_menu_class treeview #">
                <a href="#"><i class="                          	fa fa-users
                        "></i><span>Holydays</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="333 child_menu_class holydaytype-list"><a href="http://localhost:8000/holydaytype/list"><i class=" fa fa-users "></i> Holyday Types</a> </li>
                    <li class="340 child_menu_class holyday-list"><a href="http://localhost:8000/holyday/list"><i class=" fa fa-users "></i> Holyday</a> </li>
                </ul>
            </li>
            <li class="348 parent_menu_class treeview #">
                <a href="#"><i class="                          	fa fa-users
                        "></i><span>Library</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="349 child_menu_class author-list"><a href="http://localhost:8000/author/list"><i class=" fa fa-users "></i> Author</a> </li>
                    <li class="364 child_menu_class book-category-list"><a href="http://localhost:8000/book-category/list"><i class=" fa fa-users "></i> Book Category</a> </li>
                    <li class="370 child_menu_class book-list"><a href="http://localhost:8000/book/list"><i class=" fa fa-users "></i> Book</a> </li>
                </ul>
            </li>
            <li class="381 parent_menu_class treeview #">
                <a href="#"><i class="                          	fa fa-users
                        "></i><span>Profile Setting</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="382 child_menu_class training-list"><a href="http://localhost:8000/training/list"><i class=" fa fa-users "></i> Training</a> </li>
                    <li class="389 child_menu_class professional-qualification-list"><a href="http://localhost:8000/professional-qualification/list"><i class=" fa fa-users "></i> Professional Qualification</a> </li>
                    <li class="396 child_menu_class business-type-list"><a href="http://localhost:8000/business-type/list"><i class=" fa fa-users "></i> Business Type</a> </li>
                    <li class="402 child_menu_class experience-category-list"><a href="http://localhost:8000/experience-category/list"><i class=" fa fa-users "></i> Experience Category</a> </li>
                    <li class="409 child_menu_class experience-list"><a href="http://localhost:8000/experience/list"><i class=" fa fa-users "></i> Experience</a> </li>
                    <li class="415 child_menu_class employment-history-list"><a href="http://localhost:8000/employment-history/list"><i class=" fa fa-users "></i> Employment History</a> </li>
                    <li class="422 child_menu_class skill-category-list"><a href="http://localhost:8000/skill-category/list"><i class=" fa fa-users "></i> Skill Category</a> </li>
                    <li class="429 child_menu_class skill-list"><a href="http://localhost:8000/skill/list"><i class=" fa fa-users "></i> Skill</a> </li>
                    <li class="435 child_menu_class cv-language-list"><a href="http://localhost:8000/cv-language/list"><i class=" fa fa-users "></i> Language</a> </li>
                    <li class="441 child_menu_class cv-language-skill-list"><a href="http://localhost:8000/cv-language-skill/list"><i class=" fa fa-users "></i> Language Skill</a> </li>
                    <li class="447 child_menu_class relation-list"><a href="http://localhost:8000/relation/list"><i class=" fa fa-users "></i> Relation</a> </li>
                    <li class="453 child_menu_class reference-list"><a href="http://localhost:8000/reference/list"><i class=" fa fa-users "></i> Reference</a> </li>
                    <li class="460 child_menu_class specialization-list"><a href="http://localhost:8000/specialization/list"><i class=" fa fa-users "></i> Specialization</a> </li>
                    <li class="467 child_menu_class education-level-list"><a href="http://localhost:8000/education-level/list"><i class=" fa fa-users "></i> Education Level</a> </li>
                    <li class="473 child_menu_class academic-qualification-list"><a href="http://localhost:8000/academic-qualification/list"><i class=" fa fa-users "></i> Academic Qualification</a> </li>
                </ul>
            </li>
            <li class="495 parent_menu_class treeview #">
                <a href="#"><i class="                          	fa fa-users
                        "></i><span>Institution setup</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="496 child_menu_class site-list"><a href="http://localhost:8000/site/list"><i class=" fa fa-users "></i> Institution Info</a> </li>
                    <li class="503 child_menu_class site-group-list"><a href="http://localhost:8000/site-group/list"><i class=" fa fa-users "></i> Institution Group</a> </li>
                    <li class="508 child_menu_class site-membership-list"><a href="http://localhost:8000/site-membership/list"><i class=" fa fa-users "></i> Institution Membership</a> </li>
                    <li class="512 child_menu_class site-report"><a href="http://localhost:8000/office/report"><i class=" fa fa-users "></i> Institution Report</a> </li>
                    <li class="514 child_menu_class site-amount-receive-list"><a href="http://localhost:8000/site-amount-receive/list"><i class=" fa fa-users "></i> Institution Amount Receive</a> </li>
                </ul>
            </li>
            <li class="521 parent_menu_class treeview #">
                <a href="#"><i class="                          	fa fa-users
                        "></i><span>Student Panel</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="522 child_menu_class student-report-page"><a href="http://localhost:8000/student-report/reports"><i class=" fa fa-users "></i> Student Reports</a> </li>
                </ul>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
