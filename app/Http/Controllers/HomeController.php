<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Salon;
use App\Booking;
use App\Coupon;
use App\Service;
use App\Banner;
use App\Gallery;
use App\User;
use App\Employee;
use DateTime;
use Carbon\Carbon;
use App\AdminSetting;
use OneSignal;
use App\Notification;
use App\Template;
use App\Mail\BookingStatus;
use App\Mail\PaymentStatus;
use App\Mail\CreateAppointment;
use App\Mail\AppCreateAppointment;
use Auth;

class HomeController extends Controller
{


    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        // return view('home');
        if(Auth::check())
        {
            Auth::logout();
        }
        return redirect('admin/login');
    }
    public function homepage(){
            $app = AdminSetting::first();
            $salon = Salon::where('owner_id', '1')->first();
            $services=Service::all();
            $sliders= Banner::all();
            $galleries= Gallery::all();
            $staffs= Employee::all();
            return view('index',compact('app','salon','services','sliders','galleries','staffs'));
    }
    public function booking(){
        $app = AdminSetting::first();
        $sliders= Banner::all();
        $salon = Salon::where('owner_id', '1')->first();
        $symbol = AdminSetting::find(1)->currency_symbol;
        //$users = User::where([['status',1],['role',3]])->get();
        $services = Service::where([['salon_id',$salon->salon_id],['status',1]])->get();
        $emps = Employee::where([['status',1],['salon_id',$salon->salon_id]])->get();

        return view('booking',compact('app','sliders','symbol','services','emps','salon'));
    }

    public function timeslot(Request $request)
    {
        $salon = Salon::where('owner_id', '1')->first();

        $master = array();
        $day = strtolower(Carbon::parse($request->date)->format('l'));
        $salon = Salon::find($salon->salon_id)->$day;
        $start_time = new Carbon($request['date'].' '.$salon['open']);

        $end_time = new Carbon($request['date'].' '.$salon['close']);
        $diff_in_minutes = $start_time->diffInMinutes($end_time);
        for ($i=0; $i <= $diff_in_minutes; $i+=30) {
            if($start_time >= $end_time ){
                break;
            }else{
                $temp['start_time']=$start_time->format('h:i A');
                $temp['end_time']=$start_time->addMinutes('30')->format('h:i A');
                if($request->date == date('Y-m-d')){
                    if(strtotime(date("h:i A")) < strtotime($temp['start_time'])){
                        array_push($master,$temp);
                    }
                } else {
                    array_push($master,$temp);
                }
            }
        }

        if(count($master) == 0)
        {
            return response()->json(['msg' => 'Day off', 'success' => false], 200);
        }
        else
        {
            return response()->json(['msg' => 'Time slots', 'data' => $master, 'success' => true], 200);
        }
    }
    public function paymentcount(Request $request)
    {
        $data['price'] = Service::whereIn('service_id',$request->ser_id)->sum('price');
        $data['time'] = Service::whereIn('service_id',$request->ser_id)->sum('time');

        return response()->json(['success' => true,'data' => $data, 'msg' => 'Single Service'], 200);
    }
    public function selectemployee(Request $request)
    {
        $salon = Salon::where('owner_id', '1')->first();

        $emp_array = array();
        $emps_all = Employee::where([['salon_id',$salon->salon_id],['status',1]])->get();
        $book_service = $request->service;

        $duration = Service::whereIn('service_id', $book_service)->sum('time') - 1;
        foreach ($emps_all as $emp)
        {
            $emp_service = json_decode($emp->service_id);
            foreach($book_service as $ser)
            {
                if (in_array($ser, $emp_service))
                {
                    array_push($emp_array,$emp->emp_id);
                }
            }
        }
        $master =  array();
        $emps = Employee::whereIn('emp_id',$emp_array)->get();

        $time = new Carbon($request['date'].' '.$request['start_time']);
        $day = strtolower(Carbon::parse($request->date)->format('l'));
        $date = $request->date;

        foreach($emps as $emp)
        {
            $employee = $emp->$day;
            $start_time = new Carbon($request['date'].' '.$employee['open']);
            $end_time = new Carbon($request['date'].' '.$employee['close']);

            if($time->between($start_time, $end_time))
            {
                array_push($master,$emp);
            }
        }
        $emps_final = array();
        foreach($master as $emp)
        {
            $booking = Booking::where([['emp_id',$emp->emp_id],['date',$date],['start_time',$request['start_time']],['booking_status','Approved']])
            ->orWhere([['emp_id',$emp->emp_id],['date',$date],['start_time',$request['start_time']],['booking_status','Pending']])
            ->get();
            if(count($booking) == 0)
            {
                array_push($emps_final,$emp);
            }
        }
        $new = array();
        foreach($emps_final as $emp)
        {
            array_push($new,$emp->emp_id);
        }
        $emps_final_1 = Employee::whereIn('emp_id',$new)->get();
        if(count($emps_final_1) > 0) {
            return response()->json(['msg' => 'Employees', 'data' => $emps_final_1, 'success' => true], 200);
        }
        else {
            return response()->json(['msg' => 'No employee available at this time', 'success' => false], 200);
        }

    }

    public function store(Request $request)
    {
        $request->validate([
            'booking_id' => 'bail|required',
            'name' => 'bail|required',
            'email' => 'bail|required|email',
            'phone' => 'bail|required',
            'address' => 'bail|required',
            'service_id' => 'bail|required',
            'date' => 'bail|required',
            'start_time' => 'bail|required',
            'price' => 'bail|required|numeric',
            'emp_id' => 'bail|required',
        ]);

        $salon = Salon::where('owner_id', '1')->first();
        $booking = new Booking();

        $services =  str_replace('"', '',json_encode($request->service_id));
        $booking->service_id = $services;
        $duration = Service::whereIn('service_id', $request->service_id)->sum('time');

        $start_time = new Carbon($request['date'].' '.$request['start_time']);
        $booking->end_time = $start_time->addMinutes($duration)->format('h:i A');
        $booking->salon_id = $salon->salon_id;
        $booking->emp_id = $request->emp_id;
        $booking->price = $request->price;
        $booking->start_time = $request->start_time;
        $booking->date = $request->date;
        $booking->payment_type = "CASH ON SERVICE";
        $booking->booking_status = "Approved";
        $booking->name = $request->name;
        $booking->email = $request->email;
        $booking->phone = $request->phone;
        $booking->address = $request->address;
        $booking->booking_id = $request->booking_id;

        $booking->save();

        $create_appointment = Template::where('title','Create Appointment')->first();

        $not = new Notification();
        $not->booking_id = $booking->id;
        //$not->user_id = $booking->user_id;
        $not->user = $booking->name;
        $not->title = $create_appointment->subject;

        $detail['UserName'] = $booking->name;
        $detail['Date'] = $booking->date;
        $detail['Time'] = $booking->start_time;
        $detail['BookingId'] = $booking->booking_id;
        $detail['SalonName'] = $booking->salon->name;
        $detail['AdminName'] = AdminSetting::first()->app_name;

        $data = ["{{UserName}}", "{{Date}}","{{Time}}","{{BookingId}}","{{SalonName}}"];
        $message = str_replace($data, $detail, $create_appointment->msg_content);
        $not->msg = $message;
        $not->save();

        $mail_enable = AdminSetting::first()->mail;
        $notification_enable = AdminSetting::first()->notification;

        if($mail_enable == 1)
        {
            try{
                Mail::to($booking->email)->send(new CreateAppointment($create_appointment->mail_content,$detail));
            }
            catch (\Throwable $th) {}
        }
        if($notification_enable == 1 && $booking->user->device_token != null)
        {
            try{
                OneSignal::sendNotificationToUser(
                    $message,
                    $booking->user->device_token,
                    $url = null,
                    $data = null,
                    $buttons = null,
                    $schedule = null,
                    $create_appointment->subject
                );
            }
            catch (\Throwable $th) {}
        }
        return response()->json(['msg' => 'Booking successfully', 'data' => $booking, 'success' => true], 200);


    }

}
