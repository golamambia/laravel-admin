<nav class="mt-2">
  <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
    <li class="nav-item">
      <a href="{{ url('admin/home') }}" class="nav-link active">
        <i class="nav-icon fas fa-tachometer-alt"></i>
        <p>
          Dashboard
          <span class="right badge badge-danger">Home</span>
        </p>
      </a>
    </li>
    <!-- <li class="nav-item has-treeview <?php  if(request()->is('admin/user-addd-view') || request()->is('admin/user-list-view') || request()->is('admin/user-update-view/*')){ echo 'menu-open';}?>">
      <a href="#" class="nav-link">
        <i class="nav-icon fas fa-users"></i>
        <p>
          User
          <i class="fas fa-angle-left right"></i>
        </p>
      </a>
      <ul class="nav nav-treeview">
        <li class="nav-item">
          <a href="{{ url('admin/user-addd-view') }}" class="nav-link {{ request()->is('user-addd-view') ? 'active' : '' }}">
            <i class="far fa-circle nav-icon"></i>
            <p>Add User</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="{{ url('admin/user-list-view') }}" class="nav-link {{ request()->is('user-list-view') ? 'active' : '' }}">
            <i class="far fa-circle nav-icon"></i>
            <p>List User</p>
          </a>
        </li>
      </ul>
    </li> -->
     <li class="nav-item has-treeview <?php  if(request()->is('admin/slider-add')|| request()->is('admin/slider-edit-view/*') || request()->is('admin/slider-list-view')|| request()->is('admin/service-list')|| request()->is('admin/service-add') || request()->is('admin/service-edit-view/*')|| request()->is('admin/sermon-list')|| request()->is('admin/sermon-add') || request()->is('admin/sermon-edit-view/*') || request()->is('admin/gallery-add')|| request()->is('admin/gallery-edit-view/*') || request()->is('admin/gallery-list-view')){ echo 'menu-open';}?>">

       <a href="#" class="nav-link">
        <i class="nav-icon fa fa-th"></i>
        <p>
          Home page
          <i class="fas fa-angle-left right"></i>
        </p>
      </a>
      <ul class="nav nav-treeview">
        <li class="nav-item">
          <a href="{{ url('admin/slider-add') }}" class="nav-link {{ request()->is('admin/slider-add') ? 'active' : '' }}">
            <i class="far fa-circle nav-icon"></i>
            <p>Add Slider</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="{{ url('admin/slider-list-view') }}" class="nav-link {{ request()->is('admin/slider-addslider-list-view') ? 'active' : '' }}">
            <i class="far fa-circle nav-icon"></i>
            <p>Slider List</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="{{ url('admin/gallery-add') }}" class="nav-link {{ request()->is('admin/gallery-add') ? 'active' : '' }}">
            <i class="far fa-circle nav-icon"></i>
            <p>Add Gallery</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="{{ url('admin/gallery-list-view') }}" class="nav-link {{ request()->is('admin/gallery-addslider-list-view') ? 'active' : '' }}">
            <i class="far fa-circle nav-icon"></i>
            <p>Gallery List</p>
          </a>
        </li>
         <li class="nav-item">

          <a href="{{ url('admin/service-add') }}" class="nav-link {{ request()->is('admin/service-add') ? 'active' : '' }}">

            <i class="far fa-circle nav-icon"></i>

            <p>Service Add</p>

          </a>

        </li>
<li class="nav-item">

          <a href="{{ url('admin/service-list') }}" class="nav-link {{ request()->is('admin/service-list') ? 'active' : '' }}">

            <i class="far fa-circle nav-icon"></i>

            <p>Service List</p>

          </a>

        </li>
         <li class="nav-item">

          <a href="{{ url('admin/sermon-add') }}" class="nav-link {{ request()->is('admin/sermon-add') ? 'active' : '' }}">

            <i class="far fa-circle nav-icon"></i>

            <p>Sermon Add</p>

          </a>

        </li>
<li class="nav-item">

          <a href="{{ url('admin/sermon-list') }}" class="nav-link {{ request()->is('admin/sermon-list') ? 'active' : '' }}">

            <i class="far fa-circle nav-icon"></i>

            <p>Sermon List</p>

          </a>

        </li>
      </ul>
    </li>
    
    <li class="nav-item has-treeview {{ request()->is('admin/admin-setting') ? 'menu-open' : '' }}">
      <a href="#" class="nav-link">
        <i class="nav-icon fas fa-cog"></i>
        <p>
          Admin Setting
          <i class="fas fa-angle-left right"></i>
        </p>
      </a>
      <ul class="nav nav-treeview">
        <li class="nav-item">
          <a href="{{ url('admin/admin-setting') }}" class="nav-link ">
            <i class="far fa-circle nav-icon"></i>
            <p>Admin Details</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="{{ url('admin/admin-setting') }}" class="nav-link">
            <i class="far fa-circle nav-icon"></i>
            <p>Change Password</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="{{ route('logout') }}" class="nav-link" onclick="event.preventDefault();document.getElementById('logout-form').submit();">
            <i class="far fa-circle nav-icon"></i>
            <p>{{ __('Logout') }}</p>
          </a>
        </li>
      </ul>
    </li>
    <!-- <li class="nav-header">EXAMPLES</li> -->
  </ul>
</nav>
<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
@csrf
</form>