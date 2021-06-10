@extends('layouts.admin')

@section('content')

<div class="content-header">

  <div class="container-fluid">

    <div class="row mb-2">

      <div class="col-sm-6">

        <h1 class="m-0 text-dark">{{ __('Service List') }}</h1>

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



      <div class="col-md-12">

        <div class="card card-primary">

          <div class="card-header">

            <h3 class="card-title">Data list</h3>

          </div>




          <div class="card-body">

  <table class="table table-bordered">

    <thead>                  

      <tr>

        <th style="width: 10px">#</th>
         <th>Title</th>
         <th>Short Description</th>
               <th>Picture</th>

       

        <th>Action</th>

      </tr>

    </thead>

    <tbody>

      <?php

      if($service_list){

      foreach ($service_list as $key => $value) {

      ?>

      <tr>

        <td>{{ $key + 1 }}.</td>

     
<td>{{ $value->title }}</td>
<td>{{ $value->short_description }}</td>
       
        <td><img style="width: 50px; height: 50px;" src="{{ asset('public') }}/upload/service/{{ $value->icon }}" alt=""></td>

       <td>

        <a href="{{url('admin/service-edit-view/'. $value->id)}}" class="btn btn-success btn-sm"><i class="fas fa-pencil-alt"></i></a>

        <a href="{{url('admin/service-remove/'. $value->id)}}" onclick="return confirm('Are you sure you want to delete this data!!. Data once deleted can\'t be recover.')" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></a>

        </td>

      </tr>

      <?php }} ?>

    </tbody>

  </table>

</div>





        </div>

      </div>

    </div>

  </div>

</section>

@endsection