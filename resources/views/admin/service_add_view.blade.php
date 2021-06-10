@extends('layouts.admin')

@section('content')

<div class="content-header">

  <div class="container-fluid">

    <div class="row mb-2">

      <div class="col-sm-6">

        <h1 class="m-0 text-dark">{{ __('Service Create') }}</h1>

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

            <h3 class="card-title">Add mode</h3>

          </div>

          <form role="form" action="{{URL::to('admin/service-add-post')}}" enctype="multipart/form-data" method="POST">

            @csrf

            <div class="card-body">

              

              <div class="row">

                  <div class="col-md-6">

                    <div class="form-group">

                <label for="Picture">Title*</label>

                <input type="text" class="form-control" id="title" name="title" placeholder="Title" required="">

              </div>

                  </div>

                  <div class="col-md-6">

                    <div class="form-group">

                <label for="Picture">Short description*</label>

                <input type="text" class="form-control" id="short_description" name="short_description" placeholder="Short description" required="">

              </div>

                  </div>

             
                  <div class="col-sm-6">

                    <div class="form-group">

                <label for="Picture">Long description*</label>
<textarea  class="form-control" id="long_description" name="long_description"  placeholder="Long description" required=""></textarea>
             
              </div>

                  </div>

                  <div class="col-sm-6">

                    <div class="form-group">

                <label for="Picture">Icon*</label>

                <input type="file" class="form-control" id="picture" name="picture" required="">

              </div>

                  </div>

               

              </div>

              

              

            </div>

            <div class="card-footer">

              <button type="submit" class="btn btn-primary">Submit</button>

            </div>

          </form>



        </div>

      </div>

    </div>

  </div>

</section>

@endsection