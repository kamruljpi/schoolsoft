<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 4/11/16
 * Time: 11:28 AM
 */

namespace Erp\Repositories\Punch;


use Erp\Models\Shift\Shift;

trait TPunchRepository
{
    public $todayInTime;
    public $todayOutTime;
    public $todayMaxTime;
    public $todayMinTime;
    public $yesterdayMaxTime;
    public $yesterdayMinTime;
    public $weekend;
    public $holidays;
    public $outOfShiftMin;
    public $outOfShiftMax;
    public $nextDayShift;


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

}