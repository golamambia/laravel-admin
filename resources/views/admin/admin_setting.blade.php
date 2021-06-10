@extends('layouts.admin')
@section('content')
<div class="content-header">
<div class="container-fluid">
<div class="row mb-2">
  <div class="col-sm-6">
    <h1 class="m-0 text-dark">{{ __('Admin Setting') }}</h1>
  </div>
  <div class="col-sm-6">
    <ol class="breadcrumb float-sm-right">
      <li class="breadcrumb-item"><a href="#">{{ __('Home') }}</a></li>
      <li class="breadcrumb-item active">{{ __('Dashboard') }}</li>
    </ol>
  </div>
</div>
</div>
</div>
<section class="content">
<div class="container-fluid">
<div class="row">

@include('admin.message') 

<div class="col-md-6">
<div class="card card-primary">
<div class="card-header">
  <h3 class="card-title">Admin Setting</h3>
</div>
<form role="form" action="{{URL::to('admin/update-admin-details')}}" enctype="multipart/form-data" method="POST">
  @csrf
  <div class="card-body">
    <div class="form-group">
      <label for="Name">Name</label>
      <input type="text" class="form-control" id="name" name="name" placeholder="Name" value="{{ Auth::user()->name }}" required="required">
    </div>
    <div class="form-group">
      <label for="Email">Email address</label>
      <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email" value="{{ Auth::user()->email }}" required="required">
    </div>
  </div>
  <div class="card-footer">
    <button type="submit" class="btn btn-primary">Submit</button>
  </div>
</form>
</div>
</div>

<div class="col-md-6">
<div class="card card-info">
<div class="card-header">
  <h3 class="card-title">Change Password</h3>
</div>
<form role="form" action="{{URL::to('admin/update-admin-password')}}" enctype="multipart/form-data" method="POST">
  @csrf
  <div class="card-body">
    <div class="form-group">
      <label for="Old Password">Old Password</label>
      <input type="password" class="form-control" id="old_password" name="old_password" placeholder="Old Password" required="required">
    </div>
    <div class="form-group">
      <label for="New Password">New Password</label>
      <input type="password" class="form-control" id="new_password" name="new_password" placeholder="New Password" required="required">
    </div>
    <div class="form-group">
      <label for="Confirm New Password">Confirm New Password</label>
      <input type="password" class="form-control" id="confirm_new_password" name="confirm_new_password" placeholder="Confirm New Password" required="required">
    </div>
  </div>
  <div class="card-footer">
    <button type="submit" class="btn btn-info">Submit</button>
  </div>
</form>
</div>
</div>

</div>
</div>
</section>
@endsection
