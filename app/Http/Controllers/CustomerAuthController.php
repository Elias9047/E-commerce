<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use App\Models\Customer;

class CustomerAuthController extends Controller
{
    //
    private static $customer;
    public function index(){
        return view('website.customer.index');
    }
    public function register(Request $request){

    }

    public function login(Request $request){
        self::$customer = Customer::where('email',$request->email)->first();
        if(self::$customer){
            if(password_verify($request->password,self::$customer->password)){
                session::put('customer_id',self::$customer->id);
                session::put('customer_name',self::$customer->name);
                return  redirect('/customer-dashboard');
            }else{
                return back()->with('invalid_pass','Invalid Password');
            }
        }else{
            return back()->with('invalid','Invalid email address');
        }
    }
    public function dashboard(){
        return view('website.customer.dashboard');
    }
    public function logout(){
        Session::forget('customer_id');
        Session::forget('customer_name');
        return redirect('/');

    }

    public function profile(){
        return view('website.customer.profile');
    }
}
