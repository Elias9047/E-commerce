<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use ShoppingCart;

class OrderDetails extends Model
{
    use HasFactory;
    private static $Order_details;
    public static function newOrderDetails($order){

        foreach (ShoppingCart::all() as $item){

            self::$Order_details = new OrderDetails();
            self::$Order_details->order_id = $order;
            self::$Order_details->product_id = $item->id;
            self::$Order_details->product_name = $item->name;
            self::$Order_details->product_qty = $item->qty;
            self::$Order_details->product_price = $item->price;
            self::$Order_details->save();
            ShoppingCart::remove($item->__raw_id);

        }
    }
}
