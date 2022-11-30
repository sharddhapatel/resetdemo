<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\stat;
use App\Models\district;
use App\Models\city;
use Illuminate\Support\Facades\Session;
use App\Models\rejestration;
use Illuminate\Auth\Events\Validated;

use App\Notifications\Resetpassword;
use Illuminate\Support\Facades\Notification;
use Illuminate\Support\Facades\Hash;

class homecontroller extends Controller
{
    public function rejestration()
    {
        $stats = stat::all();
        return view('rejestration')->with(['stats' => $stats]);
    }
    //    public function insertrejestration(Request $request){
    //       if ($request->isMethod('get')) {
    //          return view('rejester');
    //      } else {
    //          $data = $request->all();

    //          $ans = DB::table('rejester')->insert(["fname"=>$data['firstname'],"lname"=>$data['lastname'],"email"=>$data['email'],"password"=>$data['password'],"stat"=>$data['state'],"dist"=>$data['district'],"message"=>$data['message']]);

    //          return redirect()->back()->with("message", "Insert Sucessfully...");
    //      }
    //      }
    public function getdis($id)
    {
        $dist = district::where("state_id", $id)->get()->pluck("district_title", "districtid");

        return response()->json($dist);
    }

    public function index(){
        return view('welcome');
      }
      
    // public function insertrejestration(Request $request)
    // {
    //     $data = $request->all();
    //     $email = $request->input('email');
    //     $count = DB::table('rejester')->where(['email' => $email])->count();
    //     if ($request->isMethod('get')) {    
    //         return view('rejester');
    //     } else {
    //         if ($count > 0) {
    //             return redirect()->back()->with('error', 'Email Has been Exist...Please Enter Another Email');
    //         } else
    //          {

    //             $ans = DB::table('rejester')->insert(["fname" => $data['firstname'], "lname" => $data['lastname'], "email" => $data['email'], "password" => $data['password'], "stat" => $data['state'], "dist" => $data['district'], "message" => $data['message']]);
    //             return redirect('rejestration')->with("message", "Insert Sucessfully..");
    //         }
    //     }
    // }
    public function insertrejestration(Request $request)
    {
        $data = $request->all();
        $email = $request->input('email');
        $count = DB::table('rejester')->where(['email' => $email])->count();
        if ($request->isMethod('get')) {    
            return view('rejester');
        } else {
            if ($count > 0) {
                return redirect()->back()->with('error', 'Email Has been Exist...Please Enter Another Email');
            } else
             {

                $ans = DB::table('rejester')->insert(["fname" => $data['firstname'], "lname" => $data['lastname'], "email" => $data['email'], "password" => $data['password'], "stat" => $data['state'], "dist" => $data['district'], "message" => $data['message'],"phoneno" => $data['phoneno'],"code"=>$data['code']]);
                return redirect('rejestration')->with("message", "Insert Sucessfully..");
            }
        }
    }
    public function login()
    {
        return view('login');
    }
    public function insertlogin(Request $req)
    {
        $email = $req->input('email');
        $password = $req->input('password');
        $data = DB::table('rejester')->where('email', $email)->first();
        $count = DB::table('rejester')->where(['email' => $email])->count();
        $count1 = DB::table('rejester')->where(['password' => $password])->count();

        if ($email != " " && $password != " ") {
            if ($count > 0 && $count1 > 0) {
                Session::put('user_id', $data->id);
                Session::put('studemail', $data->email);

                return redirect('home');
            } else {
                return redirect()->back()->with('error', "please enter right EMAIL and PASSWORD");
            }
        } else {
            return redirect()->back()->with('error', "enter email and password");
        }
    }

    public function home(Request $request)
    {
        $requestData = ['id', 'fname', 'lname', 'email', 'password', 'stat', 'district', 'message'];
        $name = $request->input('search');
        $data = DB::table('rejester')
            ->where('fname', "like", "%" . $name . "%")
            ->paginate(5);
        return view('home')->with(['data' => $data]);
    }

    public function forget()
    {
        return view('forget');
    }
    public function resetlink(Request $request)
    {
        $data = $request->all();
        $remember_token = rand(100000, 999999);
        $email = $request->input('email');
        $same = DB::table('rejester')->where(['email' => $email])->count();

        $time = date('y-m-d H:i:s', time());
        if ($same > 0) {
            $reset = DB::table('rejester')->where(['email' => $email])->update(['remember_token' => $remember_token, 'updated_at' => $time]);

            $list = DB::table('rejester')->where(['email' => $email])->first();
            $users = rejestration::where("email", $data['email'])->first();

            Notification::send($users, new ResetPassword($remember_token));
            return redirect('forget')->with(["message" => "Link send successfully...", "list" => $list]);
        } else {
            return redirect('forget')->with('error', "Email must be Rejestered First");
        }
    }

    public function reset(Request $request, $token)
    {
        $email = $request->input('email');
        $time = date('Y-m-d H:i:s', time());
        $query = DB::table('rejester')->where('remember_token', $token)->get();
        if (count($query) > 0) {
            DB::table('rejester')->where('remember_token', $token)->whereRaw('ABS(TIMESTAMPDIFF(MINUTE, "' . $query[0]->updated_at . '", ?)) >=1', [$time])->update(array("remember_token" => $token, 'updated_at' => $time));
        }
        $list = DB::table('rejester')->where(['remember_token' => $token])->first();
        if ($list) {
            return view('resend')->with(["list" => $list, 'token' => $token]);
        } else {
            return redirect('forget')->with('error', 'Link Expire plese Resend The Link');
        }
    }

    public function resendpassword(Request $request)
    {
        $data = $request->all();
        $npass = $request->input('npass');
        $cpass = $request->input('cpass');
        $id = $request->input('id');

        $time = date('Y-m-d H:i:s', time());
        $list = DB::table('rejester')->where('id', $data['id'])->first();

        if ($npass != '' && $cpass != '') {
            if ($npass == $cpass) {
                $b = DB::table('rejester')->where('id', $id)->update(["password" => $npass, 'updated_at' => $time]);
                return redirect('login')->with(['data' => $data, 'id' => $id]);
            } else {
                return redirect()->back()->with("error", "New Password and Confirm Password not same");
            }
        } else {
            return redirect()->back()->with("error", "Plese Fill all Fields");
        }
    }
    public function editrejester($id)
    {
        $stats = stat::all();
        $data = DB::table('rejester')->where('id', $id)->first();
        return view('editrejestration')->with(['data' => $data, 'stats' => $stats]);
    }
    public function editrejesters(Request $request)
    {
        $data = $request->all();
        if ($data['firstname'] != '') {
            DB::table('rejester')->where('id', $data['id'])->update(["fname" => $data['firstname'], "lname" => $data['lastname'], "email" => $data['email'], "password" => $data['password'], "stat" => $data['state'], "dist" => $data['district'], "message" => $data['message']]);
            return redirect()->back()->with('message', 'Update Successfully!');
        } else {
            return redirect()->back()->with('error', ' Are Not Updated!');
        }
    }
    public function deleterejester(Request $request, $id)
    {
        $data = DB::table('rejester')->where('id', $id)->delete();
        return redirect()->back()->with('message', 'delete succesfully');
    }
}
