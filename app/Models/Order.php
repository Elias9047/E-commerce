<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Session;

class Order extends Model
{
    use HasFactory;
    private static $Order;
    public static function newOrder($request ,$customerId){
        self::$Order = new Order();
        self::$Order->customer_id = $customerId;
        self::$Order->order_date  = date('Y-m-d');
        self::$Order->order_timestamps = strtotime(date('Y-m-d'));
        self::$Order->order_total  = Session::get('orderTotal') ;
        self::$Order->tax_total  = Session::get('taxTotal');
        self::$Order->shipping_total  = Session::get('shippingTotal') ;
        self::$Order->delivery_address  = $request->address;
        self::$Order->payment_type  = $request->payment_type;
        self::$Order->save();
        return self::$Order;
    }
}
