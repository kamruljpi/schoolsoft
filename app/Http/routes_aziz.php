<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 4/17/16
 * Time: 10:54 AM
 */


Route::group(['namespace' => 'Holiday','prefix'=>'holiday-type'], function(){
    Route::get('edit-form/{id}', ['as'=>'edit-holidaytype-form','uses'=>'HolydayController@editHolidayTypeForm']);
    Route::patch('edit/{id}', ['as'=>'edit-holidaytype','uses'=>'HolydayController@editHolidayType']);
    Route::get('view/{id}',['as'=>'view-holidaytype','uses'=>'HolydayController@viewHolidayType']);
    Route::get('delete/{id}', ['as'=>'delete-holidaytype','uses'=>'HolydayController@deleteHolidayType']);
});
Route::group(['namespace' => 'Holiday','prefix'=>'holyday'], function(){
    Route::get('edit-form/{id}', ['as'=>'edit-holiday-form','uses'=>'HolydayController@editHolidayForm']);
    Route::patch('edit/{id}', ['as'=>'edit-holiday','uses'=>'HolydayController@editHoliday']);
    Route::get('view/{id}',['as'=>'view-holiday','uses'=>'HolydayController@viewHoliday']);
    Route::get('delete/{id}', ['as'=>'delete-holiday','uses'=>'HolydayController@deleteHoliday']);
});

Route::group(['namespace' => 'Status','prefix'=>'status'], function(){
    Route::get('edit-form/{id}', ['as'=>'edit-status-form','uses'=>'StatusController@editStatusForm']);
    Route::patch('edit/{id}', ['as'=>'edit-status','uses'=>'StatusController@editStatus']);
});

Route::group(['namespace' => 'Teacher','prefix'=>'teacher'], function(){
    Route::get('list', ['as'=>'teacher-list','uses'=>'TeachersController@index']);
    Route::get('add', ['as'=>'teacher-add-form','uses'=>'TeachersController@createTeacherForm']);
    Route::post('add', ['as'=>'teacher-create','uses'=>'TeachersController@createTeacher']);
    Route::get('edit/{id}', ['as'=>'teacher-edit-form','uses'=>'TeachersController@editTeacherForm']);
    Route::patch('edit/{id}', ['as'=>'teacher-edit','uses'=>'TeachersController@editTeacher']);
    Route::get('view/{id}',['as'=>'teacher-view','uses'=>'TeachersController@viewTeacher']);
    Route::get('delete/{id}',['as'=>'teacher-delete','uses'=>'TeachersController@deleteTeacher']);
});

Route::group(['namespace' => 'Guardian','prefix'=>'guardian'], function(){
    Route::get('list', ['as'=>'guardian-list','uses'=>'GuardiansController@index']);
    Route::get('add', ['as'=>'guardian-add-form','uses'=>'GuardiansController@createGuardianForm']);
    Route::post('add', ['as'=>'guardian-create','uses'=>'GuardiansController@createGuardian']);
    Route::get('edit/{id}', ['as'=>'guardian-edit-form','uses'=>'GuardiansController@editGuardianForm']);
    Route::patch('edit/{id}', ['as'=>'guardian-edit','uses'=>'GuardiansController@editGuardian']);
    Route::get('view/{id}',['as'=>'guardian-view','uses'=>'GuardiansController@viewGuardian']);
    Route::get('delete/{id}',['as'=>'guardian-delete','uses'=>'GuardiansController@deleteGuardian']);
});

Route::group(['namespace' => 'StudentClass','prefix'=>'student-class'], function(){
    Route::get('add', ['as'=>'class-add-form','uses'=>'StudentClassController@createClassForm']);
    Route::post('add', ['as'=>'class-create','uses'=>'StudentClassController@createClass']);
    Route::get('list',['as'=>'class-list','uses'=>'StudentClassController@index']);
    Route::get('edit/{id}', ['as'=>'class-edit-form','uses'=>'StudentClassController@editClassForm']);
    Route::patch('edit/{id}', ['as'=>'class-edit','uses'=>'StudentClassController@editClass']);
    Route::get('delete/{id}',['as'=>'class-delete','uses'=>'StudentClassController@deleteClass']);
    Route::get('{classId}',['as'=>'class-section','uses'=>'StudentClassController@sectionOfClass']);
});

Route::group(['namespace' => 'Subject','prefix'=>'subject'], function(){
    Route::get('add', ['as'=>'subject-add-form','uses'=>'SubjectController@createSubjectForm']);
    Route::post('add', ['as'=>'subject-create','uses'=>'SubjectController@createSubject']);
    Route::get('list',['as'=>'subject-list','uses'=>'SubjectController@index']);
    Route::get('view/{id}', ['as'=>'subject-view','uses'=>'SubjectController@viewSubject']);
    Route::get('edit/{id}', ['as'=>'subject-edit-form','uses'=>'SubjectController@getSubjectEditForm']);
    Route::patch('edit/{id}', ['as'=>'subject-edit','uses'=>'SubjectController@editSubject']);
    Route::get('delete/{id}',['as'=>'subject-delete','uses'=>'SubjectController@deleteSubject']);
});

Route::group(['namespace' => 'SubjectGroup','prefix'=>'subject-group'], function(){
    Route::get('add', ['as'=>'subject-group-add-form','uses'=>'SubjectGroupController@createSubjectGroupForm']);
    Route::post('add', ['as'=>'subject-group-create','uses'=>'SubjectGroupController@createSubjectGroup']);
    Route::get('list',['as'=>'subject-group-list','uses'=>'SubjectGroupController@index']);
    Route::get('view/{id}', ['as'=>'subject-group-view','uses'=>'SubjectGroupController@viewSubjectGroup']);
    Route::get('edit/{id}', ['as'=>'subject-group-edit-form','uses'=>'SubjectGroupController@getSubjectGroupEditForm']);
    Route::patch('edit/{id}', ['as'=>'subject-group-edit','uses'=>'SubjectGroupController@editSubjectGroup']);
    Route::get('delete/{id}',['as'=>'subject-group-delete','uses'=>'SubjectGroupController@deleteSubjectGroup']);
    Route::get('subject-class',['as'=>'subject-class','uses'=>'SubjectGroupController@getSubjectTableByClass']);
    Route::get('subject-class-edit',['as'=>'subject-class-edit','uses'=>'SubjectGroupController@getSubjectTableByClassAndSubjectGroup']);
});

Route::group(['namespace' => 'Building','prefix'=>'building'], function(){
    Route::get('add', ['as'=>'building-add-form','uses'=>'BuildingController@createBuildingForm']);
    Route::post('add', ['as'=>'building-create','uses'=>'BuildingController@createBuilding']);
    Route::get('list',['as'=>'building-list','uses'=>'BuildingController@index']);
    Route::get('edit/{id}', ['as'=>'building-edit-form','uses'=>'BuildingController@getBuildingEditForm']);
    Route::patch('edit/{id}', ['as'=>'building-edit','uses'=>'BuildingController@editBuilding']);
    Route::get('delete/{id}',['as'=>'building-delete','uses'=>'BuildingController@deleteBuilding']);
});

Route::group(['namespace' => 'Floor','prefix'=>'floor'], function(){
    Route::get('add', ['as'=>'floor-add-form','uses'=>'FloorController@createFloorForm']);
    Route::post('add', ['as'=>'floor-create','uses'=>'FloorController@createFloor']);
    Route::get('list',['as'=>'floor-list','uses'=>'FloorController@index']);
    Route::get('edit/{id}', ['as'=>'floor-edit-form','uses'=>'FloorController@getFloorEditForm']);
    Route::patch('edit/{id}', ['as'=>'floor-edit','uses'=>'FloorController@editFloor']);
    Route::get('delete/{id}',['as'=>'floor-delete','uses'=>'FloorController@deleteFloor']);
    Route::get('{buildId}',['as'=>'floor-build','uses'=>'FloorController@floorOfBuilding']);
});

Route::group(['namespace' => 'Room','prefix'=>'room'], function(){
    Route::get('add', ['as'=>'room-add-form','uses'=>'RoomController@createRoomForm']);
    Route::post('add', ['as'=>'room-create','uses'=>'RoomController@createRoom']);
    Route::get('list',['as'=>'room-list','uses'=>'RoomController@index']);
    Route::get('edit/{id}', ['as'=>'room-edit-form','uses'=>'RoomController@getRoomEditForm']);
    Route::patch('edit/{id}', ['as'=>'room-edit','uses'=>'RoomController@editRoom']);
    Route::get('delete/{id}',['as'=>'room-delete','uses'=>'RoomController@deleteRoom']);
    Route::get('{floorId}',['as'=>'room-floor','uses'=>'RoomController@roomOfFloor']);
});

Route::group(['namespace' => 'Routine','prefix'=>'routine'], function(){
    Route::get('add', ['as'=>'routine-add-form','uses'=>'RoutineController@createRoutineForm']);
    Route::post('add', ['as'=>'routine-create','uses'=>'RoutineController@createRoutine']);
    Route::get('list',['as'=>'routine-list','uses'=>'RoutineController@index']);
    Route::get('view/{id}', ['as'=>'routine-view','uses'=>'RoutineController@viewRoutine']);
    Route::get('edit/{id}', ['as'=>'routine-edit-form','uses'=>'RoutineController@getRoutineEditForm']);
    Route::patch('edit/{id}', ['as'=>'routine-edit','uses'=>'RoutineController@editRoutine']);
    Route::get('delete/{id}',['as'=>'routine-delete','uses'=>'RoutineController@deleteRoutine']);
});

Route::group(['namespace' => 'Examination','prefix'=>'examination'], function(){
    Route::get('add', ['as'=>'examination-add-form','uses'=>'ExaminationController@createExaminationForm']);
    Route::post('add', ['as'=>'examination-create','uses'=>'ExaminationController@createExamination']);
    Route::get('list',['as'=>'examination-list','uses'=>'ExaminationController@index']);
    Route::get('view/{id}', ['as'=>'examination-view','uses'=>'ExaminationController@viewExamination']);
    Route::get('edit/{id}', ['as'=>'examination-edit-form','uses'=>'ExaminationController@getExaminationEditForm']);
    Route::patch('edit/{id}', ['as'=>'examination-edit','uses'=>'ExaminationController@editExamination']);
    Route::get('delete/{id}',['as'=>'examination-delete','uses'=>'ExaminationController@deleteExamination']);
});

Route::group(['namespace' => 'Examination','prefix'=>'examinationschedule'], function(){
    Route::get('add', ['as'=>'examinationSchedule-add-form','uses'=>'ExaminationController@createExaminationScheduleForm']);
    Route::post('add', ['as'=>'examinationSchedule-create','uses'=>'ExaminationController@createExaminationSchedule']);
    Route::get('list',['as'=>'examinationSchedule-list','uses'=>'ExaminationController@examinationScheduleList']);
    Route::get('view/{id}', ['as'=>'examinationSchedule-view','uses'=>'ExaminationController@viewExaminationSchedule']);
    Route::get('edit/{id}', ['as'=>'examinationSchedule-edit-form','uses'=>'ExaminationController@getExaminationScheduleEditForm']);
    Route::patch('edit/{id}', ['as'=>'examinationSchedule-edit','uses'=>'ExaminationController@editExaminationSchedule']);
    Route::get('delete/{id}',['as'=>'examinationSchedule-delete','uses'=>'ExaminationController@deleteExaminationSchedule']);
});

Route::group(['namespace' => 'Country','prefix'=>'country'], function(){
    Route::get('list', ['as'=>'country-list','uses'=>'CountryController@index']);
    Route::get('add', ['as'=>'country-add-form','uses'=>'CountryController@createCountryForm']);
    Route::post('add', ['as'=>'country-create','uses'=>'CountryController@createCountry']);
    Route::get('view/{id}', ['as'=>'country-view','uses'=>'CountryController@viewCountry']);
    Route::get('edit/{id}', ['as'=>'country-edit-form','uses'=>'CountryController@getCountryEditForm']);
    Route::patch('edit/{id}', ['as'=>'country-edit','uses'=>'CountryController@editCountry']);
    Route::get('delete/{id}', ['as'=>'country-delete','uses'=>'CountryController@deleteCountry']);
});

Route::group(['namespace' => 'Division','prefix'=>'division'], function(){
    Route::get('list', ['as'=>'division-list','uses'=>'DivisionController@index']);
    Route::get('add', ['as'=>'division-add-form','uses'=>'DivisionController@createDivisionForm']);
    Route::post('add', ['as'=>'division-create','uses'=>'DivisionController@createDivision']);
    Route::get('view/{id}', ['as'=>'division-view','uses'=>'DivisionController@viewDivision']);
    Route::get('edit/{id}', ['as'=>'division-edit-form','uses'=>'DivisionController@getDivisionEditForm']);
    Route::patch('edit/{id}', ['as'=>'division-edit','uses'=>'DivisionController@editDivision']);
    Route::get('delete/{id}', ['as'=>'division-delete','uses'=>'DivisionController@deleteDivision']);
});

Route::group(['namespace' => 'District','prefix'=>'district'], function(){
    Route::get('list', ['as'=>'district-list','uses'=>'DistrictController@index']);
    Route::get('add', ['as'=>'district-add-form','uses'=>'DistrictController@createDistrictForm']);
    Route::post('add', ['as'=>'district-create','uses'=>'DistrictController@createDistrict']);
    Route::get('view/{id}', ['as'=>'district-view','uses'=>'DistrictController@viewDistrict']);
    Route::get('edit/{id}', ['as'=>'district-edit-form','uses'=>'DistrictController@getDistrictEditForm']);
    Route::patch('edit/{id}', ['as'=>'district-edit','uses'=>'DistrictController@editDistrict']);
    Route::get('delete/{id}', ['as'=>'district-delete','uses'=>'DistrictController@deleteDistrict']);
});

Route::group(['namespace' => 'Result','prefix'=>'result-system'], function(){
    Route::get('list',['as'=>'result-system-list','uses'=>'ResultController@index']);
//    Route::get('edit/{id}', ['as'=>'result-system-edit-form','uses'=>'ResultController@getResultSystemEditForm']);
//    Route::patch('edit/{id}', ['as'=>'result-system-edit','uses'=>'ResultController@editResultSystem']);
//    Route::get('delete/{id}', ['as'=>'result-system-delete','uses'=>'ResultController@deleteResultSystem']);
    Route::get('view/{id}', ['as'=>'result-system-view','uses'=>'ResultController@viewResultSystem']);

});

Route::group(['namespace' => 'Student','prefix'=>'report'], function(){
    Route::get('student-id-card',['as'=>'report-student-id-card','uses'=>'StudentController@idCardPage']);
    Route::get('student-admit-card',['as'=>'report-student-admit-card','uses'=>'StudentController@admitCardPage']);
    Route::get('testimonial',['as'=>'report-testimonial','uses'=>'StudentController@testimonialPage']);
    Route::get('tc',['as'=>'report-tc','uses'=>'StudentController@tcPage']);
    Route::get('clearance',['as'=>'report-clearance','uses'=>'StudentController@clearancePage']);
    Route::get('certification',['as'=>'report-certification','uses'=>'StudentController@certificationPage']);
    Route::get('{sectionId}',['as'=>'report-section','uses'=>'StudentController@studentOfSection']);
    Route::get('student-id-card-report/{studentClassId}/{sectionId}/{studentId}',['as'=>'student-id-card-details','uses'=>'StudentController@studentIdCard']);
    Route::get('student-admit-card-report/{examinationId}/{studentClassId}/{sectionId}/{studentId}',['as'=>'student-admit-card-details','uses'=>'StudentController@studentAdmitCard']);
    Route::get('testimonial-report/{studentClassId}/{sectionId}/{studentId}',['as'=>'testimonial-details','uses'=>'StudentController@studentTestimonial']);
    Route::get('tc-report/{applicationSubject}/{studentClassId}/{sectionId}/{studentId}',['as'=>'tc-details','uses'=>'StudentController@studentTc']);
    Route::get('clearance-report/{studentClassId}/{sectionId}/{studentId}',['as'=>'clearance-details','uses'=>'StudentController@studentClearance']);
    Route::get('certification-report/{studentClassId}/{sectionId}/{studentId}',['as'=>'certification-details','uses'=>'StudentController@studentCertification']);
});

Route::group(['namespace' => 'Notice','prefix'=>'notice'], function(){
    Route::get('list', ['as'=>'notice-list','uses'=>'NoticesController@index']);
    Route::get('add', ['as'=>'notice-add-form','uses'=>'NoticesController@createNoticeForm']);
    Route::post('add', ['as'=>'notice-create','uses'=>'NoticesController@createNotice']);
    Route::get('view/{id}', ['as'=>'notice-view','uses'=>'NoticesController@viewNotice']);
    Route::get('edit/{id}', ['as'=>'notice-edit-form','uses'=>'NoticesController@getNoticeEditForm']);
    Route::patch('edit/{id}', ['as'=>'notice-edit','uses'=>'NoticesController@editNotice']);
    Route::get('delete/{id}', ['as'=>'notice-delete','uses'=>'NoticesController@deleteNotice']);
});

Route::group(['namespace' => 'Notice','prefix'=>'message'], function(){
    Route::get('list', ['as'=>'message-index','uses'=>'NoticesController@messageIndex']);
    Route::get('sent', ['as'=>'message-sent','uses'=>'NoticesController@messageSent']);
    Route::get('inbox', ['as'=>'message-inbox','uses'=>'NoticesController@messageInbox']);
    Route::get('trash', ['as'=>'message-trash','uses'=>'NoticesController@messageTrash']);
    Route::get('trash-view/{id}', ['as'=>'message-trash-view','uses'=>'NoticesController@viewTrashMessage']);
    Route::get('add', ['as'=>'message-add-form','uses'=>'NoticesController@createMessageForm']);
    Route::post('add', ['as'=>'message-create','uses'=>'NoticesController@createMessage']);
    Route::get('{roleId}',['as'=>'message-user-list','uses'=>'NoticesController@userOfRole']);
    Route::get('view/{id}', ['as'=>'message-view','uses'=>'NoticesController@viewMessage']);
    Route::get('edit/{id}', ['as'=>'message-edit-form','uses'=>'NoticesController@getMessageEditForm']);
    Route::patch('edit/{id}', ['as'=>'message-edit','uses'=>'NoticesController@editMessage']);
    Route::get('delete/{id}', ['as'=>'message-delete','uses'=>'NoticesController@deleteMessage']);
});

Route::group(['namespace' => 'AccountType','prefix'=>'account-type'], function(){
    Route::get('list', ['as'=>'account-type-list','uses'=>'AccountTypeController@index']);
    Route::get('add', ['as'=>'account-type-add-form','uses'=>'AccountTypeController@createAccountTypeForm']);
    Route::post('add', ['as'=>'account-type-create','uses'=>'AccountTypeController@createAccountType']);
    Route::get('view/{id}', ['as'=>'account-type-view','uses'=>'AccountTypeController@viewAccountType']);
    Route::get('edit/{id}', ['as'=>'account-type-edit-form','uses'=>'AccountTypeController@getAccountTypeEditForm']);
    Route::patch('edit/{id}', ['as'=>'account-type-edit','uses'=>'AccountTypeController@editAccountType']);
    Route::get('delete/{id}', ['as'=>'account-type-delete','uses'=>'AccountTypeController@deleteAccountType']);
});

Route::group(['namespace' => 'AmountType','prefix'=>'amount-type'], function(){
    Route::get('list', ['as'=>'amount-type-list','uses'=>'AmountTypeController@index']);
    Route::get('add', ['as'=>'amount-type-add-form','uses'=>'AmountTypeController@createAmountTypeForm']);
    Route::post('add', ['as'=>'amount-type-create','uses'=>'AmountTypeController@createAmountType']);
    Route::get('edit/{id}', ['as'=>'amount-type-edit-form','uses'=>'AmountTypeController@getAmountTypeEditForm']);
    Route::patch('edit/{id}', ['as'=>'amount-type-edit','uses'=>'AmountTypeController@editAmountType']);
    Route::get('delete/{id}', ['as'=>'amount-type-delete','uses'=>'AmountTypeController@deleteAmountType']);
});

Route::group(['namespace' => 'AmountCategory','prefix'=>'amount-category'], function(){
    Route::get('list', ['as'=>'amount-category-list','uses'=>'AmountCategoryController@index']);
    Route::get('add', ['as'=>'amount-category-add-form','uses'=>'AmountCategoryController@createAmountCategoryForm']);
    Route::post('add', ['as'=>'amount-category-create','uses'=>'AmountCategoryController@createAmountCategory']);
    Route::get('edit/{id}', ['as'=>'amount-category-edit-form','uses'=>'AmountCategoryController@getAmountCategoryEditForm']);
    Route::patch('edit/{id}', ['as'=>'amount-category-edit','uses'=>'AmountCategoryController@editAmountCategory']);
    Route::get('delete/{id}', ['as'=>'amount-category-delete','uses'=>'AmountCategoryController@deleteAmountCategory']);
});

Route::group(['namespace' => 'Account','prefix'=>'account'], function(){
    Route::get('list', ['as'=>'account-list','uses'=>'AccountController@index']);
    Route::get('add', ['as'=>'account-add-form','uses'=>'AccountController@createAccountForm']);
    Route::post('add', ['as'=>'account-create','uses'=>'AccountController@createAccount']);
    Route::get('edit/{id}', ['as'=>'account-edit-form','uses'=>'AccountController@getAccountEditForm']);
    Route::patch('edit/{id}', ['as'=>'account-edit','uses'=>'AccountController@editAccount']);
    Route::get('view/{id}', ['as'=>'account-view','uses'=>'AccountController@viewAccount']);
    Route::get('receipt/{id}', ['as'=>'account-receipt','uses'=>'AccountController@receiptAccount']);
    Route::get('delete/{id}', ['as'=>'account-delete','uses'=>'AccountController@deleteAccount']);
    Route::get('reports',['as'=>'account-report','uses'=>'AccountController@accountReportPage']);
    Route::get('{roleId}',['as'=>'account-user-list','uses'=>'AccountController@userOfRole']);
    Route::get('account-report/{receiptNo}/{roleId}/{userId}/{accountTypeId}/{amountTypeId}/{amountCategoryId}/{fromDate}/{toDate}',['as'=>'account-report-details','uses'=>'AccountController@accountReport']);
});

Route::group(['namespace' => 'Event','prefix'=>'event'], function(){
    Route::get('list', ['as'=>'event-list','uses'=>'EventController@index']);
    Route::get('add', ['as'=>'event-add-form','uses'=>'EventController@createEventForm']);
    Route::post('add', ['as'=>'event-create','uses'=>'EventController@createEvent']);
    Route::get('edit/{id}', ['as'=>'event-edit-form','uses'=>'EventController@getEventEditForm']);
    Route::patch('edit/{id}', ['as'=>'event-edit','uses'=>'EventController@editEvent']);
    Route::get('view/{id}', ['as'=>'event-view','uses'=>'EventController@viewEvent']);
    Route::get('delete/{id}', ['as'=>'event-delete','uses'=>'EventController@deleteEvent']);
});

Route::group(['namespace' => 'GeneralReport','prefix'=>'general-report'], function(){
    Route::get('reports',['as'=>'general-report-page','uses'=>'GeneralReportController@generalReportPage']);
    Route::get('teacher-report',['as'=>'general-report-teacher','uses'=>'GeneralReportController@generateTeacherReport']);
    Route::get('student-report',['as'=>'general-report-student','uses'=>'GrController@generateStudentReport']);
    Route::get('routine-report',['as'=>'general-report-routine','uses'=>'GeneralReportController@generateRoutineReport']);
    Route::get('exam-report',['as'=>'general-report-exam','uses'=>'GeneralReportController@generateExamRoutineReport']);
    Route::get('tabulation-sheet',['as'=>'tabulation-sheet-page','uses'=>'GeneralReportController@tabulationSheetPage']);
    Route::get('tabulation-report',['as'=>'tabulation-sheet-report','uses'=>'GeneralReportController@generateTabulationSheetReport']);
    Route::get('student-list-by-departmentId',['as'=>'student-list-by-departmentId','uses'=>'GrController@studentOfDepartment']);
    Route::get('student-list-by-sectionId-departmentId',['as'=>'student-list-by-sectionId-departmentId','uses'=>'GrController@studentOfDepartmentWithSection']);
    //Route::get('account-report/{roleId}/{userId}/{accountTypeId}/{amountTypeId}/{amountCategoryId}/{fromDate}/{toDate}',['as'=>'account-report-details','uses'=>'AccountController@accountReport']);
});

Route::group(['namespace' => 'BookCategory','prefix'=>'book-category'], function(){
    Route::get('list', ['as'=>'book-category-list','uses'=>'BookCategoryController@index']);
    Route::get('add', ['as'=>'book-category-add-form','uses'=>'BookCategoryController@createBookCategoryForm']);
    Route::post('add', ['as'=>'book-category-create','uses'=>'BookCategoryController@createBookCategory']);
    Route::get('edit/{id}', ['as'=>'book-category-edit-form','uses'=>'BookCategoryController@getBookCategoryEditForm']);
    Route::patch('edit/{id}', ['as'=>'book-category-edit','uses'=>'BookCategoryController@editBookCategory']);
    Route::get('delete/{id}', ['as'=>'book-category-delete','uses'=>'BookCategoryController@deleteBookCategory']);
});

Route::group(['namespace' => 'Author','prefix'=>'author'], function(){
    Route::get('list', ['as'=>'author-list','uses'=>'AuthorController@index']);
    Route::get('add', ['as'=>'author-add-form','uses'=>'AuthorController@createAuthorForm']);
    Route::post('add', ['as'=>'author-create','uses'=>'AuthorController@createAuthor']);
    Route::get('view/{id}', ['as'=>'author-view','uses'=>'AuthorController@viewAuthor']);
    Route::get('edit/{id}', ['as'=>'author-edit-form','uses'=>'AuthorController@getAuthorEditForm']);
    Route::patch('edit/{id}', ['as'=>'author-edit','uses'=>'AuthorController@editAuthor']);
    Route::get('delete/{id}', ['as'=>'author-delete','uses'=>'AuthorController@deleteAuthor']);
});

Route::group(['namespace' => 'Rack','prefix'=>'rack'], function(){
    Route::get('list', ['as'=>'rack-list','uses'=>'RackController@index']);
    Route::get('add', ['as'=>'rack-add-form','uses'=>'RackController@createRackForm']);
    Route::post('add', ['as'=>'rack-create','uses'=>'RackController@createRack']);
//    Route::get('view/{id}', ['as'=>'rack-view','uses'=>'RackController@viewRack']);
    Route::get('edit/{id}', ['as'=>'rack-edit-form','uses'=>'RackController@getRackEditForm']);
    Route::patch('edit/{id}', ['as'=>'rack-edit','uses'=>'RackController@editRack']);
    Route::get('delete/{id}', ['as'=>'rack-delete','uses'=>'RackController@deleteRack']);
});

Route::group(['namespace' => 'Book','prefix'=>'book'], function(){
    Route::get('list', ['as'=>'book-list','uses'=>'BookController@index']);
    Route::get('add', ['as'=>'book-add-form','uses'=>'BookController@createBookForm']);
    Route::post('add', ['as'=>'book-create','uses'=>'BookController@createBook']);
    Route::get('view/{id}', ['as'=>'book-view','uses'=>'BookController@viewBook']);
    Route::get('edit/{id}', ['as'=>'book-edit-form','uses'=>'BookController@getBookEditForm']);
    Route::patch('edit/{id}', ['as'=>'book-edit','uses'=>'BookController@editBook']);
    Route::get('delete/{id}', ['as'=>'book-delete','uses'=>'BookController@deleteBook']);
});

Route::group(['namespace' => 'Training','prefix'=>'training'], function(){
    Route::get('list', ['as'=>'training-list','uses'=>'TrainingController@index']);
    Route::get('add', ['as'=>'training-add-form','uses'=>'TrainingController@createTrainingForm']);
    Route::post('add', ['as'=>'training-create','uses'=>'TrainingController@createTraining']);
    Route::get('view/{id}', ['as'=>'training-view','uses'=>'TrainingController@viewTraining']);
    Route::get('edit/{id}', ['as'=>'training-edit-form','uses'=>'TrainingController@getTrainingEditForm']);
    Route::patch('edit/{id}', ['as'=>'training-edit','uses'=>'TrainingController@editTraining']);
    Route::get('delete/{id}', ['as'=>'training-delete','uses'=>'TrainingController@deleteTraining']);
});

Route::group(['namespace' => 'ProfessionalQualification','prefix'=>'professional-qualification'], function(){
    Route::get('list', ['as'=>'professional-qualification-list','uses'=>'ProfessionalQualificationController@index']);
    Route::get('add', ['as'=>'professional-qualification-add-form','uses'=>'ProfessionalQualificationController@createProfessionalQualificationForm']);
    Route::post('add', ['as'=>'professional-qualification-create','uses'=>'ProfessionalQualificationController@createProfessionalQualification']);
    Route::get('view/{id}', ['as'=>'professional-qualification-view','uses'=>'ProfessionalQualificationController@viewProfessionalQualification']);
    Route::get('edit/{id}', ['as'=>'professional-qualification-edit-form','uses'=>'ProfessionalQualificationController@getProfessionalQualificationEditForm']);
    Route::patch('edit/{id}', ['as'=>'professional-qualification-edit','uses'=>'ProfessionalQualificationController@editProfessionalQualification']);
    Route::get('delete/{id}', ['as'=>'professional-qualification-delete','uses'=>'ProfessionalQualificationController@deleteProfessionalQualification']);
});

Route::group(['namespace' => 'BusinessType','prefix'=>'business-type'], function(){
    Route::get('list', ['as'=>'business-type-list','uses'=>'BusinessTypeController@index']);
    Route::get('add', ['as'=>'business-type-add-form','uses'=>'BusinessTypeController@createBusinessTypeForm']);
    Route::post('add', ['as'=>'business-type-create','uses'=>'BusinessTypeController@createBusinessType']);
//    Route::get('view/{id}', ['as'=>'business-type-view','uses'=>'BusinessTypeController@viewBusinessType']);
    Route::get('edit/{id}', ['as'=>'business-type-edit-form','uses'=>'BusinessTypeController@getBusinessTypeEditForm']);
    Route::patch('edit/{id}', ['as'=>'business-type-edit','uses'=>'BusinessTypeController@editBusinessType']);
    Route::get('delete/{id}', ['as'=>'business-type-delete','uses'=>'BusinessTypeController@deleteBusinessType']);
});

Route::group(['namespace' => 'ExperienceCategory','prefix'=>'experience-category'], function(){
    Route::get('list', ['as'=>'experience-category-list','uses'=>'ExperienceCategoryController@index']);
    Route::get('add', ['as'=>'experience-category-add-form','uses'=>'ExperienceCategoryController@createExperienceCategoryForm']);
    Route::post('add', ['as'=>'experience-category-create','uses'=>'ExperienceCategoryController@createExperienceCategory']);
//    Route::get('view/{id}', ['as'=>'experience-category-view','uses'=>'ExperienceCategoryController@viewExperienceCategory']);
    Route::get('edit/{id}', ['as'=>'experience-category-edit-form','uses'=>'ExperienceCategoryController@getExperienceCategoryEditForm']);
    Route::patch('edit/{id}', ['as'=>'experience-category-edit','uses'=>'ExperienceCategoryController@editExperienceCategory']);
    Route::get('delete/{id}', ['as'=>'experience-category-delete','uses'=>'ExperienceCategoryController@deleteExperienceCategory']);
    Route::get('{experienceCategoryId}',['as'=>'category-experience','uses'=>'ExperienceCategoryController@experienceOfExperienceCategory']);
});

Route::group(['namespace' => 'Experience','prefix'=>'experience'], function(){
    Route::get('list', ['as'=>'experience-list','uses'=>'ExperienceController@index']);
    Route::get('add', ['as'=>'experience-add-form','uses'=>'ExperienceController@createExperienceForm']);
    Route::post('add', ['as'=>'experience-create','uses'=>'ExperienceController@createExperience']);
//    Route::get('view/{id}', ['as'=>'experience-view','uses'=>'ExperienceController@viewExperience']);
    Route::get('edit/{id}', ['as'=>'experience-edit-form','uses'=>'ExperienceController@getExperienceEditForm']);
    Route::patch('edit/{id}', ['as'=>'experience-edit','uses'=>'ExperienceController@editExperience']);
    Route::get('delete/{id}', ['as'=>'experience-delete','uses'=>'ExperienceController@deleteExperience']);
});

Route::group(['namespace' => 'SkillCategory','prefix'=>'skill-category'], function(){
    Route::get('list', ['as'=>'skill-category-list','uses'=>'SkillCategoryController@index']);
    Route::get('add', ['as'=>'skill-category-add-form','uses'=>'SkillCategoryController@createSkillCategoryForm']);
    Route::post('add', ['as'=>'skill-category-create','uses'=>'SkillCategoryController@createSkillCategory']);
//    Route::get('view/{id}', ['as'=>'skill-category-view','uses'=>'SkillCategoryController@viewSkillCategory']);
    Route::get('edit/{id}', ['as'=>'skill-category-edit-form','uses'=>'SkillCategoryController@getSkillCategoryEditForm']);
    Route::patch('edit/{id}', ['as'=>'skill-category-edit','uses'=>'SkillCategoryController@editSkillCategory']);
    Route::get('delete/{id}', ['as'=>'skill-category-delete','uses'=>'SkillCategoryController@deleteSkillCategory']);
    Route::get('{skillCategoryId}',['as'=>'category-skill','uses'=>'SkillCategoryController@skillOfSkillCategory']);
});

Route::group(['namespace' => 'Skill','prefix'=>'skill'], function(){
    Route::get('list', ['as'=>'skill-list','uses'=>'SkillController@index']);
    Route::get('add', ['as'=>'skill-add-form','uses'=>'SkillController@createSkillForm']);
    Route::post('add', ['as'=>'skill-create','uses'=>'SkillController@createSkill']);
//    Route::get('view/{id}', ['as'=>'skill-view','uses'=>'SkillController@viewSkill']);
    Route::get('edit/{id}', ['as'=>'skill-edit-form','uses'=>'SkillController@getSkillEditForm']);
    Route::patch('edit/{id}', ['as'=>'skill-edit','uses'=>'SkillController@editSkill']);
    Route::get('delete/{id}', ['as'=>'skill-delete','uses'=>'SkillController@deleteSkill']);
});

Route::group(['namespace' => 'CvLanguage','prefix'=>'cv-language'], function(){
    Route::get('list', ['as'=>'cv-language-list','uses'=>'CvLanguageController@index']);
    Route::get('add', ['as'=>'cv-language-add-form','uses'=>'CvLanguageController@createCvLanguageForm']);
    Route::post('add', ['as'=>'cv-language-create','uses'=>'CvLanguageController@createCvLanguage']);
//    Route::get('view/{id}', ['as'=>'cv-language-view','uses'=>'CvLanguageController@viewCvLanguage']);
    Route::get('edit/{id}', ['as'=>'cv-language-edit-form','uses'=>'CvLanguageController@getCvLanguageEditForm']);
    Route::patch('edit/{id}', ['as'=>'cv-language-edit','uses'=>'CvLanguageController@editCvLanguage']);
    Route::get('delete/{id}', ['as'=>'cv-language-delete','uses'=>'CvLanguageController@deleteCvLanguage']);
});

Route::group(['namespace' => 'CvLanguageSkill','prefix'=>'cv-language-skill'], function(){
    Route::get('list', ['as'=>'cv-language-skill-list','uses'=>'CvLanguageSkillController@index']);
    Route::get('add', ['as'=>'cv-language-skill-add-form','uses'=>'CvLanguageSkillController@createCvLanguageSkillForm']);
    Route::post('add', ['as'=>'cv-language-skill-create','uses'=>'CvLanguageSkillController@createCvLanguageSkill']);
//    Route::get('view/{id}', ['as'=>'cv-language-skill-view','uses'=>'CvLanguageSkillController@viewCvLanguageSkill']);
    Route::get('edit/{id}', ['as'=>'cv-language-skill-edit-form','uses'=>'CvLanguageSkillController@getCvLanguageSkillEditForm']);
    Route::patch('edit/{id}', ['as'=>'cv-language-skill-edit','uses'=>'CvLanguageSkillController@editCvLanguageSkill']);
    Route::get('delete/{id}', ['as'=>'cv-language-skill-delete','uses'=>'CvLanguageSkillController@deleteCvLanguageSkill']);
});

Route::group(['namespace' => 'Relation','prefix'=>'relation'], function(){
    Route::get('list', ['as'=>'relation-list','uses'=>'RelationController@index']);
    Route::get('add', ['as'=>'relation-add-form','uses'=>'RelationController@createRelationForm']);
    Route::post('add', ['as'=>'relation-create','uses'=>'RelationController@createRelation']);
//    Route::get('view/{id}', ['as'=>'relation-view','uses'=>'RelationController@viewRelation']);
    Route::get('edit/{id}', ['as'=>'relation-edit-form','uses'=>'RelationController@getRelationEditForm']);
    Route::patch('edit/{id}', ['as'=>'relation-edit','uses'=>'RelationController@editRelation']);
    Route::get('delete/{id}', ['as'=>'relation-delete','uses'=>'RelationController@deleteRelation']);
});

Route::group(['namespace' => 'Reference','prefix'=>'reference'], function(){
    Route::get('list', ['as'=>'reference-list','uses'=>'ReferenceController@index']);
    Route::get('add', ['as'=>'reference-add-form','uses'=>'ReferenceController@createReferenceForm']);
    Route::post('add', ['as'=>'reference-create','uses'=>'ReferenceController@createReference']);
    Route::get('view/{id}', ['as'=>'reference-view','uses'=>'ReferenceController@viewReference']);
    Route::get('edit/{id}', ['as'=>'reference-edit-form','uses'=>'ReferenceController@getReferenceEditForm']);
    Route::patch('edit/{id}', ['as'=>'reference-edit','uses'=>'ReferenceController@editReference']);
    Route::get('delete/{id}', ['as'=>'reference-delete','uses'=>'ReferenceController@deleteReference']);
});

Route::group(['namespace' => 'EmploymentHistory','prefix'=>'employment-history'], function(){
    Route::get('list', ['as'=>'employment-history-list','uses'=>'EmploymentHistoryController@index']);
    Route::get('add', ['as'=>'employment-history-add-form','uses'=>'EmploymentHistoryController@createEmploymentHistoryForm']);
    Route::post('add', ['as'=>'employment-history-create','uses'=>'EmploymentHistoryController@createEmploymentHistory']);
    Route::get('view/{id}', ['as'=>'employment-history-view','uses'=>'EmploymentHistoryController@viewEmploymentHistory']);
    Route::get('edit/{id}', ['as'=>'employment-history-edit-form','uses'=>'EmploymentHistoryController@getEmploymentHistoryEditForm']);
    Route::patch('edit/{id}', ['as'=>'employment-history-edit','uses'=>'EmploymentHistoryController@editEmploymentHistory']);
    Route::get('delete/{id}', ['as'=>'employment-history-delete','uses'=>'EmploymentHistoryController@deleteEmploymentHistory']);
});

Route::group(['namespace' => 'Specialization','prefix'=>'specialization'], function(){
    Route::get('list', ['as'=>'specialization-list','uses'=>'SpecializationController@index']);
    Route::get('add', ['as'=>'specialization-add-form','uses'=>'SpecializationController@createSpecializationForm']);
    Route::post('add', ['as'=>'specialization-create','uses'=>'SpecializationController@createSpecialization']);
    Route::get('view/{id}', ['as'=>'specialization-view','uses'=>'SpecializationController@viewSpecialization']);
    Route::get('edit/{id}', ['as'=>'specialization-edit-form','uses'=>'SpecializationController@getSpecializationEditForm']);
    Route::patch('edit/{id}', ['as'=>'specialization-edit','uses'=>'SpecializationController@editSpecialization']);
    Route::get('delete/{id}', ['as'=>'specialization-delete','uses'=>'SpecializationController@deleteSpecialization']);
});

Route::group(['namespace' => 'EducationLevel','prefix'=>'education-level'], function(){
    Route::get('list', ['as'=>'education-level-list','uses'=>'EducationLevelController@index']);
    Route::get('add', ['as'=>'education-level-add-form','uses'=>'EducationLevelController@createEducationLevelForm']);
    Route::post('add', ['as'=>'education-level-create','uses'=>'EducationLevelController@createEducationLevel']);
    Route::get('edit/{id}', ['as'=>'education-level-edit-form','uses'=>'EducationLevelController@getEducationLevelEditForm']);
    Route::patch('edit/{id}', ['as'=>'education-level-edit','uses'=>'EducationLevelController@editEducationLevel']);
    Route::get('delete/{id}', ['as'=>'education-level-delete','uses'=>'EducationLevelController@deleteEducationLevel']);
});

Route::group(['namespace' => 'AcademicQualification','prefix'=>'academic-qualification'], function(){
    Route::get('list', ['as'=>'academic-qualification-list','uses'=>'AcademicQualificationController@index']);
    Route::get('add', ['as'=>'academic-qualification-add-form','uses'=>'AcademicQualificationController@createAcademicQualificationForm']);
    Route::post('add', ['as'=>'academic-qualification-create','uses'=>'AcademicQualificationController@createAcademicQualification']);
    Route::get('view/{id}', ['as'=>'academic-qualification-view','uses'=>'AcademicQualificationController@viewAcademicQualification']);
    Route::get('edit/{id}', ['as'=>'academic-qualification-edit-form','uses'=>'AcademicQualificationController@getAcademicQualificationEditForm']);
    Route::patch('edit/{id}', ['as'=>'academic-qualification-edit','uses'=>'AcademicQualificationController@editAcademicQualification']);
    Route::get('delete/{id}', ['as'=>'academic-qualification-delete','uses'=>'AcademicQualificationController@deleteAcademicQualification']);
});

Route::group(['namespace' => 'Office','prefix'=>'office'], function(){
    Route::get('report',['as'=>'site-report','uses'=>'OfficeController@siteReportPage']);
    Route::get('generate-site-report',['as'=>'official-site-report','uses'=>'OfficeController@generateSiteReport']);
    Route::get('generate-site-report-view',['as'=>'official-site-report-view','uses'=>'OfficeController@generateSiteReportView']);
});

Route::group(['namespace' => 'SiteAmountReceive','prefix'=>'site-amount-receive'], function(){
    Route::get('list', ['as'=>'site-amount-receive-list','uses'=>'SiteAmountReceiveController@index']);
    Route::get('add', ['as'=>'site-amount-receive-add-form','uses'=>'SiteAmountReceiveController@createSiteAmountReceiveForm']);
    Route::post('add', ['as'=>'site-amount-receive-create','uses'=>'SiteAmountReceiveController@createSiteAmountReceive']);
    Route::get('view/{id}', ['as'=>'site-amount-receive-view','uses'=>'SiteAmountReceiveController@viewSiteAmountReceive']);
    Route::get('edit/{id}', ['as'=>'site-amount-receive-edit-form','uses'=>'SiteAmountReceiveController@getSiteAmountReceiveEditForm']);
    Route::patch('edit/{id}', ['as'=>'site-amount-receive-edit','uses'=>'SiteAmountReceiveController@editSiteAmountReceive']);
    Route::get('delete/{id}', ['as'=>'site-amount-receive-delete','uses'=>'SiteAmountReceiveController@deleteSiteAmountReceive']);
});

Route::group(['namespace' => 'StudentReport','prefix'=>'student-report'], function(){
    Route::get('reports',['as'=>'student-report-page','uses'=>'StudentReportController@studentReportPage']);
    Route::get('routine-report',['as'=>'student-report-routine','uses'=>'StudentReportController@generateClassRoutineReport']);
    Route::get('exam-report',['as'=>'student-report-exam','uses'=>'StudentReportController@generateExamRoutineReport']);
    Route::get('account-report',['as'=>'student-report-account','uses'=>'StudentReportController@generateStudentAccountReport']);
    Route::get('testimonial-report',['as'=>'student-report-testimonial','uses'=>'StudentReportController@generateStudentTestimonialReport']);
});