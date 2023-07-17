<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Order;
use Illuminate\Http\Request;
use Session;
class CustomerOrderController extends Controller
{
    public function order(){
        $this->order = Order::where('customer_id',Session::get('customer_id'))->get();
        return view('website.customer.order',[
            'orders'=>$this->order
        ]);
    }
}
