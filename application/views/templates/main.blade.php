<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Drop ASBL</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    {{ Asset::container('bootstrapper')->styles(); }}
    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>
    {{ Asset::container('bootstrapper')->scripts(); }} 
</head>
<body>
     <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="{{ URL::base() }}"><img src="img/logo.jpg" width="30px"></a>
          <div class="btn-group pull-right">
                
             @if ( Auth::guest() )
              <a class="btn" href="{{ URL::to('login')}}">
                <i class="icon-user"></i> Login
              </a>
            @else
            Welcome, <strong>{{ HTML::link('admin', Auth::user()->username) }} </strong> |
                {{ HTML::link('dashboard', 'dashboard') }} |
                {{ HTML::link('logout', 'Logout') }}
            @endif
                
          </div>
          <div class="nav-collapse">
            <ul class="nav">
              <li><a href="{{ URL::to('pdv') }}">P.D.V.</a></li>
              <li><a href="{{ URL::to('blog') }}">News</a></li>
              <li><a href="{{ URL::to('cart') }}">Panier d'achat</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container">
          <div class="row">
            @yield('content')
          </div>
          @yield('pagination')
          @yield('shoppingcart')
    </div><!--/container-->

    <div class="container">
        <footer>
            <hr />
            <p>Drop ASBL &copy; 2012 <a href="{{ URL::to('conditions') }}">conditions de vente</a></p>
        </footer>
    </div>
</body>
</html>