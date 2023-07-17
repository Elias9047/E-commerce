<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;
use ShoppingCart;
use App\Models\Order;
use App\Models\OrderDetails;
use Session;
class CheckoutController extends Controller
{
    public function index()
    {
        if(session::get('customer_id')){
            $this->customer = Customer::find(session::get('customer_id'));
        }else{
            $this->customer = '';
        }
        return view('website.checkout.index',[
            'customer' => $this->customer
        ]);
    }
    private static $Customer,$Order,$Order_details;
    public function newCashOrder(Request $request){
        if(session::get('customer_id')){
            $this->customer = Customer::find(session::get('customer_id'));
        }else{

            $this->validate($request,[
                'name'=>'required',
                'email'=>'required|unique:customers,email',
                'phone'=>'required|unique:customers,phone',
                'address'=>'required',
            ]);
            $this->customer = Customer::newCustomer($request);
            Session::put('customer_id',$this->customer ->id);
            Session::put('customer_name',$this->customer->name);
        }
        self::$Order = Order::newOrder($request , $this->customer->id);

        OrderDetails::newOrderDetails(self::$Order->id);

        return redirect('/complete-order')->with('message','Order Successfully!');
    }

    public function  completeOrder(){
        return view('website.checkout.complete-order');
    }
}
