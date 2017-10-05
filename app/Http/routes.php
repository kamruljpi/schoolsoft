<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/





Route::get('/',['as'=>'login-form','uses'=>'Login\LoginController@loginPage']);

Route::group(['namespace' => 'Login','prefix'=>'auth'], function(){

//    Route::get('role', ['as'=>'role-check','uses'=>'LoginController@roleCheck']);
    Route::post('signin', ['as'=>'log-in','uses'=>'LoginController@login']);


    Route::get('signout',['as'=>'log-out','uses'=>'LoginController@logout']);


});

Route::group(['namespace' => 'Language'], function(){
    Route::get('lang/{locale}', ['as'=>'choose-lang','uses'=>'LanguageController@langChooser']);
});
Route::group(['namespace' => 'User','prefix'=>'user'], function(){
    Route::get('list', ['as'=>'user-list','uses'=>'UsersController@index']);
    Route::get('add', ['as'=>'user-add-form','uses'=>'UsersController@createUserForm']);
    Route::post('add', ['as'=>'user-create','uses'=>'UsersController@createUser']);
    Route::get('view/{id}', ['as'=>'user-view','uses'=>'UsersController@viewUser']);
    Route::get('edit/{id}', ['as'=>'user-edit-form','uses'=>'UsersController@editUserForm']);
    Route::patch('edit/{id}', ['as'=>'user-edit','uses'=>'UsersController@editUser']);
    Route::get('delete/{id}', ['as'=>'user-delete','uses'=>'UsersController@deleteUser']);
});

Route::group(['namespace' => 'Admin','prefix'=>'admin'], function(){
    Route::get('/',['as'=>'admin','uses'=>'AdminController@accessAdmin']);
    Route::get('list', ['as'=>'admin-list','uses'=>'AdminController@index']);
    Route::get('add', ['as'=>'admin-add','uses'=>'AdminController@createAdminForm']);
    Route::post('add', ['as'=>'admin-create','uses'=>'AdminController@createAdmin']);
    Route::get('view/{id}', ['as'=>'admin-view','uses'=>'AdminController@viewAdmin']);
    Route::get('edit/{id}', ['as'=>'admin-edit','uses'=>'AdminController@editAdminForm']);
    Route::patch('edit/{id}', ['as'=>'admin-edit','uses'=>'AdminController@editAdmin']);
    Route::get('delete/{id}', ['as'=>'admin-delete','uses'=>'AdminController@deleteAdmin']);
});

Route::group(['namespace' => 'Employee','prefix'=>'profile'], function(){
    Route::get('/',['as'=>'employee-profile','uses'=>'EmployeeController@employeePage']);
});



Route::group(['namespace'=>'Role','prefix'=>'user-group'], function () {
    Route::get('add',['as'=>'role-add-form','uses'=>'RolesController@createForm']);
    Route::post('add', ['as'=>'role-create','uses'=>'RolesController@createRole']);
    Route::get('assign',['as'=>'role-assign-form','uses'=>'RolesController@roleAssignForm']);
    Route::post('assign',['as'=>'role-assign','uses'=>'RolesController@assignRole']);
    Route::get('list',['as'=>'role-list','uses'=>'RolesController@index']);
    Route::get('edit/{id}',['as'=>'role-edit-form','uses'=>'RolesController@editRoleForm']);
    Route::get('view/{id}',['as'=>'role-view','uses'=>'RolesController@viewRole']);
    Route::get('delete/{id}',['as'=>'role-delete','uses'=>'RolesController@deleteRole']);
    Route::patch('edit/{id}',['as'=>'role-edit','uses'=>'RolesController@editRole']);

});

Route::group(['namespace'=>'Role','prefix'=>'permission'], function () {
    Route::get('assign',['as'=>'assign-permission-form','uses'=>'RolesController@assignPermissionForm']);
    Route::get('group-access',['as'=>'group-access','uses'=>'RolesController@getGroupAccessTable']);

});

/*Route::group(['namespace'=>'Permission','prefix'=>'permission'], function () {
    Route::get('add',['as'=>'permission-add-form','uses'=>'PermissionController@createForm']);
    Route::post('add', ['as'=>'permission-create','uses'=>'PermissionController@createPermission']);
    Route::get('assign-p',['as'=>'permission-assign-form','uses'=>'PermissionController@permissionAssignForm']);
    Route::post('assign',['as'=>'permission-assign','uses'=>'PermissionController@assignPermission']);
    Route::get('list',['as'=>'permission-list','uses'=>'PermissionController@index']);
    Route::get('edit/{id}',['as'=>'permission-edit-form','uses'=>'PermissionController@editPermissionForm']);
    Route::get('view/{id}',['as'=>'permission-view','uses'=>'PermissionController@viewPermission']);
    Route::get('delete/{id}',['as'=>'permission-delete','uses'=>'PermissionController@deletePermission']);
    Route::patch('edit/{id}',['as'=>'permission-edit','uses'=>'PermissionController@editPermission']);

});*/

Route::group(['namespace' => 'Religion','prefix'=>'religion'], function(){

    Route::get('add', ['as'=>'religion-add-form','uses'=>'ReligionController@createReligionForm']);
    Route::post('add', ['as'=>'religion-add','uses'=>'ReligionController@createReligion']);
    Route::get('list', ['as'=>'religion-list','uses'=>'ReligionController@index']);
    Route::get('edit/{id}', ['as'=>'religion-edit-form','uses'=>'ReligionController@editReligionForm']);
    Route::patch('edit/{id}',['as'=>'religion-edit','uses'=>'ReligionController@editReligion']);
    Route::get('view/{id}',['as'=>'religion-view', 'uses'=>'ReligionController@viewReligion']);
    Route::get('delete/{id}',['as'=>'religion-delete', 'uses'=>'ReligionController@deleteReligion']);

});

Route::group(['namespace' => 'Gender','prefix'=>'gender'], function(){

    Route::get('add', ['as'=>'gender-add-form','uses'=>'GenderController@createGenderForm']);
    Route::post('add', ['as'=>'gender-add','uses'=>'GenderController@createGender']);
    Route::get('list', ['as'=>'gender-list','uses'=>'GenderController@index']);
    Route::get('edit/{id}', ['as'=>'gender-edit-form', 'uses'=>'GenderController@editGenderForm']);
    Route::patch('edit/{id}',['as'=>'gender-edit','uses'=>'GenderController@editGender']);
    Route::get('view/{id}',['as'=>'gender-view', 'uses'=>'GenderController@viewGender']);
    Route::get('delete/{id}',['as'=>'gender-delete', 'uses'=>'GenderController@deleteGender']);

});

Route::group(['namespace' => 'Department','prefix'=>'department'], function(){

    Route::get('add', ['as'=>'department-add-form','uses'=>'DepartmentController@createDeptForm']);
    Route::post('add', ['as'=>'department-create','uses'=>'DepartmentController@createDepartment']);
    Route::get('list', ['as'=>'department-list','uses'=>'DepartmentController@index']);
    Route::get('edit/{id}', ['as'=>'department-edit-form','uses'=>'DepartmentController@editDeptForm']);
    Route::patch('edit/{id}',['as'=>'department-edit','uses'=>'DepartmentController@editDepartment']);
    Route::get('view/{id}',['as'=>'department-view','uses'=>'DepartmentController@viewDepartment']);
    Route::get('delete/{id}',['as'=>'department-delete','uses'=>'DepartmentController@deleteDepartment']);

});


Route::group(['namespace' => 'Shift','prefix'=>'shift'], function(){
    Route::get('add', ['as'=>'shift-add-form','uses'=>'ShiftController@createShiftForm']);
//    Route::post('add', ['as'=>'shift-create','uses'=>'ShiftController@createShift']);
    Route::post('add', ['as'=>'shift-create-json','uses'=>'ShiftController@createShiftJson']);
    Route::get('list', ['as'=>'shift-list','uses'=>'ShiftController@index']);
    Route::get('assign', ['as'=>'assign-shift-dept-form','uses'=>'ShiftController@assignShiftDeptForm']);
    Route::post('assign',['as'=>'shift-assign','uses'=>'ShiftController@assignShift']);
    Route::get('view/{id}',['as'=>'shift-view','uses'=>'ShiftController@viewShift']);
    Route::get('edit/{id}',['as'=>'shift-edit-form','uses'=>'ShiftController@editShiftForm']);
    Route::patch('edit/{id}',['as'=>'shift-edit','uses'=>'ShiftController@editShift']);
    Route::get('delete/{id}',['as'=>'shift-delete','uses'=>'ShiftController@deleteShift']);
    Route::get('user/{userId}',['as'=>'shift-user','uses'=>'ShiftController@shiftToEdit']);

});


Route::group(['namespace' => 'Designation','prefix'=>'designation'], function(){

    Route::get('add', ['as'=>'designation-add-form','uses'=>'DesignationController@createDesignationForm']);
    Route::post('add', ['as'=>'designation-add','uses'=>'DesignationController@createDesignation']);
    Route::get('list', ['as'=>'designation-list','uses'=>'DesignationController@index']);
    Route::get('edit/{id}', ['as'=>'designation-edit-form','uses'=>'DesignationController@editDesignationForm']);
    Route::patch('edit/{id}',['as'=>'designation-edit','uses'=>'DesignationController@editDesignation']);
    Route::get('view/{id}',['as'=>'designation-view','uses'=>'DesignationController@viewDesignation']);
    Route::get('delete/{id}',['as'=>'designation-delete','uses'=>'DesignationController@deleteDesignation']);
    Route::get('{deptId}',['as'=>'designation-dept','uses'=>'DesignationController@designationOfDept']);
    Route::get('user/{userId}',['as'=>'designation-user','uses'=>'DesignationController@designationToEdit']);

});

Route::group(['namespace' => 'Leave','prefix'=>'leave'], function(){
    Route::get('add', ['as'=>'leave-add-form','uses'=>'LeaveController@createLeaveForm']);
    Route::post('add', ['as'=>'leave-create','uses'=>'LeaveController@createLeave']);
    Route::get('list', ['as'=>'leave-list','uses'=>'LeaveController@index']);
    Route::get('edit/{id}', ['as'=>'leave-edit-form','uses'=>'LeaveController@editLeaveForm']);
    Route::patch('edit/{id}',['as'=>'leave-edit','uses'=>'LeaveController@editLeave']);
    Route::get('view/{id}',['as'=>'leave-view','uses'=>'LeaveController@viewLeave']);
    Route::get('delete/{id}',['as'=>'leave-delete','uses'=>'LeaveController@deleteLeave']);
});
Route::group(['namespace' => 'Leave','prefix'=>'application'], function(){
    Route::get('add', ['as'=>'application-add-form','uses'=>'LeaveController@createApplicationForm']);
    Route::post('add', ['as'=>'application-create','uses'=>'LeaveController@applyForLeave']);
    Route::get('list', ['as'=>'application-list','uses'=>'LeaveController@leaveApplicationList']);
    Route::get('edit/{id}', ['as'=>'application-edit-form','uses'=>'LeaveController@applicationEditForm']);
    Route::patch('edit/{id}', ['as'=>'application-edit','uses'=>'LeaveController@editAplication']);
    Route::get('delete/{id}', ['as'=>'application-delete','uses'=>'LeaveController@deleteApplication']);
    Route::get('myleave', ['as'=>'employee-leave','uses'=>'LeaveController@myLeave']);
});

Route::group(['namespace' => 'Status','prefix'=>'status'], function(){
    Route::get('add', ['as'=>'status-add-form','uses'=>'StatusController@createStatusForm']);
    Route::post('add', ['as'=>'status-create','uses'=>'StatusController@createStatus']);
    Route::get('list', ['as'=>'status-list','uses'=>'StatusController@index']);


});

Route::group(['namespace' => 'Holiday','prefix'=>'holydaytype'], function(){
    Route::get('add', ['as'=>'holydaytype-add-form','uses'=>'HolydayController@createHolydayTypeForm']);
    Route::post('add', ['as'=>'holydaytype-add', 'uses'=>'HolydayController@createHolydayType']);
    Route::get('list', ['as'=>'holydaytype-list','uses'=>'HolydayController@getHolidayTypeList']);

});
Route::group(['namespace' => 'Holiday','prefix'=>'holyday'], function(){
    Route::get('add', ['as'=>'holyday-add-form','uses'=>'HolydayController@createHolydayForm']);
    Route::post('add', ['as'=>'holyday-add', 'uses'=>'HolydayController@createHolyday']);
    Route::get('list', ['as'=>'holyday-list','uses'=>'HolydayController@holydayList']);
    Route::get('list/{year}/{date}', ['as'=>'holyday-month', 'uses'=>'HolydayController@holydaysByMonth']);
    /* Route::get('edit/{id}', 'LeaveController@applicationEditForm');
     Route::patch('edit/{id}', 'LeaveController@editAplication');
     Route::get('delete/{id}', 'LeaveController@deleteApplication');*/

});
Route::group(['namespace' => 'Punch','prefix'=>'punch'], function(){
    Route::get('add', ['as'=>'punch-insert-form','uses'=>'PunchController@insertPunchForm']);
    Route::post('add', ['as'=>'punch-in','uses'=>'PunchController@punchIn']);
    Route::post('out', ['as'=>'punch-out','uses'=>'PunchController@punchOut']);
    Route::get('edit/{date}/{id}', ['as'=>'user-daily-punch-edit-by-date','uses'=>'PunchController@editPunchForm']);
    Route::patch('edit/{id}/{date}', ['as'=>'user-punch-edit','uses'=>'PunchController@editUserPunch']);
});

Route::group(['namespace' => 'Punch','prefix'=>'timesheet'], function(){

    Route::get('/',['as'=>'your-timesheet','uses'=>'PunchController@timesheetPage']);
    Route::get('mine',['as'=>'my-timesheet','uses'=>'PunchController@myTimesheetPage']);
    Route::get('my-details/{id}/{month}/{year}',['as'=>'my-timesheet-report','uses'=>'PunchController@myDailyTimesheet']);
//    Route::get('monthly-report',['as'=>'timesheet-report','uses'=>'PunchController@timeShiftForMonth']);
    Route::get('monthly-report/{year}/{month}',['as'=>'timesheet-report','uses'=>'PunchController@timeShiftForMonth']);
    Route::get('users-daily-report/{id}/{month}/{year}',['as'=>'user-month-timesheet-details','uses'=>'PunchController@usersDailyTimesheet']);
});


Route::group(['namespace' => 'Punch','prefix'=>'attendance'], function(){

    Route::get('monthly',['as'=>'monthly-device-attendance','uses'=>'PunchController@monthlyDeviceAttendance']);
    Route::post('monthly',['as'=>'monthly-device-data-upload','uses'=>'PunchController@uploadDeviceData']);
    Route::any('device-data/preview/',['as'=>'monthly-device-data-preview','uses'=>'PunchController@previewDeviceData']);
});

Route::group(['namespace' => 'Punch','prefix'=>'salary'], function(){

    Route::get('reports',['as'=>'get-salary-from-punch','uses'=>'PunchController@getSalaryForm']);
    Route::get('monthly-report/{year}/{month}',['as'=>'monthly-salary-report','uses'=>'PunchController@determineSalaryForAllEmployees']);
    Route::get('user-yearly-report/{userId}/{year}',['as'=>'user-year-salary-details','uses'=>'PunchController@getIndividualYearlySalaryReport']);
});

Route::group(['namespace' => 'Salary','prefix'=>'salary'], function(){
    Route::get('type', ['as'=>'salary-type-create-form','uses'=>'SalaryController@createSalaryTypeForm']);
    Route::get('type/list',['as'=>'salary-type-list','uses'=>'SalaryController@salaryTypeList']);
    Route::get('type/edit/{id}',['as'=>'salary-type-edit-form','uses'=>'SalaryController@salaryTypeEditForm']);
    Route::patch('type/edit/{id}',['as'=>'salary-type-edit','uses'=>'SalaryController@editSalaryType']);
    Route::get('type/delete/{id}',['as'=>'salary-type-delete','uses'=>'SalaryController@salaryTypeDelete']);
    Route::post('type', ['as'=>'create-salary-type','uses'=>'SalaryController@createSalaryType']);

    Route::get('allowance-rules',['as'=>'salary-rules-create-form','uses'=>'SalaryController@createAllowanceForm']);
    Route::post('allowance-rules',['as'=>'create-salary-rules','uses'=>'SalaryController@createAllowance']);
    Route::get('allowance-rules-list',['as'=>'salary-allowance-rules-list','uses'=>'SalaryController@allowanceRulesList']);
    Route::get('allowance-rules/view/{id}',['as'=>'allowance-rule-view','uses'=>'SalaryController@viewAllowanceRules']);
    Route::get('allowance-rules/edit/{id}',['as'=>'allowance-rule-edit-form','uses'=>'SalaryController@allowanceRuleEditForm']);
    Route::patch('allowance-rules/edit/{id}',['as'=>'allowance-rule-edit','uses'=>'SalaryController@editAllowanceRule']);
    Route::get('allowance-rules/delete/{id}',['as'=>'allowance-rule-delete','uses'=>'SalaryController@deleteAllowanceRule']);

    Route::get('overtime-rules',['as'=>'overtime-rules-create-form','uses'=>'SalaryController@createOvertimeForm']);
    Route::post('overtime-rules',['as'=>'create-overtime-rules','uses'=>'SalaryController@createOvertime']);
    Route::get('overtime-rules-list',['as'=>'salary-overtime-rules-list','uses'=>'SalaryController@overtimeRulesList']);
    Route::get('overtime-rules-view/{id}',['as'=>'overtime-rule-view','uses'=>'SalaryController@viewOvertimeRule']);

    Route::get('cut-rules',['as'=>'cut-rules-create-form','uses'=>'SalaryController@createSalaryCutForm']);
    Route::post('cut-rules',['as'=>'create-salary-cut-rules','uses'=>'SalaryController@createSalaryCut']);
    Route::get('cut-rules-list',['as'=>'salary-cut-rules-list','uses'=>'SalaryController@salaryCutRulesList']);
    Route::get('cut-rules-view/{id}',['as'=>'salary-cut-rule-view','uses'=>'SalaryController@viewSalaryCutRule']);

    Route::get('bonus-rules',['as'=>'bonus-rules-create-form','uses'=>'SalaryController@createBonusForm']);
    Route::post('bonus-rules',['as'=>'create-bonus-rules','uses'=>'SalaryController@createBonusRule']);
    Route::get('bonus-rules-list',['as'=>'salary-bonus-rules-list','uses'=>'SalaryController@bonusRulesList']);
    Route::get('bonus-rule-view/{id}',['as'=>'bonus-rule-view','uses'=>'SalaryController@viewBonusRule']);

    Route::post('bonus-attr',['as'=>'create-bonus-attr','uses'=>'SalaryController@createBonusAttr']);
    Route::post('check-bonus-attr/{id}',['as'=>'check-bonus-attr','uses'=>'SalaryController@checkBonusAttr']);
    Route::post('bonus-attr-delete/{id}',['as'=>'delete-bonus-attr','uses'=>'SalaryController@deleteBonusAttr']);

    Route::get('report',['as'=>'employee-salary','uses'=>'SalaryController@determineSalaryForAllEmployees']);
});


Route::group(['namespace' => 'Student','prefix'=>'student'], function(){
    Route::get('add',['as'=>'student_add_form','uses'=>'StudentController@createStudentForm']);
    Route::post('add',['as'=>'student-create','uses'=>'StudentController@createStudent']);
    Route::get('list',['as'=>'student-list','uses'=>'StudentController@index']);
    Route::get('list-by-class/{classId}/{attdate}',['as'=>'student-list-by-class','uses'=>'StudentController@getStudentListByClass']);
    Route::get('list-by-section/{classId}/{sectionId}/{attdate}',['as'=>'student-list-by-section','uses'=>'StudentController@getStudentListBySection']);
    Route::get('list-by-subject/{classId}/{sectionId}/{attDate}/{subjectId}',['as'=>'student-list-by-sub','uses'=>'StudentController@getStudentListBySubject']);

    Route::get('class/{departmetId}',['as'=>'student-class','uses'=>'StudentController@getClassForDepartment']);
    Route::get('edit/{id}',['as'=>'student-edit-form','uses'=>'StudentController@getStudentEditForm']);
    Route::patch('edit/{id}',['as'=>'student-edit','uses'=>'StudentController@editStudent']);
    Route::get('view/{id}',['as'=>'student-view','uses'=>'StudentController@viewStudent']);
    Route::get('delete/{id}',['as'=>'student-delete','uses'=>'StudentController@deleteStudent']);
});

Route::group(['namespace' => 'Section','prefix'=>'section'], function(){
    Route::get('add',['as'=>'section_add_form','uses'=>'SectionController@createSectionForm']);
    Route::post('add',['as'=>'section-create','uses'=>'SectionController@createSection']);
    Route::get('list',['as'=>'section-list','uses'=>'SectionController@index']);
    Route::get('list-by-class/{classId}',['as'=>'section-list-by-class','uses'=>'SectionController@getSectionByClass']);
    Route::get('edit/{id}',['as'=>'section-edit-form','uses'=>'SectionController@getSectionEditForm']);
    Route::patch('edit/{id}',['as'=>'section-edit','uses'=>'SectionController@editSection']);
    Route::get('delete/{id}',['as'=>'section-delete','uses'=>'SectionController@deleteSection']);
});

Route::group(['namespace' => 'Subject','prefix'=>'subject'], function(){
    Route::get('list-by-section/{sectionId}', ['as'=>'subject-list-by-section','uses'=>'SubjectController@getSubjectBySection']);
});
Route::group(['namespace' => 'Result','prefix'=>'result-system'], function(){
    Route::get('add',['as'=>'result-system-add-form','uses'=>'ResultController@createResultSystemForm']);
    Route::post('add',['as'=>'create-result-system','uses'=>'ResultController@createResultSystem']);


});
Route::group(['namespace' => 'Result','prefix'=>'result-settings'], function(){

    Route::post('add',['as'=>'create-result-settings','uses'=>'ResultController@createResultSettings']);
    Route::post('delete/{id}',['as'=>'delete-result-settings','uses'=>'ResultController@deleteResultSettings']);


});

Route::group(['namespace' => 'Result','prefix'=>'total-result-system'], function(){
    Route::get('add',['as'=>'total-result-system-add-form','uses'=>'ResultController@createTotalResultSystemForm']);
    Route::post('add',['as'=>'create-total-result-system','uses'=>'ResultController@createTotalResultSystem']);
    Route::get('list',['as'=>'total-result-system-list','uses'=>'ResultController@totalResultSystemList']);
    Route::get('view/{id}', ['as'=>'total-result-system-view','uses'=>'ResultController@viewTotalResultSystem']);
});
Route::group(['namespace' => 'Result','prefix'=>'total-result-settings'], function(){
    Route::post('add',['as'=>'create-total-result-settings','uses'=>'ResultController@createTotalResultSettings']);
    Route::post('delete/{id}',['as'=>'delete-total-result-settings','uses'=>'ResultController@deleteTotalResultSettings']);
});
Route::group(['namespace' => 'Form','prefix'=>'form-settings'], function(){

    Route::get('add',['as'=>'form-setting-form','uses'=>'FormSettingController@createSettingsForm']);
    Route::post('add',['as'=>'add-form-settings','uses'=>'FormSettingController@createSettings']);
    Route::get('',['as'=>'form-setting-list','uses'=>'FormSettingController@index']);
    Route::get('edit/{id}',['as'=>'form-setting-edit-form','uses'=>'FormSettingController@editSettingForm']);
    Route::patch('edit/{id}',['as'=>'form-setting-edit','uses'=>'FormSettingController@editSettings']);
    Route::get('delete/{id}',['as'=>'form-setting-delete','uses'=>'FormSettingController@deleteSettigs']);



});

Route::group(['namespace' => 'Attendance','prefix'=>'student-attendance'], function(){

    Route::get('list',['as'=>'student-attendance-list','uses'=>'StudentAttendanceController@getStudentAttendanceList']);
    Route::get('add',['as'=>'add-student-attendance-form','uses'=>'StudentAttendanceController@getStudentAttendanceForm']);
    Route::post('add',['as'=>'add-student-attendance','uses'=>'StudentAttendanceController@addStudentAttendance']);

});

Route::group(['namespace' => 'Marks','prefix'=>'marks-type'], function(){
    Route::get('add',['as'=>'marks-type-add-form','uses'=>'MarksController@creteMarksTypeForm']);
    Route::post('add',['as'=>'marks-type-create','uses'=>'MarksController@creteMarksType']);
    Route::get('edit/{id}',['as'=>'marks-type-edit-form','uses'=>'MarksController@editMarksTypeForm']);
    Route::patch('edit/{id}',['as'=>'mark-type-edit','uses'=>'MarksController@editMarksType']);
    Route::get('list',['as'=>'mark-type-list','uses'=>'MarksController@index']);
    Route::get('delete/{id}',['as'=>'marks-type-delete','uses'=>'MarksController@deleteMarksType']);
});

Route::group(['namespace' => 'Marks','prefix'=>'marks'], function(){

    Route::get('add',['as'=>'create-marks-form','uses'=>'MarksController@createMarksForm']);
    Route::post('add',['as'=>'create-marks','uses'=>'MarksController@createMarks']);
    Route::get('all-students/add',['as'=>'student-list-for-marks','uses'=>'MarksController@getStListForAddingMarks']);
    Route::post('student-mark/add',['as'=>'student-mark-add','uses'=>'MarksController@saveStudentMarks']);
    Route::get('student-marks',['as'=>'student-marks-form','uses'=>'MarksController@getClassChoosingOption']);
    Route::get('student-list',['as'=>'student-list-view-marks','uses'=>'MarksController@getStudentListForViewingMarks']);
    Route::get('view-student-marks/{stId}/{examId}',['as'=>'student-marks-view','uses'=>'MarksController@viewStudentMarks']);

});

Route::group(['namespace' => 'Menu','prefix'=>'menu'], function(){

    Route::get('add',['as'=>'menu-create-form','uses'=>'MenuController@createMenuForm']);
    Route::post('add',['as'=>'menu-create','uses'=>'MenuController@createMenu']);
    Route::patch('edit/{id}',['as'=>'menu-edit','uses'=>'MenuController@editMenu']);
    Route::get('edit/{id}',['as'=>'menu-edit-form','uses'=>'MenuController@editMenuForm']);
    Route::get('list',['as'=>'menu-list','uses'=>'MenuController@index']);
    Route::get('delete/{id}',['as'=>'menu-delete','uses'=>'MenuController@deleteMenu']);
    Route::get('menu-search',['as'=>'menu-search','uses'=>'MenuController@searchMenu']);
});

Route::group(['namespace'=>'Permission','prefix'=>'role'], function () {
    Route::post('access',['as'=>'role-access','uses'=>'GroupAccessController@assignAccess']);
//    Route::get('a',['as'=>'role-test','uses'=>'GroupAccessController@access']);


});


Route::group(['namespace' => 'Site','prefix'=>'site'], function(){
    Route::get('list', ['as'=>'site-list','uses'=>'SiteController@index']);
    Route::get('add', ['as'=>'site-create-form','uses'=>'SiteController@createSiteInfoForm']);
    Route::post('add', ['as'=>'site-create','uses'=>'SiteController@createSiteInfo']);
    Route::get('view/{id}', ['as'=>'site-view','uses'=>'SiteController@viewSiteInfo']);
    Route::get('edit/{id}', ['as'=>'site-edit-form','uses'=>'SiteController@editSiteInfoForm']);
    Route::patch('edit/{id}', ['as'=>'site-edit','uses'=>'SiteController@editSiteInfo']);
    Route::get('delete/{id}', ['as'=>'site-delete','uses'=>'SiteController@deleteSiteInfo']);
});

Route::group(['namespace' => 'Site','prefix'=>'site-group'], function(){
    Route::get('list', ['as'=>'site-group-list','uses'=>'SiteGropuController@index']);
    Route::get('add', ['as'=>'site-group-create-form','uses'=>'SiteGropuController@createSiteGroupForm']);
    Route::post('add', ['as'=>'site-group-create','uses'=>'SiteGropuController@createSiteGroup']);
    Route::get('edit/{id}', ['as'=>'site-group-edit-form','uses'=>'SiteGropuController@editSiteGroupForm']);
    Route::patch('edit/{id}', ['as'=>'site-group-edit','uses'=>'SiteGropuController@editSiteGroup']);

});


Route::group(['namespace' => 'Site','prefix'=>'site-membership'], function(){
    Route::get('list', ['as'=>'site-membership-list','uses'=>'SiteMembershipController@index']);
    Route::get('add', ['as'=>'site-membership-create-form','uses'=>'SiteMembershipController@createSiteMembershipForm']);
    Route::post('add', ['as'=>'site-membership-create','uses'=>'SiteMembershipController@createSiteMembership']);
    Route::get('edit/{id}', ['as'=>'site-membership-edit-form','uses'=>'SiteMembershipController@editSiteMembershipForm']);
    Route::patch('edit/{id}', ['as'=>'site-membership-edit','uses'=>'SiteMembershipController@editSiteMembership']);

});

Route::group(['namespace' => 'SiteSetting','prefix'=>'site-setting'], function(){
    Route::get('list', ['as'=>'site-setting-list','uses'=>'SiteSettingController@index']);
    Route::get('add', ['as'=>'site-setting-add-form','uses'=>'SiteSettingController@createSiteSettingForm']);
    Route::post('add', ['as'=>'site-setting-create','uses'=>'SiteSettingController@createSiteSetting']);
    Route::get('view/{id}', ['as'=>'site-setting-view','uses'=>'SiteSettingController@viewSiteSetting']);
    Route::get('edit/{id}', ['as'=>'site-setting-edit-form','uses'=>'SiteSettingController@getSiteSettingEditForm']);
    Route::patch('edit/{id}', ['as'=>'site-setting-edit','uses'=>'SiteSettingController@editSiteSetting']);
    Route::get('delete/{id}', ['as'=>'site-setting-delete','uses'=>'SiteSettingController@deleteSiteSetting']);

});


Route::group(['namespace' => 'Settings','prefix'=>'settings'], function(){
    Route::get('view', ['as'=>'settings-view','uses'=>'SettingController@doSettings']);
});

Route::get('submit',[ 'as'=>'routname',function () {

    /*$allFiles = new RecursiveIteratorIterator(new RecursiveDirectoryIterator(base_path('app/Forms')));
    $phpFiles = new RegexIterator($allFiles, '/\.php$/');
    foreach ($phpFiles as $phpFile) {
        $content = file_get_contents($phpFile->getRealPath());
        $tokens = token_get_all($content);
        $namespace = '';
        for ($index = 0; isset($tokens[$index]); $index++) {
            if (!isset($tokens[$index][0])) {
                continue;
            }
            if (T_NAMESPACE === $tokens[$index][0]) {
                $index += 2; // Skip namespace keyword and whitespace
                while (isset($tokens[$index]) && is_array($tokens[$index])) {
                    $namespace .= $tokens[$index++][1];
                }
            }
            if (T_CLASS === $tokens[$index][0]) {
                $index += 2; // Skip class keyword and whitespace
                $fqcns[] = $namespace.'\\'.$tokens[$index][1];
            }
        }
    }
    $formNames = ['select'];
   foreach($fqcns as $fqcn){
       $jj = explode('\\',$fqcn);
       $formName = end($jj);

       $formNames[$fqcn] = $formName;

   }
    dd($formNames);*/

    /*$arr = explode(',','hello,gello');
    $jj = [];
    foreach($arr as $item){
        $jj [$item]= $item;
    }
    dd($jj) ;*/
//    dd(Route::currentRouteName());
//    dd(request()->user()->roles()->first()->id);

//    dd(Route::has('student-create'));

//    echo base_path('public/images').'<br>';
//    dd($_SERVER['DOCUMENT_ROOT']) ;
//$mainArr = [['a1','a2'],['b1','b2'],['c1','c2','c3']];
//$count = count($mainArr);
//    $arr = [];
//
//    foreach($mainArr as $avalue){
//
//        print '<pre>';
//        print_r($avalue);
//        print '</pre>';
////        foreach($mainArr[0] as $avalue){
////
////            foreach($mainArr[1] as $bvalue){
////
////                foreach($mainArr[2] as $cvalue){
////
////                    $arr[] = [$avalue,$bvalue,$cvalue];
////                }
////
////            }
////
////        }
//
//    }
//    $result = array_reduce($arr, 'array_merge', array());dd($result);
//

//    $user = (new \Erp\Models\User\User())->findOrFail(191);

//    $roleId = \DB::table('role_user')->select('role_id')->where(['user_id'=>191,'site_id'=>51])->first();dd($roleId);
//   dd(request()->user()->photos);

dd($_SERVER['DOCUMENT_ROOT']);
    \Mail::send('emails.email', ['user'=>'user'], function($m){
        $m->from('rajaftfl@outlook.com', 'Your Application');

        $m->to('sssamudra7@gmail.com', 'hello')->subject('Your Reminder!');
    });




}]);


