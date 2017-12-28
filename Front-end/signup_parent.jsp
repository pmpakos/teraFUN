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
<script type="text/javascript" src="js/myjs.js"></script> 
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
    
  <form name="signUpForm" method="post" action="psignup.txt"> 
    <div class="form-group">
      <label for="exampleInput1">Username</label>
      <input type="text" class="form-control" name="username" id="exampleInput1" placeholder="Enter a valid Username" >
    </div>

    <div class="form-group">
      <label for="exampleInput2">Password</label>
      <input type="password" class="form-control" name="password" id="exampleInput2" placeholder="Password">
    </div>

    <div class="form-group">
      <label for="exampleInput3">Email</label>
      <input type="email" class="form-control" name="email" id="exampleInput3" aria-describedby="emailHelp" placeholder="Enter a valid Username" >
    </div>
    
    <div class="form-group">
      <label for="exampleInput4">First Name</label>
      <input type="text" class="form-control" name="firstname" id="exampleInput4" placeholder="First Name">
    </div>

    <div class="form-group">
      <label for="exampleInput5">Last Name</label>
      <input type="text" class="form-control" name="lastname" id="exampleInput5" placeholder="Last Name">
    </div>

    <div class="form-group">
      <label for="exampleInput6">Address</label>
      <input type="text" class="form-control" name="address" id="exampleInput6" placeholder="Address">
    </div>  

    <div class="form-group">
      <label for="exampleInput7">Postal Code</label>
      <input type="text" class="form-control" name="postal" id="exampleInput6" placeholder="Postal">
    </div>    


    <div class="form-group">
      <label for="exampleInput8">Number</label>
      <input type="text" class="form-control" name="number" id="exampleInput8" placeholder="Telephone Number">
    </div>

    <div class="form-group">
      <label for="exampleInput9">Bank Account</label>
      <input type="text" class="form-control" name="account" id="exampleInput8" placeholder="Bank Account">
    </div>  

    <button onclick="register_form()" type="submit" class="btn btn-primary">Submit</button>
  </form>
    
	
  </div>

 

<script src="https://code.jquery.com/jquery-2.1.4.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>

