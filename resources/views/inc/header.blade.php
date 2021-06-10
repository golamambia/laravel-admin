<header class="header_area clearfix">
    <div class="container clearfix">
        <div class="logobox">
            <a href="{{ url('/') }}"><img src="{{ asset('public') }}/images/logo.png" alt=""></a>
        </div>
        <div class="header_area_right">
            <ul>
                <li><a class="btn btn-outline-info" href="{{ url('business') }}">Zivery for Business</a></li>
                <li><a class="btn btn-outline-info" href="{{ url('partner') }}">Zivery for Partner</a></li>
                @guest
                <li>
                    <a class="loginbtn" href="{{ route('login') }}"><img src="{{ asset('public') }}/images/user.png" alt="Sign IN">Sign in</a>
                </li>
                @else
                <li>
                    <a class="loginbtn" href="{{ route('home') }}">
                        <img src="{{ asset('public') }}/images/user.png" alt="My Account">{{ Auth::user()->name }}
                    </a>
                </li>
                @endguest
            </ul>
        </div>
    </div>
</header>