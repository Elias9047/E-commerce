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
                       <div class="card-title"> <h5 class="text-center">My dashbaord</h5></div>
                   </div>
                </div>
            </div>
        </div>
    </div>
@endsection
