<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 4/24/2016
 * Time: 10:39 AM
 */
namespace Erp\Models\Guardian;

use Dimsav\Translatable\Translatable;
use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Erp\Models\AddFieldToTable\AddFieldToTable;
use Erp\Models\Company\Company;
use Erp\Models\Department\Department;
use Erp\Models\Designation\Designation;
use Erp\Models\Email\Email;
use Erp\Models\Gender\Gender;
use Erp\Models\Image\Photo;
use Erp\Models\Leave\LeaveApplication;
use Erp\Models\Log\LogTable;
use Erp\Models\Media\Media;
use Erp\Models\Password\Password;
use Erp\Models\Punch\Punch;
use Erp\Models\Religion\Religion;
use Erp\Models\Shift\Shift;
use Illuminate\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Foundation\Auth\Access\Authorizable;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\CanResetPassword as CanResetPasswordContract;
use Erp\Models\Role\HasRoles;
use Illuminate\Support\Facades\Hash;

class Guardian extends ProjectModel implements AuthenticatableContract, AuthorizableContract, CanResetPasswordContract
{
    use Authenticatable, Authorizable, CanResetPassword, HasRoles, Translatable, SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'users';

    protected $dates = ['deleted_at'];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    const USER_NAME = 'username';
    const FIRST_NAME = 'first_name';
    const LAST_NAME = 'last_name';
    const FATHER = 'father_name';
    const MOTHER = 'mother_name';
    const GENDER = 'gender_id';
    const RELIGION = 'religion_id';
    const COMPANY  = 'company_id';
    const DEPARTMENT  = 'department_id';
    const PHONE = 'phone';
    const ADDRESS = 'address';
    const PERMANENT_ADDRESS = 'permanent_address';
    const STATUS   = 'status';
    const PASSWORD = 'password';
    const EMAIL = 'email';
    const DESIGNATION = 'designation_id';
    const CONFIRM_PASSWORD = 'password_confirmation';
    const DETP_JOIN_DATE = 'dept_join_date';
    const BIRTHDAY = 'birthday';
    const ACCOUNT_HOLDER = 'account_holder';
    const ACCOUNT_NO = 'account_no';
    const BANK = 'bank_name';
    const IFSC = 'ifsc_code';
    const BRANCH = 'branch';
    const PAN = 'pan_no';
    const PHOTO = 'photo';
    const SHIFT = 'shift_id';
    const BASIC = 'basic';
    const ALLOWANCE = 'salary_rule_id';
    const OVERTIME = 'overtime_rule_id';
    const SALARY_CUT = 'salary_cut_rule_id';
    const BONUS = 'bonus_rule_id';
    const EMPLOYEE_ID = 'employee_id';
    const ROLE = 'role';
    const COMPANY_DETAILS = 'company_details';
    const SALARY_DETAILS = 'salary_details';
    const AUTHENTICATION_INFO = 'authentication_info';
    const BANK_ACCOUNT = 'bank_account';
    const EMPLOYEE_DOCUMENT = 'employee_documents';
    const FILES_TO_UPLOAD = 'file[]';
    const POSITION = 'position';
    const STUDENT_CLASS = 'student_class_id';
    const SECTION = 'section_id';
    const ROLL_NO = 'roll_no';
    const PROFESSION = 'profession';
    const GUARDIAN = 'guardian_id';



    const REMEMBER_TOKEN = 'remember_token';


    public $translatedAttributes = [
        self::FIRST_NAME,
        self::LAST_NAME,
        self::ADDRESS,
        self::MOTHER,
        self::FATHER,
        self::PERMANENT_ADDRESS
    ];
    public $timestamps = false;

    protected $fillable = [

        self::USER_NAME,
        self::FIRST_NAME,
        self::LAST_NAME,
        self::GENDER,
        self::RELIGION,
        self::DEPARTMENT,
        self::PHONE,
        self::ADDRESS,
        self::STATUS,
        self::EMAIL,
        self::PASSWORD,
        self::DESIGNATION,
        self::DETP_JOIN_DATE,
        self::PERMANENT_ADDRESS,
        self::SHIFT,
        self::EMPLOYEE_ID,
        self::BONUS
    ];

    /**
     * this function is used for getting the values from
     * tables associated with hasMany relationship with the user table
     * while displaying the user-edit page
     * @var array
     */
    public $hasManyFunctions = [
        'bankAccounts'=>[
            self::ACCOUNT_NO,
            self::BANK,
            self::IFSC,
            self::PAN,
            self::BRANCH,
        ],
        'userSalaries'=>[
            self::BASIC,
            self::ALLOWANCE,
            self::OVERTIME,
            self::SALARY_CUT,
            self::BONUS
        ],
    ];

    public $belongsToFunctions = [

        'shift'=>'shift_id',
    ];

    public $ownFields = [
        self::USER_NAME,
        self::EMPLOYEE_ID,
        self::GENDER,
        self::RELIGION,
        self::DEPARTMENT,
        self::DESIGNATION,
        self::PHONE,
        self::EMAIL,
        self::DETP_JOIN_DATE,
        self::BIRTHDAY,
        self::SHIFT
    ];

    public $employeeHistoryFields = [
        self::DEPARTMENT,
        self::DESIGNATION,
        self::DETP_JOIN_DATE,
        self::SHIFT
    ];
    public $bankAccountFields = [
        self::ACCOUNT_NO,
        self::BANK_ACCOUNT,
        self::BANK,
        self::IFSC,
        self::PAN,
        self::BRANCH,
        self::STATUS,
        self::POSITION
    ];

    public $userSalaryFields = [
        self::BASIC,
        self::ALLOWANCE,
        self::OVERTIME,
        self::SALARY_CUT,
        self::BONUS

    ];
    public $passwords = [
        self::PASSWORD
    ];
    public $emails = [
        self::EMAIL
    ];


    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [ self::REMEMBER_TOKEN ];



    /*public function setPasswordAttribute($pass){

        $this->attributes['password'] = Hash::make($pass);

    }*/

    /**
     * more than one user should belong to a gender
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function gender()
    {

        return $this->belongsTo(Gender::class);
    }

    /**
     * more than one user should belong to a company
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function company()
    {
        return $this->belongsTo(Company::class);
    }

    /**
     * more than one user should belong to a department
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function department()
    {
        return $this->belongsTo(Department::class);
    }


    /**
     * one user should have more than one designation in his career
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function designation()
    {
        return $this->belongsTo(Designation::class);
    }

    /**
     * more than one user should belong to a religion
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function religion()
    {
        return $this->belongsTo(Religion::class);
    }

    /**
     * a user might have more than one password
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function passwords()
    {
        return $this->hasMany(Password::class);
    }

    /**
     * a user might have more than one email
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function emails()
    {

        return $this->morphMany(Email::class,'emailer');
    }

    /**
     * users including other models might have files
     * @return \Illuminate\Database\Eloquent\Relations\MorphMany
     */
    public function files()
    {
        return $this->morphMany(Media::class, 'filable');
    }


    /**
     * @return \Illuminate\Database\Eloquent\Relations\MorphMany
     */
    public function photo()
    {
        return $this->morphMany(Photo::class, 'imageable');
    }

    public function photos()
    {
        return $this->hasMany(Photo::class);
    }

    /**
     * a user might have more than one files from medias table
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function manyFiles(){

        return $this->hasMany(Media::class);
    }

    /**
     * each activities should remain in log table
     *
     * @return \Illuminate\Database\Eloquent\Relations\MorphMany
     */
    public function logs()
    {
        return $this->morphMany(LogTable::class,'loggable');
    }

    /**
     * each table might add different fields
     *
     * @return \Illuminate\Database\Eloquent\Relations\MorphMany
     */
    public function addFieldsToTable()
    {
        return $this->morphMany(AddFieldToTable::class,'field');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function employeeHistories()
    {
        return $this->hasMany(EmployeeHistory::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function bankAccounts()
    {
        return $this->hasMany(BankAccount::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function leaveApplications()
    {
        return $this->hasMany(LeaveApplication::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function shift()
    {
        return $this->belongsTo(Shift::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function punches()
    {
        return $this->hasMany(Punch::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function userSalaries()
    {
        return $this->hasMany(UserSalary::class);
    }


}