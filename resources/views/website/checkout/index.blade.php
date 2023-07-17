@extends('website.master')

@section('title')
Checkout Page
@endsection
@section('body')
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">checkout</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="index.html"><i class="lni lni-home"></i> Home</a></li>
                        <li><a href="index.html">Shop</a></li>
                        <li>checkout</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <section class="checkout-wrapper section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="checkout-steps-form-style-1">
                        <ul class="nav nav-pills mb-4">
                            <li><a href=""  class="nav-link mr-3 active" data-bs-target="#cash" data-bs-toggle="pill" >Cash-on-delivery</a></li>
                           <li> <a href="" class="nav-link" data-bs-target="#online" data-bs-toggle="pill" >Online</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="cash">
                                <form action="{{ route('new-cash-order') }}" method="post" enctype="multipart/form-data">
                                <div class="row" id="cash-on-delivery">
                                        @csrf
                                        <div class="col-md-12">
                                            <div class="single-form form-default">
                                                <label>Name</label>
                                                <div class="row">
                                                    <div class="col-md-12 form-input form">
                                                        @if(isset($customer->id))
                                                        <input type="text" required name="name" value="{{ $customer->name }}" readonly placeholder="Name">
                                                        @else
                                                            <input type="text" required name="name" placeholder="Name">
                                                            <span class="text-danger">{{ $errors->has('name') ? $errors->first('name'):' ' }}</span>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="single-form form-default">
                                                <label>Email Address</label>
                                                <div class="form-input form">
                                                    @if(isset($customer->id))
                                                    <input type="email" value="{{ $customer->email }}" readonly name="email" required placeholder="Email Address">
                                                    @else
                                                        <input type="email" name="email" required placeholder="Email Address">
                                                        <span class="text-danger">{{ $errors->has('email') ? $errors->first('email'):' ' }}</span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="single-form form-default">
                                                <label>Phone Number</label>
                                                <div class="form-input form">
                                                    @if(isset($customer->id))
                                                    <input type="text" name="phone" value="{{ $customer->phone }}" readonly placeholder="Phone Number">
                                                    @else
                                                        <input type="text" name="phone" placeholder="Phone Number">
                                                        <span class="text-danger">{{ $errors->has('phone') ? $errors->first('phone'):' ' }}</span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <label>Delivery Address</label>
                                            <textarea name="address" class="form-control" id="" cols="10" rows="5"></textarea>
                                            <span class="text-danger">{{ $errors->has('address') ? $errors->first('address'):' ' }}</span>

                                        </div>
                                        <div class="col-md-6">
                                        <div class="single-form form-default">
                                            <label>Payment Type</label>
                                            <div class="">
                                                <input type="radio"  name="payment_type" value="1" placeholder="Phone Number" checked> Cash on delivery
                                            </div>
                                        </div>
                                    </div>
                                        <div class="col-md-12">
                                            <div class="single-form button">
                                                <button class="btn btn-success" type="submit">Confirm Order</button>
                                            </div>
                                        </div>
                                </div>
                                </form>
                            </div>
                            <div class="tab-pane fade show" id="online">
                                <h3>Online form</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="checkout-sidebar">
                        <div class="card">
                            <div class="card-header">
                                <div class="card-title">
                                    <p class="text-center p-0">Check out summary</p>
                                </div>
                                <div class="card-body">
                                    <div class="checkout-sidebar-price-table">
                                        <div class="sub-total-price">
                                            @php($subTotal = 0)
                                            @foreach( ShoppingCart::all() as $item)
                                                <div class="total-price">
                                                    <p value="name">
                                                        {{ $item->name }}
                                                        ({{ $item->qty}} * {{ $item->price }})
                                                    </p>
                                                    <p value="price">{{ $price = $item->qty * $item->price }}</p>
                                                </div>
                                                @php($subTotal = $subTotal + $price )
                                            @endforeach
                                        </div>
                                        <div class="total-payable">
                                            <div class="payable-price">
                                                <p value="Sub total">Sub total:</p>
                                                <p>{{ $subTotal }}</p>
                                            </div>
                                        </div>
                                        <div class="total-payable">
                                            <div class="payable-price">
                                                <p value="Vat">Vat(+10%):</p>
                                                <p>{{ $vat = ($subTotal*10)/100 }}</p>
                                            </div>
                                        </div>
                                        <div class="total-payable">
                                            <div class="payable-price">
                                                <p value="Shipping">Shipping(+5% form vat):</p>
                                                <p>{{ $shipping = ($vat*5.5)/100 }}</p>
                                            </div>
                                        </div>
                                        <div class="total-payable">
                                            <div class="payable-price">
                                                <p value="Grant total">Grant total</p>
                                                <p> = {{ $orderTotal = round($subTotal+$vat+$shipping)  }}</p>
                                            </div>
                                            <?php
                                                Session::put('orderTotal', $orderTotal);
                                                Session::put('taxTotal', $vat);
                                                Session::put('shippingTotal', $shipping);
                                            ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
