@extends('website.master')

@section('body')
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <a href="{{ route('customer.dashboard') }}" class="list-group-item list-group-item-action active">
                        Dashboard
                    </a>
                    <a href="{{ route('customer.profile') }}" class="list-group-item list-group-item-action">Profile</a>
                    <a href="{{ route('customer.order') }}" class="list-group-item list-group-item-action">Order</a>
                    <a href="#" class="list-group-item list-group-item-action">Account</a>
                    <a href="#" class="list-group-item list-group-item-action disabled">Change Password</a>
                </div>
            </div>
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">
                        <div class="card-title"> <h5 class="text-center">My Order</h5></div>
                        <table class="table table-bordered">
                            <tr>
                                <th>SI</th>
                                <th>Order No</th>
                                <th>Product Name</th>
                                <th>Order Date</th>
                                <th>Total</th>
                                <th>Delivery Address</th>
                                <th>Action</th>
                            </tr>
                            @foreach($orders as $key=> $order)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>{{ $order->id }}</td>
                                <td>{{ $order->product_name }}</td>
                                <td>{{ $order->order_date }}</td>
                                <td>{{ $order->order_total }}</td>
                                    <td>{{ $order->delivery_address }}</td>
                                    <td>
                                        <a href="" class="btn btn-sm btn-success">Details</a>
                                    </td>
                            </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
