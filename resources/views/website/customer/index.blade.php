@extends('website.master')

@section('body')
    <div class="container">
        <div class="row mt-6">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <div class="card-title">Login</div>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('customer.login') }}" method="post">
                            @csrf
                            <div class="form-group mb-4">
                                <label for="">E-mail</label>
                                <input type="email" name="email" class="form-control">
                                @if(session('invalid'))
                                    <p class="text-danger">{{ session('invalid') }}</p>
                                @endif
                            </div>
                            <div class="form-group mb-4">
                                <label for="">Password</label>
                                <input type="password" name="password" class="form-control">
                                @if(session('invalid_pass'))
                                    <p class="text-danger">{{ session('invalid_pass') }}</p>
                                @endif
                            </div>
                            <input type="submit" class="btn btn-success">
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
              <div class="card">
                  <div class="card-header">
                      <div class="card-title">Register</div>
                  </div>
                  <div class="card-body">
                      <form action="">
                          @csrf
                          <div class="form-group mb-2">
                              <label for="">Name*</label>
                              <input type="text" name="name" class="form-control">
                          </div>
                          <div class="form-group mb-2">
                              <label for="">E-mail*</label>
                              <input type="email" name="email" class="form-control">
                          </div>
                          <div class="form-group mb-2">
                              <label for="">Phone*</label>
                              <input type="number" name="number" class="form-control">
                          </div>
                          <div class="form-group mb-4">
                              <label for="">Password*</label>
                              <input type="password" name="password" class="form-control">
                          </div>
                          <input type="submit" class="btn btn-success ">
                      </form>
                  </div>
              </div>
            </div>
        </div>
    </div>
@endsection
