<?php

namespace Erp\Http\Controllers\Punch;

use Erp\Http\Controllers\Language\Lang;
use Erp\Models\Punch\Punch;
use Erp\Models\Shift\Shift;
use Erp\Models\User\EmployeeHistory;
use Erp\Models\User\User;
use Faker\Provider\zh_TW\DateTime;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;
use Erp\Models\Holydays\Holyday;


class PunchController extends Controller
{
    use Lang;

    private $punch;
    private $authenticatedUser;
    private $todayInTime;
    private $todayOutTime;
    private $todayMaxTime;
    private $todayMinTime;
    private $yesterdayMaxTime;
    private $yesterdayMinTime;
    private $weekend;
    private $holidays;
    private $outOfShiftMin;
    private $outOfShiftMax;
    private $nextDayShift;
    private $users;

    public function __construct(Punch $punch)
    {
        $this->middleware('prevReq');
        $this->punch = $punch;
        $this->authenticatedUser = request()->user();
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function insertPunchForm()
    {
        $viewType = 'Insert Punch';

        if(count($this->authenticatedUser->punches)>0){
            $punchFlag = $this->authenticatedUser
                ->punches
                ->last()->punch_flag;

        }else{
            $punchFlag = null;
        }
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        return view('default.employee.punches.insert-punch',compact('viewType','punchFlag','locale','defaultLocale'));
    }

    /**
     * @param $date
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function editPunchForm($date, $id)
    {
        $userId = $id;
        $punchDate = $date;
        $errorMessage = false;

        $userPunchesByDate = $this->punch
            ->where('user_id',$userId)
            ->where('punch_date',$punchDate)
            ->get();
        if($userPunchesByDate->isEmpty()){

            $errorMessage = true;
        }

        return view('default.admin.punches.punch-edit-by-date',compact('userPunchesByDate','userId','punchDate','errorMessage'));
    }

    /**
     * @param $date
     * @param $id
     * @param Request $request
     * @return mixed
     */
    public function editUserPunch($date,$id, Request $request)
    {

        $userId = $id;
        $punchDate = $date;
        $userPunchInDateTime = $request->punch_in_date_time;
        $userPunchOutDateTime =  $request->punch_out_date_time;

        $userPunchesToEdit = $this->punch->where('user_id',$userId)
            ->where('punch_date',$date)
            ->get();



        foreach($userPunchInDateTime as $key=>$value){


            $userPunchesToEdit[$key]->update([
                'punch_in_date_time'=>$value
            ]);

        }
        foreach($userPunchOutDateTime as $key=>$value){


            $userPunchesToEdit[$key]->update([
                'punch_out_date_time'=>$value
            ]);

        }

        return back()->withSuccess('Successfully Updated');

    }

    /**
     * get everyday's shift for each employee
     *
     * @param $user
     * @param $todaysDate
     * @return mixed|null
     */
    private function shiftForToday($user,$todaysDate)
    {

        $shiftForToday = null;
        $shiftForEmployee = new Shift();
        $userShiftFromEmployeeHistories = $user->employeeHistories()
//            ->where('month',date('m',strtotime($todaysDate)))
            ->orderBy('updated_at','DESC')->get();

        if(!$userShiftFromEmployeeHistories->isEmpty()){

            foreach($userShiftFromEmployeeHistories as $userShiftFromEmployeeHistory){

                if(strtotime($todaysDate) >= strtotime($userShiftFromEmployeeHistory->updated_at)){

                    $shiftForToday = json_decode($shiftForEmployee->findOrFail($userShiftFromEmployeeHistory->shift_id)->contents);
                    break;
                }
            }

            // return default shift......
            if(is_null($shiftForToday)){

                $shiftForToday = json_decode($shiftForEmployee->findOrFail(1)->contents);
            }
            return $shiftForToday;
        }

        // if the user has no employee history then return the default shift...
        return json_decode($shiftForEmployee->findOrFail(1)->contents);

    }

    /**
     * @get system for uploading the whole month device attendance data
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function monthlyDeviceAttendance()
    {
        $viewType = 'Upload Monthly Device Data';
        return view('default.admin.attendance.device-attendance-upload',compact('viewType'));
    }

    /**
     * @post save uploaded device data
     * @param User $user
     * @param Request $request
     */
    public function uploadDeviceData(User $user,Requests\Validator $request, Punch $punch)
    {


        $fileName = time().str_random(3).$request->device_data->getClientOriginalName();
        $destinationPath = storage_path('upload');
        $request->device_data->move($destinationPath, $fileName);

        $fileData = file_get($destinationPath.'/'.$fileName);
        $fileContentsInArray = explode("\n",$fileData);

        $usersWithPunchTime = $this->commonUploadDevice($user,$fileContentsInArray);

        $punchTimeArr = $this->punchTimeToSave($usersWithPunchTime);

        foreach ($punchTimeArr as $punchTime) {

            $punch->create($punchTime);
        }

        return back()->withSuccess('Successfully uploaded and data saved');

    }

    /**
     * @param $usersWithPunchTime
     * @return $this|array
     */
    private function punchTimeToSave($usersWithPunchTime)
    {
        $punch = new Punch();

        if($usersWithPunchTime->isEmpty()){

            return back()->withErrors('Problem with processing.....');
        }
        $punchTimeArr = [];

        foreach($usersWithPunchTime as $userKey => $user){
            foreach($user->time as $time){
                $punchTime = [
                    $punch::USER => $user->id,
                    $punch::EMPLOYEE_ID => $user->employee_id,
                    $punch::PUNCH_DATE =>date('Y-m-d', strtotime($time[0])),
                    $punch::PUNCH_IN_DATE_TIME => $time[0],
                    $punch::PUNCH_OUT_DATE_TIME => $time[1],
                    $punch::PUNCH_YEAR => date('Y', strtotime($time[0])),
                    $punch::PUNCH_MONTH => date('m', strtotime($time[0])),
                    $punch::PUNCH_DAY => date('d', strtotime($time[0])),
                ];
                $punchTimeArr[] = $punchTime;
            }
        }
        return $punchTimeArr;
    }

    /**
     * @param User $user
     * @param Requests\Validator $request
     * @return \Illuminate\Database\Eloquent\Collection|static[]
     * @return User
     */
    private function commonUploadDevice( User $user,$fileContentsInArray)
    {
        $users = $user->all();
        $ArrayOfIdAndTime = [];
        foreach($fileContentsInArray as $key=>$line){
            $trimmedLineDividedInIdAndTime = explode("\t",rtrim($line));
            $ArrayOfIdAndTime []= $trimmedLineDividedInIdAndTime;;
        }
        foreach ($users as $userKey=>$user) {
            $timesForEachUser=[];
            foreach ($ArrayOfIdAndTime as $key=>$idAndTime) {
                if(isset($idAndTime[0]) && isset($idAndTime[1]) && $user->employee_id==$idAndTime[0]){
                    $timesForEachUser[] = $idAndTime[1];
                }/*elseif(isset($idAndTime[0]) && !isset($idAndTime[1]) && $user->employee_id==$idAndTime[0]){
                    $timesForEachUser[] = null;
                }*/
            }
            $punchTimes[$user->employee_id] = $timesForEachUser;
            foreach ( $punchTimes as $employeeId=>$punchTime) {
                $time=[];
                for($n=0; $n< count($punchTime); $n++){
                    if(2*$n<count($punchTime) && (2*$n +1)<count($punchTime)){
                        $time[] = [$punchTime[2*$n],$punchTime[2*$n +1]];
                    }
                }
            }
            $user->time = $time;
        }
        return $users;
    }

    /**
     * @param User $user
     * @param Requests\Validator $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function previewDeviceData (User $user,Request $request)
    {
        $users = $user->all();
        $destinationPath = storage_path('upload');
        foreach($_FILES as $file){
            if(move_uploaded_file($file['tmp_name'], $destinationPath .basename($file['name'])))
                {
                    $fileData = file_get($destinationPath.basename($file['name']));
                }
        }
        $fileContentsInArray = explode("\n",$fileData);
        $usersWithPunchTime = $this->commonUploadDevice($user,$fileContentsInArray);
        $punchTimeArr = $this->punchTimeToSave($usersWithPunchTime);

        return response()->json($punchTimeArr);

    }

    /**
     * @return $this
     */
    public function punchIn()
    {
        /**
         * punch in information
         */
        $this->punch->user_id = $this->authenticatedUser->id ;
        $this->punch->employee_id = $this->authenticatedUser->employee_id ;
        $this->punch->punch_in = date('H:i:s', time());
        $this->punch->punch_date = date('Y-m-d');
        $this->punch->punch_in_date_time = date('Y-m-d H:i:s');
        $this->punch->punch_year = date('Y');
        $this->punch->punch_month = date('m');
        $this->punch->punch_day = date('d');
        $this->punch->punch_flag = true;
        $shiftForToday = $this->shiftForToday($this->authenticatedUser,date('Y-m-d'));
        $today = Date('D');
        $todaysDate = date('Y-m-d H:i:s');
        $todaysDateWithoutTime = date('Y-m-d');

        /**
         * function for getting the shift range
         */
        $this->shiftForPunchInCheck($shiftForToday,$today,$todaysDateWithoutTime);

        /**
         * check if ur shift exists today or between two days,
         * if true then ur working hours should be deemed regular
         */

        if(($todaysDate >= $this->yesterdayMinTime && $todaysDate <= $this->yesterdayMaxTime) ||
            ($todaysDate >= $this->todayMinTime && $todaysDate <= $this->todayMaxTime) ){
            if($this->punch->save())
                return back()->withSuccess('it is ur shift and u r successfully punched in');
        }


        /**
         * if u r on holiday or weekend ur working hour should be considered overtime
         */
        if($this->weekend == true){
            $this->punch->is_overtime = 1;
            if($this->punch->save())
                return back()->withSuccess('it is not ur shift and should be considered overtime for u...');
        }

        /**
         * if u r out of ur shift ur working time will be considered overtime
         * and u should be paid extra ....
         * only then is_overtime flag should be 1, by default which is 0
         */
        $this->punch->is_overtime = 1;
        if($this->punch->save())
            return back()->withSuccess('it is not ur shift -- and should be considered overtime for u...');
    }

    /**
     * determine the shift within which u r going to punch in or out
     * @param $shiftForTheDay
     * @param $today
     */
    private function shiftForPunchInCheck($shiftForTheDay,$today, $todaysDate)
    {

        switch($today):
            case 'Sat':
                if(array_key_exists('fri_extend_day',$shiftForTheDay)){
                    $this->yesterdayMinTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->fri_min." -1 day"));
                    $this->yesterdayMaxTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->fri_max));
                }
                if(array_key_exists('sat_extend_day',$shiftForTheDay)){
                    $this->todayMinTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sat_min));
                    $this->todayInTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sat_in));
                    $this->todayMaxTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sat_max." +1 day"));
                    $this->todayOutTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sat_out." +1 day"));
                } elseif(!array_key_exists('sat_extend_day',$shiftForTheDay)){
                    $this->todayMinTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sat_min));
                    $this->todayInTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sat_in));
                    $this->todayMaxTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sat_max));
                    $this->todayOutTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sat_out));
                }
                if(array_key_exists('sat_day_off',$shiftForTheDay)){
                    $this->weekend = true;
                }else{
                    $this->weekend = false;
                }

                break;
            case 'Sun':
                if(array_key_exists('sat_extend_day',$shiftForTheDay)){
                    $this->yesterdayMinTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sat_min." -1 day"));
                    $this->yesterdayMaxTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sat_max));
                }
                if(array_key_exists('sun_extend_day',$shiftForTheDay)){
                    $this->todayMinTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sun_min));
                    $this->todayInTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sun_in));
                    $this->todayMaxTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sun_max." +1 day"));
                    $this->todayOutTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sun_out." +1 day"));
                } elseif(!array_key_exists('sun_extend_day',$shiftForTheDay)){
                    $this->todayMinTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sun_min));
                    $this->todayInTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sun_in));
                    $this->todayMaxTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sun_max));
                    $this->todayOutTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sun_out));
                }
                if(array_key_exists('sun_day_off',$shiftForTheDay)){
                    $this->weekend = true;
                }else{
                    $this->weekend = false;
                }

                break;
            case 'Mon':
                if(array_key_exists('sun_extend_day',$shiftForTheDay)){
                    $this->yesterdayMinTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sun_min." -1 day"));
                    $this->yesterdayMaxTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->sun_max));
                }
                if(array_key_exists('mon_extend_day',$shiftForTheDay)){
                    $this->todayMinTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->mon_min));
                    $this->todayInTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->mon_in));
                    $this->todayMaxTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->mon_max." +1 day"));
                    $this->todayOutTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->mon_out." +1 day"));
                } elseif(!array_key_exists('mon_extend_day',$shiftForTheDay)){
//                    dd(date("Y-m-d H:i",strtotime($todaysDate.' '.$shiftForTheDay->mon_min)));
                    $this->todayMinTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->mon_min));
                    $this->todayInTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->mon_in));
//                    dd( $this->todayMinTime);
                    $this->todayMaxTime = date("Y-m-d H:i",strtotime($todaysDate.' '.$shiftForTheDay->mon_max));
                    $this->todayOutTime = date("Y-m-d H:i",strtotime($todaysDate.' '.$shiftForTheDay->mon_out));
//                    dd( $this->todayMaxTime);
                }
                if(array_key_exists('mon_day_off',$shiftForTheDay)){
                    $this->weekend = true;
                }else{
                    $this->weekend = false;
                }

                break;
            case 'Tue':
//                dd($todaysDate);
                if ((array_key_exists('mon_extend_day', $shiftForTheDay))) {
                    $this->yesterdayMinTime = date("Y-m-d H:i", strtotime($todaysDate. $shiftForTheDay->mon_min . " -1 day"));
                    $this->yesterdayMaxTime = date("Y-m-d H:i", strtotime($todaysDate.$shiftForTheDay->mon_max));
                }
                if (array_key_exists('tue_extend_day', $shiftForTheDay)) {
//                    dd($shiftForTheDay->tue_max);
//                    dd($todaysDate);
//                    dd(date("Y-m-d H:i", strtotime($todaysDate.' '. $shiftForTheDay->tue_max . " +1 day")));
                    $this->todayMinTime = date("Y-m-d H:i", strtotime($todaysDate.$shiftForTheDay->tue_min));
                    $this->todayInTime = date("Y-m-d H:i", strtotime($todaysDate.$shiftForTheDay->tue_in));
//                    dd($this->todayMinTime);
                    $this->todayMaxTime = date("Y-m-d H:i", strtotime($todaysDate.$shiftForTheDay->tue_max . " +1 day"));
                    $this->todayOutTime = date("Y-m-d H:i", strtotime($todaysDate.$shiftForTheDay->tue_out . " +1 day"));
//                    dd($this->todayMaxTime);

                } elseif (!array_key_exists('tue_extend_day', $shiftForTheDay)) {

                    $this->todayMinTime = date("Y-m-d H:i", strtotime($todaysDate.$shiftForTheDay->tue_min));

                    $this->todayInTime = date("Y-m-d H:i", strtotime($todaysDate.$shiftForTheDay->tue_in));
                    $this->todayMaxTime = date("Y-m-d H:i", strtotime($todaysDate. $shiftForTheDay->tue_max));
                    $this->todayOutTime = date("Y-m-d H:i", strtotime($todaysDate. $shiftForTheDay->tue_out));
                }
                if(array_key_exists('tue_day_off',$shiftForTheDay)){
                    $this->weekend = true;
                }else{
                    $this->weekend = false;
                }

                break;
            case 'Wed':
                if(array_key_exists('tue_extend_day',$shiftForTheDay)){
                    $this->yesterdayMinTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->tue_min." -1 day"));
                    $this->yesterdayMaxTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->tue_max));
                }
                if(array_key_exists('wed_extend_day',$shiftForTheDay)){
                    $this->todayMinTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->wed_min));
                    $this->todayInTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->wed_in));
                    $this->todayMaxTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->wed_max." +1 day"));
                    $this->todayOutTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->wed_out." +1 day"));
                } elseif(!array_key_exists('wed_extend_day',$shiftForTheDay)){
                    $this->todayMinTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->wed_min));
                    $this->todayInTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->wed_in));
                    $this->todayMaxTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->wed_max));
                    $this->todayOutTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->wed_out));
                }
                if(array_key_exists('wed_day_off',$shiftForTheDay)){
                    $this->weekend = true;
                }else{
                    $this->weekend = false;
                }

                break;
            case 'Thu':
                if(array_key_exists('wed_extend_day',$shiftForTheDay)){
                    $this->yesterdayMinTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->wed_min." -1 day"));
                    $this->yesterdayMaxTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->wed_max));
                }
                if(array_key_exists('thu_extend_day',$shiftForTheDay)){
                    $this->todayMinTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->thu_min));
                    $this->todayInTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->thu_in));
                    $this->todayMaxTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->thu_max." +1 day"));
                    $this->todayOutTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->thu_out." +1 day"));
                } elseif(!array_key_exists('thu_extend_day',$shiftForTheDay)){
                    $this->todayMinTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->thu_min));
                    $this->todayInTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->thu_in));
                    $this->todayMaxTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->thu_max));
                    $this->todayOutTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->thu_out));
                }
                if(array_key_exists('thu_day_off',$shiftForTheDay)){
                    $this->weekend = true;
                }else{
                    $this->weekend = false;
                }

                break;
            case 'Fri':
                if(array_key_exists('thu_extend_day',$shiftForTheDay)){
                    $this->yesterdayMinTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->thu_min." -1 day"));
                    $this->yesterdayMaxTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->thu_max));
                }
                if(array_key_exists('fri_extend_day',$shiftForTheDay)){
                    $this->todayMinTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->fri_min));
                    $this->todayInTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->fri_in));
                    $this->todayMaxTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->fri_max." +1 day"));
                    $this->todayOutTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->fri_out." +1 day"));
                } elseif(!array_key_exists('fri_extend_day',$shiftForTheDay)){
                    $this->todayMinTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->fri_min));
                    $this->todayInTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->fri_in));
                    $this->todayMaxTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->fri_max));
                    $this->todayOutTime = date("Y-m-d H:i",strtotime($todaysDate.$shiftForTheDay->fri_out));
                }
                if(array_key_exists('fri_day_off',$shiftForTheDay)){
                    $this->weekend = true;
                }else{

                    $this->weekend = false;
                }

                break;
            default:
                return;
        endswitch;
    }

    /**
     * get next day shift to get working hours existing out of today's shift
     * @param $shiftForTheDay
     * @param $day
     */
    private function nextDayShiftInfo($shiftForTheDay,$nextDay,$nextDate)
    {
        $this->outOfShiftMin = $this->todayMaxTime;
        $this->nextDayShift  = $this->shiftForPunchInCheck($shiftForTheDay,$nextDay,$nextDate);
        $this->outOfShiftMax = $this->todayMinTime;
    }

    /**
     * @return string
     */
    public function punchOut()
    {


        /**
         * finding the row to update from punches table while punching out
         */
        $punchingRow = $this->authenticatedUser
            ->punches
            ->where('punch_flag','1')
//            ->where('punch_out',null)
            ->where('punch_out_date_time',null)
            ->last();

        /**
         * current time considered punch out time in two different formats
         * hours minutes second
         * hours minutes second with date
         */
        $punchOutTime = date('H:i:s', time());
        $punchOutDateTime = date('Y-m-d H:i:s', time());

        /**
         * if the punching row is found or not null
         * then it is updated
         */
        if(!is_null($punchingRow)){
            $punchInTime = $punchingRow->punch_in;
            $workingHoursBetweenPunchInAndOut =  abs((strtotime($punchOutTime)-strtotime($punchInTime)))/(60*60);

            $punchOutUpdate    = $punchingRow->update([
//                'punch_out' => $punchOutTime,
                'punch_out_date_time' => $punchOutDateTime,
                'working_hours' => $workingHoursBetweenPunchInAndOut,
                'punch_flag' => false
            ]);
            return $punchOutUpdate? back()->withSuccess('successfully punched out'):'';
        }
       return back()->withSuccess('punched out automatically');


    }

    /**
     * determine working hours based on all conditions
     * check if working hours exist within ur regular shift
     * ---------exist out of ur shift
     * ---------exist on holiday
     * ---------exist on weekend
     */
    public function getTimesheet(Holyday $holydays,$user, $day, $month, $year)
    {

        $todaysDate = date("$year-$month-$day");
        $todaysDateTime = date($todaysDate.' '.'H:s');
        $timestamp = strtotime($todaysDate);
        $today = date('D', $timestamp);
        $nextDay = date('D',strtotime($today.' +1 day'));
        $nextDate = date("Y-m-d",strtotime($todaysDate." +1 day"));

        /**
         * get today's shift for the logged-in user
         */
        $shiftForToday = $this->shiftForToday($user,$todaysDate);

        /**
         * adjust everyday's min-time & max-time based on the shift(sat,sun etc...)....
         */
        $this->shiftForPunchInCheck($shiftForToday,$today,$todaysDate);

        $shiftInWorkingHours = 0;
        $weekendOrHolidayOvertime = 0;
        $generalOvertime = 0;

        /*
        |--------------------------------------------------------------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        |-------------------------------------UPDATE PUNCH INFO MISTAKINGLY READ BY PUNCH MACHINE-----------------------
        |--------------------------------------------------------------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        */
        $this->updatePunchInfoMistakenByMachine($user,$todaysDateTime);

        /**
         * get holidays to determine working hours those days
         * overtime applies provided ur working hours exist on holidays or weekends
         */
        $holiToday = $this->isHoliday($holydays,$todaysDate);

        /*
        |--------------------------------------------------------------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        |-------------------------------------Regular Shift-------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        */

        /**
         * check if today is not weekend
         */
        if($this->weekend == false && $holiToday == false){

            $shiftInWorkingHours = $this->getShiftInWorkingHours($user);
        }

        /*
        |--------------------------------------------------------------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        |-------------------------------------Holiday or Weekend-------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        */

        /**
         * get punching row for the punchInfos out of holidays or weekends
         * overtime applies provided working hours exist on holiday or weekend
         */
        if($this->weekend == true || $holiToday == true ){

            $weekendOrHolidayOvertime = $this->getHolidayOrWeekendWorkingHours($user);
        }


        /*
        |--------------------------------------------------------------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        |-------------------------------------Out of Shift-------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        |--------------------------------------------------------------------------------------------------------------
        */

        /**
         * get next day shift to get working hours out of today's shift
         * must remain below
         */

        $this->nextDayShiftInfo($shiftForToday,$nextDay,$nextDate);

        /**
         * get punching row for the punchInfos out of today's shift
         * out of shift meaning - time greater than today's max time and less than tomorrow's min time
         */

        $generalOvertime = $this->getOutOfShiftWorkingHours($user);



        return ['shiftInWorkingHours'=>$shiftInWorkingHours,'weekendOrHolidayOvertime'=>$weekendOrHolidayOvertime,'generalOvertime'=>$generalOvertime];

    }

    /**
     * define whether today is holiday
     *
     * @param Holyday $holydays
     * @param $todaysDate
     * @return bool
     */
    private function isHoliday(Holyday $holydays,$todaysDate)
    {
        $this->holidays = $holydays;
        $allHolidays = $this->holidays->with('holydayType')->get();
        $holiToday = false;

        foreach($allHolidays as $holiday){
            if($holiday->date == $todaysDate){
                $holiToday = true;
                break;
            }
        }
        return $holiToday;
    }

    /**
     * get working hours withing the shift for a user
     *
     * @param $user
     * @return int|number
     */
    private function getShiftInWorkingHours($user)
    {
        /**
         * check if punch_in_date_time and punch_out_date_time exist within today's shift to
         * get user specific punch infos from which total working hours within today's shift is determined;
         */
        $shiftInWorkingHours = 0;
        $punchInfosForWorkingHours = $user->punches()
            ->whereNotNull('punch_in_date_time')
            ->whereNotNull('punch_out_date_time')
            ->whereBetween('punch_in_date_time',[$this->todayMinTime,$this->todayMaxTime])
            ->whereBetween('punch_out_date_time',[$this->todayMinTime,$this->todayMaxTime])
            ->orderBy('id','DESC')
            ->get();

        /**
         * get today's working hour within the shift
         * set $shiftInWorkingHours to zero
         * $shiftInWorkingHours is incremented by
         * the intervening working hours(punch_out_date_time - punch_in_date_time) for each punch row
         */

        foreach($punchInfosForWorkingHours as $punchInfo){

            $inDateTime = $punchInfo->punch_in_date_time;
            $outDateTime = $punchInfo->punch_out_date_time;
            $shiftInWorkingHours +=  abs((strtotime($outDateTime)-strtotime($inDateTime)));
        }

        return $shiftInWorkingHours;
    }

    /**
     * @param $user
     * @return int|number
     */
    private function getOutOfShiftWorkingHours($user)
    {
        $workingHourForOvertime = 0;

        $punchInfosForOvertime = $user->punches()
            ->whereNotNull('punch_in_date_time')
            ->whereNotNull('punch_out_date_time')
            ->where('punch_in_date_time','>',$this->outOfShiftMin)
            ->where('punch_in_date_time','<',$this->outOfShiftMax)
            ->where('punch_out_date_time','>',$this->outOfShiftMin)
            ->where('punch_out_date_time','<',$this->outOfShiftMax)
            ->orderBy('id','DESC')
            ->get();
        /**
         * get total hours for out-of-shift work considered overtime
         * $workingHourForOvertime set to 0,
         * then incremented by the interveinig time between punch-in and punch-out (punch-out - punch-in)
         */

        foreach($punchInfosForOvertime as $punchInfoOvertime){

            $overInDateTime = $punchInfoOvertime->punch_in_date_time;
            $overOutDateTime = $punchInfoOvertime->punch_out_date_time;
            $workingHourForOvertime +=  abs((strtotime($overOutDateTime)-strtotime($overInDateTime)));
        }

        return $workingHourForOvertime;

    }

    /**
     * @param $user
     * @return int|number
     */
    private function getHolidayOrWeekendWorkingHours($user)
    {
        $weekendOrHolidayOvertime = 0;

        $punchInfosForHolidays = $user->punches()
            ->whereNotNull('punch_in_date_time')
            ->whereNotNull('punch_out_date_time')
            ->whereBetween('punch_in_date_time',[$this->todayMinTime,$this->todayMaxTime])
            ->whereBetween('punch_out_date_time',[$this->todayMinTime,$this->todayMaxTime])
            ->orderBy('id','DESC')
            ->get();

        /**
         * get total hours for holidays or weekends work- considered overtime
         * $weekendOrHolidayOvertime set to 0,
         * then incremented by the interveinig time between punch-in and punch-out (punch-out - punch-in)
         */
        foreach($punchInfosForHolidays as $punchInfoHoliday){

            $holidayInDateTime = $punchInfoHoliday->punch_in_date_time;
            $holidayOutDateTime = $punchInfoHoliday->punch_out_date_time;
            $weekendOrHolidayOvertime +=  abs((strtotime($holidayOutDateTime)-strtotime($holidayInDateTime)));
        }

        return $weekendOrHolidayOvertime;
    }

    /**
     * update punchinfo if time is missing from the punhc machine file....
     *
     * @param $user
     * @param $todaysDateTime
     */
    private function updatePunchInfoMistakenByMachine($user,$todaysDateTime)
    {

        /**
         * if punch in or out time is missing for the punch machine error,
         * hrm software gives null value for those fields....and
         * those fields with null values are updated to the minimum time and the maximum time respectively
         * must remain at the top
         */
        $userPunchesForOutTimeUpdate = $user->punches()
            ->whereBetween('punch_in_date_time',[$this->todayMinTime,$this->todayMaxTime])
            ->get();

        foreach($userPunchesForOutTimeUpdate as $key=>$punchRow){

            $forwardPunchKey = $key + 1;
            $currentPunchOutDateTime = $punchRow->punch_out_date_time;
            if($userPunchesForOutTimeUpdate->has($forwardPunchKey)){
                $forwardPunchRow = $userPunchesForOutTimeUpdate[$forwardPunchKey];
                $forwardPunchInDateTime = $forwardPunchRow->punch_in_date_time;
            }

            /**
             * logic might be changed in terms of updating value of the punch_out_date_time field
             * with the today's max time when it is null
             * applies when the current punch row is the last one
             */
            if (!$userPunchesForOutTimeUpdate->has($forwardPunchKey) &&  is_null($currentPunchOutDateTime) && $todaysDateTime>=$this->todayMaxTime) {

                $punchRow->update([
                    'punch_out_date_time'=> $this->todayMaxTime,
                    'punch_flag'=>false
                ]);
            }

            /**
             * logic might be changed in terms of updating value of the punch_out_date_time field
             * with the today's current time when it is null
             * applies when the current punch row is the last one
             */
            if (!$userPunchesForOutTimeUpdate->has($forwardPunchKey) &&  is_null($currentPunchOutDateTime) && $todaysDateTime<=$this->todayMaxTime) {

                $punchRow->update([
                    'punch_out_date_time'=> $todaysDateTime,
                    'punch_flag'=>false
                ]);
            }

            /**
             * applies when the current punch row is not the last one
             */
            if($userPunchesForOutTimeUpdate->has($forwardPunchKey)  && !is_null($forwardPunchInDateTime) && is_null($currentPunchOutDateTime)){

                $punchRow->update([
                    'punch_out_date_time'=> $forwardPunchInDateTime,
                    'punch_flag'=>false
                ]);
            }
        }

        $userPunchesForInTimeUpdate = $user->punches()
            ->whereBetween('punch_out_date_time',[$this->todayMinTime,$this->todayMaxTime])
            ->get();

        foreach($userPunchesForInTimeUpdate as $key=>$punchRow){
            $backwardPunchKey = $key - 1;
            $currentPunchInDateTime = $punchRow->punch_in_date_time;
            if($userPunchesForInTimeUpdate->has($backwardPunchKey)){
                $backwardPunchRow = $userPunchesForOutTimeUpdate[$backwardPunchKey];
                $backwardPunchOutDateTime = $backwardPunchRow->punch_out_date_time;
            }

            /**
             * applies when the current punch row is the last one
             */
            if (!$userPunchesForOutTimeUpdate->has($backwardPunchKey) &&  is_null($currentPunchInDateTime)) {
                $punchRow->update([
                    'punch_in_date_time'=> $this->todayMinTime,
                ]);
            }

            /**
             * applies when the current punch row is not the last one
             */
            if($userPunchesForInTimeUpdate->has($backwardPunchKey) && !is_null($backwardPunchOutDateTime) && is_null($currentPunchInDateTime)){
                $punchRow->update([
                    'punch_in_date_time'=> $backwardPunchOutDateTime,
                ]);
            }
        }
    }


    /**
     * @get timesheet for the whole month for all the users
     * @param Holyday $holyday
     * @param User $user
     */
    public function timeShiftForMonth($year,$month,Holyday $holyday, User $user)
    {
        $reportForUsers = [];
        $reportForMonth = [];
        $reportForDays = [];
        $userPresence = 0;
        $monthlyShiftHours = 0;
        $this->users = $user;
        $allUsers = $this->users->all();
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $numberOfDays = cal_days_in_month(CAL_GREGORIAN,$month,$year);

        foreach ($allUsers as $user) {
            $userForPresence = $user;
            for ($day = 1; $day<= $numberOfDays; $day++) {
                $days =  sprintf("%02d",$day);
                $months =  sprintf("%02d", $month);
                $years =  sprintf("%04d", $year);
                $reportForDays[$day] = $this->getTimesheet($holyday,$user,$days,$months,$years);
            }
            $userPunchesForPresence = $userForPresence->punches()
                ->where('punch_month',$month)
                ->where('punch_year',$year)
                ->groupBy('punch_day')
                ->get();
            if(!is_null($userPunchesForPresence)){
                $userPresence = $userPunchesForPresence->count();
            }
            $user->workingHours = $reportForDays;
            $user->userPresence = $userPresence;
            $user->userAbsence  = abs($numberOfDays-$userPresence);
            $reportForUsers[$user->id] =  $user;
        }

        /**
         * total shift hours of a month
         */
        for ($day = 1; $day<= $numberOfDays; $day++) {
            $days =  sprintf("%02d",$day);
            $months =  sprintf("%02d", $month);
            $years =  sprintf("%04d", $year);
            $todaysDate = date("$years-$months-$days");
            $timestamp = strtotime($todaysDate);
            $today = date('D', $timestamp);
            $shiftForToday = $this->shiftForToday($user,$todaysDate);
            $this->shiftForPunchInCheck($shiftForToday,$today,$todaysDate);
            $monthlyShiftHours += abs(strtotime($this->todayOutTime) - strtotime($this->todayInTime));
        }

        return view('default.admin.timesheet.time-report',compact('reportForUsers','locale','defaultLocale','month','year','monthlyShiftHours'));
    }

    /**
     * @get the page for getting monthly timesheet
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function timesheetPage()
    {
        $viewType = 'Get Timesheet Report';
        return view('default.admin.timesheet.timesheet',compact('viewType'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function myTimesheetPage()
    {

        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        return view('default.employee.timesheet.timesheet',compact('viewType','locale','defaultLocale'));
    }

    /**
     *
     * @get each employee's timesheet in detail
     * @param $id
     * @param $month
     * @param $year
     * @param Holyday $holyday
     * @param User $user
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function usersDailyTimesheet($id, $month,$year,Holyday $holyday, User $user)
    {
        $user = $user;
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $userForTimesheet = $user->findOrFail($id);
        $reportForDays = [];
        $numberOfDays=cal_days_in_month(CAL_GREGORIAN,$month,$year);

        for ($day = 1; $day<= $numberOfDays; $day++) {

            $days   =  sprintf("%02d",$day);
            $months =  sprintf("%02d", $month);
            $years  =  sprintf("%04d", $year);

            $todaysDate = date("$years-$months-$days");
            $timestamp = strtotime($todaysDate);
            $today = date('D', $timestamp);
            $shiftForToday = $this->shiftForToday($userForTimesheet,$todaysDate);

            $this->shiftForPunchInCheck($shiftForToday,$today,$todaysDate);

            $dailyShiftHours[$day] = abs(strtotime($this->todayOutTime) - strtotime($this->todayInTime));

            $reportForDays[$day] = $this->getTimesheet($holyday,$userForTimesheet,$days,$months,$years);

        }

        $userForTimesheet->workingHours = $reportForDays;
        $reportForUsers =  $userForTimesheet;

        if (request()->ajax())
        {
            return view('default.admin.timesheet.user-daily-time-report',compact('reportForUsers','year','month','locale','defaultLocale','dailyShiftHours'));
        }


        return view('default.admin.timesheet.user-daily-time-report_copy',compact('reportForUsers','year','month','locale','defaultLocale','dailyShiftHours'));

    }


    public function myDailyTimesheet($id, $month,$year,Holyday $holyday, User $user)
    {
        $user = $user;
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $userForTimesheet = $user->findOrFail($id);
        $reportForDays = [];
        $numberOfDays=cal_days_in_month(CAL_GREGORIAN,$month,$year);

        for ($day = 1; $day<= $numberOfDays; $day++) {

            $days   =  sprintf("%02d",$day);
            $months =  sprintf("%02d", $month);
            $years  =  sprintf("%04d", $year);

            $todaysDate = date("$years-$months-$days");
            $timestamp = strtotime($todaysDate);
            $today = date('D', $timestamp);
            $shiftForToday = $this->shiftForToday($userForTimesheet,$todaysDate);

            $this->shiftForPunchInCheck($shiftForToday,$today,$todaysDate);

            $dailyShiftHours[$day] = abs(strtotime($this->todayOutTime) - strtotime($this->todayInTime));

            $reportForDays[$day] = $this->getTimesheet($holyday,$userForTimesheet,$days,$months,$years);

        }

        $userForTimesheet->workingHours = $reportForDays;
        $reportForUsers =  $userForTimesheet;

        if (request()->ajax())
        {
            return view('default.admin.timesheet.user-daily-time-report',compact('reportForUsers','year','month','locale','defaultLocale','dailyShiftHours'));
        }
    }

    public function determineSalaryForAllEmployee()
    {

        dd('welcome to salary details');
    }
}
