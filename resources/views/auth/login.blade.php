@extends('layouts.app')

@section('content')
 <div class="mainarea p-9">
   <div class="container">
      <div class="login_area">
             <div class="row row-0">
               <div class="col-lg-6  loginleft d-flex align-content-stretch">
              
                 <div class="login_formarea">
                       <form method="POST" action="{{ route('login') }}" class="cool-b4-form">
                          @csrf
                            <div class="form-step-wrap" id="ExploreFormStep">
                               <div class="form_logo"><img src="{{ asset('public') }}images/logoicon.png" alt=""></div>
                                <div class="form-step collapse show" id="FormStep0" data-parent="#ExploreFormStep">
                                   <h2>Admin Control Panel</h2>
                                   <p>Login to continue your Administrative Panel </p>
                                   
                                   <div class="form-group">
                                       <label for="email">Email Address *</label>
                                      <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                                       @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                    </div>
                                     <div class="form-group">
                                       <label for="password">Password *</label>
                                       <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                    </div>
                                    
                                    <label class="checkarea">remember me
                                     <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                      <span class="checkmark"></span>
                                    </label>
                                    <button type="submit" value="login" class="btn btn-light"> login </button>
                                 
                                @if (Route::has('password.request'))
                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                        {{ __('Forgot Your Password?') }}
                                    </a>
                                @endif
                                    
                              </div>
                                
                                
                            
                             
                                  </div>
                                  
                                  
                                  
                            
                        </form>
                     
                 </div>
               </div>
               <div class="col-lg-6 d-flex align-content-stretch">
                 <div class="login_bg" style="background-image:url({{ asset('public') }}/images/adminbg.jpg);">
                 </div>
               </div>
             </div>
           </div>    
   </div>
 </div>

@endsection
