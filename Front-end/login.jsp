<!DOCTYPE html>
<html>
<head>
	<title>TeraFun</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <style type="text/css">
    body { padding-top: 70px; }
    .jumbotron {
      color: #2c3e50;
      background: #ecf0f1;

    }
    .navbar-inverse {
      background: #2c3e50;
      color: white;
    }
    .navbar-inverse .navbar-brand, .navbar-inverse a{
      color:white;
      height:60px;
    }
    .navbar-inverse .navbar-nav>li>a {
      color: white;
      margin-top:10px;
      font-size:150%;
    } 
    .navbar-brand img{
       height:50px;
       margin-top:0px;
    }
    .form-inline{
	margin-top:20px;
    }


  </style>

</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				 <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-nav-demo" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
			
				<a href="basics.html" class="navbar-brand"><img src="symbol.jpg"  class="img-responsive" alt=""/></a>
			</div>
			<div class="collapse navbar-collapse" id="bs-nav-demo">
				<ul class="nav navbar-nav">
					<li><a href="basics.html">MyLocation</a></li>
					<li><a href="#"> Contact   </a></li>
					<li><a href="#"> About   </a></li>
					<li><a href="#">    </a></li>
					<li><a href="#">    </a></li>
					
				
				

				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Signup  <i class="fa fa-user-plus"></i></a></li>
       					<li><a href="#about">Login  <i class="fa fa-user"></i></a></li>
				</ul>
				<form class="form-inline my-2 my-lg-0">
				      <input class="form-control mr-sm-2 " type="search" placeholder="Search" aria-label="Search">
      				      <button class="btn btn-danger my-2 my-sm-0" type="submit">Search</button>
  			        </form>
			</div>
		</div>
	</nav>

  <div class="container">

  <div class="jumbotron">
    <p>Connect to your account and the Fun begins!</p> 
    
    <form name="loginForm" method="post" action="hello.txt"> 
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" >
   
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Password">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
    
	
  </div>

 

<script src="https://code.jquery.com/jquery-2.1.4.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>

