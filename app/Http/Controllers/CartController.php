<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use ShoppingCart;

class CartController extends Controller
{
    private $product;
    public function index(Request $request,$id)
    {
        $this->product = Product::find($id);
        ShoppingCart::add($this->product->id,$this->product->name,$request->qty,$this->product->selling_price,['image' =>$this->product->image,'category'=>$this->product->category->name,'brand'=>$this->product->brand->name]);
        return redirect('/show-cart');
    }

    public function showCart(){
        return view('website.cart.index',[
            'cart_products'=>ShoppingCart::all()
        ]);
    }
    public function updateQty(Request $request,$id){
        ShoppingCart::update($id,$request->qty);
        return redirect('/show-cart')->with('update','Qty Update successfully!');
    }

    public function remove($id){
        ShoppingCart::remove($id);
        return redirect('/show-cart')->with('remove','Remove successfully!');
    }


}
