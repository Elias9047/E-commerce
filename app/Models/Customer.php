<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;
    private static $Customer;
    public static function newCustomer($request){
        self::$Customer = new Customer();
        self::$Customer->name = $request->name;
        self::$Customer->email = $request->email;
        self::$Customer->phone = $request->phone;
        self::$Customer->password = bcrypt($request->phone);
        self::$Customer->save();
        return self::$Customer;
    }
}
