@extends('website.master')

@section('title')
Shopping Cart Page
@endsection

@section('body')

    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">Cart</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="index.html"><i class="lni lni-home"></i> Home</a></li>
                        <li><a href="index.html">Shop</a></li>
                        <li>Cart</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div class="shopping-cart section">
        <div class="container">
            <div class="cart-list-head">
                @if(session('remove'))
                    <p class="alert alert-success">{{ session('remove') }}</p>
                @endif
                    @if(session('update'))
                        <p class="alert alert-success">{{ session('update') }}</p>
                    @endif

                <div class="cart-list-title">
                    <div class="row">
                        <div class="col-lg-1 col-md-1 col-12">
                        </div>
                        <div class="col-lg-4 col-md-3 col-12">
                            <p>Product Name</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>Price</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>Quantity</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>Total</p>
                        </div>
                        <div class="col-lg-1 col-md-2 col-12">
                            <p>Remove</p>
                        </div>
                    </div>
                </div>
                <div class="cart-single-list">
                    @php( $sum = 0);
                    @foreach($cart_products as $cart_product )
                    <div class="row align-items-center">
                        <div class="col-lg-1 col-md-1 col-12">
                            <a href=""><img src="{{asset($cart_product->image)}}" alt="#"></a>
                        </div>
                        <div class="col-lg-4 col-md-3 col-12">
                            <h5 class="product-name"><a href="">{{$cart_product->name }}</a></h5>
                            <p>Category:{{ $cart_product->category }}</p>
                            <p>Brand:{{ $cart_product->brand }}</p>

                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <div class="product-name">
                                {{ $cart_product->price}}
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <form action="{{ route('update-qty',['id'=>$cart_product->__raw_id]) }}" method="post">
                                @csrf
                                <div class="input-group">
                                    <input type="number" class="form-control" name="qty" min="1"  value="{{ $cart_product->qty}}">
                                    <input type="submit" class="btn btn-success btn-sm" value="Update">
                                </div>
                            </form>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>{{ $cart_product->price * $cart_product->qty }}</p>
                        </div>
                        <div class="col-lg-1 col-md-2 col-12">
                            <a class="remove-item" onclick="return confirm('Are you sure remove this?')" href="{{ route('card-product-remove',['id'=>$cart_product->__raw_id]) }}"><i class="lni lni-close"></i></a>
                        </div>
                        @php($sum = $sum + $cart_product->price * $cart_product->qty );
                    </div>
                    @endforeach
                </div>
            </div>
            <div class="row">
                <div class="col-12">

                    <div class="total-amount">
                        <div class="row">
                            <div class="col-lg-8 col-md-6 col-12">
{{--                                <div class="left">--}}
{{--                                    <div class="coupon">--}}
{{--                                        <form action="#" target="_blank">--}}
{{--                                            <input name="Coupon" placeholder="Enter Your Coupon">--}}
{{--                                            <div class="button">--}}
{{--                                                <button class="btn">Apply Coupon</button>--}}
{{--                                            </div>--}}
{{--                                        </form>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
                            </div>

                            <div class="col-lg-4 col-md-12 col-12">

                                <div class="right">
                                    <ul>
                                        <li>Cart Subtotal<span>{{ $sum }}</span></li>
                                        <li>Vat(+5%)<span>{{ $vat = ($sum*5)/100 }}</span></li>
                                        <li>Shipping(+10% from vat)<span>{{ $shipping = ($vat*10)/100 }}</span></li>
                                        <li class="last">You Pay<span>{{ $payable = $sum+$vat+$shipping }}</span></li>
                                    </ul>
                                    <div class="button">
                                        <a href="{{route('checkout')}}" class="btn">Checkout</a>
                                        <a href="product-grids.html" class="btn btn-alt">Continue shopping</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection
