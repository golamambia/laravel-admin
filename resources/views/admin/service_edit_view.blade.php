@extends('layouts.admin')

@section('content')

<div class="content-header">

  <div class="container-fluid">

    <div class="row mb-2">

      <div class="col-sm-6">

        <h1 class="m-0 text-dark">{{ __('Sermon Update') }}</h1>

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

            <h3 class="card-title">Edit mode</h3>

          </div>

          <form role="form" action="{{URL::to('admin/service-update-post')}}" enctype="multipart/form-data" method="POST">

            @csrf

            <input type="hidden" name="id_id" id="id_id" value="{{ $single_info->id }}">

            <div class="card-body">

              

              <div class="row">

               <div class="col-md-6">

                    <div class="form-group">

                <label for="Picture">Title*</label>

                <input type="text" class="form-control" id="title" name="title" required="required" placeholder="Title" value="{{ $single_info->title }}">

              </div>

                  </div>

                  <div class="col-md-6">

                    <div class="form-group">

                <label for="Picture">Short description*</label>

                <input type="text" class="form-control" id="short_description" name="short_description" required="required" placeholder="Short description" value="{{ $single_info->short_description }}">

              </div>

                  </div>

             
                  <div class="col-sm-12">

                    <div class="form-group">

                <label for="Picture">Long description*</label>
<textarea  class="form-control" id="long_description" name="long_description" required="required" placeholder="Long description" rows="6">{{ $single_info->long_description }}</textarea>
             
              </div>

                  </div>


                  <div class="col-md-6">

                    <div class="form-group">

                <label for="Picture">Picture*</label>

                <input type="file" class="form-control" id="picture" name="picture" >

              </div>

                  </div>

                  <div class="col-md-6">

                    <div class="form-group">

                <label for="Picture">Picture</label>

               <img style="width: 150px; height: 100px;" src="{{ asset('public') }}/upload/service/{{ $single_info->icon }}" alt="" class="form-control">

              </div>

                  </div>

                

              </div>

              

              

            </div>

            <div class="card-footer">

              <button type="submit" class="btn btn-primary">Update</button>

            </div>

          </form>




        </div>

      </div>

    </div>

  </div>

</section>

@endsection