<!DOCTYPE html>
<html>
<head>
	<title>Create Account | teraFUN </title>
	
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
	<!-- Latest compiled JavaScript -->
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="js/validateparent.js"></script>
	
	
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
   
	
	footer{
	bottom:0px;
	left:0px;
	width:100%;
	line-height: 35px;
	text-align: center;
	font-weight: bold;
	background-color: #CCC;
}

p1 {
font-size: small;
font-family: helvectia, geneva, arial, sun-sans, sans serif;
color: red;
}

.validation
    {
      color: red;
      margin-bottom: 20px;
    }

.form-body{
    margin:25px;
}
.form-top-right{
	width : 25%;
	float:left;
	font-size: 66px;
}
.form-top-left{
	width : 75%;
	float:left;
}
.form-element{
	display: inline;
	width:100%;
}
	button.form-element{
		margin-bottom: 20px;
	}

.module-form{
	/*border:1px solid blue;*/
	background-color: #ECF0F1;
	display: inline-block;
    vertical-align: middle;
    padding-left: 0px;
    padding-right: 0px;
    opacity: 0;	/*We are going to animate this */
}
	.module-heading{
		margin:20px 0px;
	}
@media (min-width:768px){
	.middle-border {
	    min-height: 300px;
	    margin-top: 100px;
	    border-right: 1px solid #000;
	    border-right: 1px solid rgba(0, 0, 0, 0.6);
	}
	.mobile{
		display: none;
	}
	.desktop{
		display: inline;
	}
	.glyphicon-validation{
		font-size:15px;
		margin: 7px;
	}
}
@media (max-width:767px){
	.middle-border {
	    min-height: auto;
	    margin: 65px 30px 0 30px;
	    border-right: 0;
	}
	.mobile{
		display: inline;
		margin:20px 0px;
	}
	.desktop{
		display: none;
	}
	.glyphicon-validation{
		font-size:10px;
		margin: 7px;
	}
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
			
				<a href="basics.html" class="navbar-brand"><img src="logo.png"  class="img-responsive" alt=""/></a>
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
  
	          
  <h2 style="text-align: left"> Create new Account</h2>
		   
  <div class="form-body"> 
  <form >
  	 <div class="row">
  	 	<div class="form-group fname col-xs-6">
      	<label for="fname"><span class="glyphicon glyphicon-user"></span>First Name</label>
      	<input type="text" class="form-control fname-validation form-element" name="fname" placeholder="Enter Your First Name" data-validation="false">
	  	<span class="error"><p1 id="fname_error"></p1></span>
    	</div>

    	<div class="form-group lname col-xs-6">
      	<label for="lname"><span class="glyphicon glyphicon-user"></span> Last Name</label>
      	<input type="text" class="form-control lname-validation form-element" name="lname" placeholder="Last Name" data-validation="false">
    	<span class="error"><p1 id="lname_error"></p1></span>
    	</div>
  	 
  	 
  	 
  	 </div>
  	 
    <div class="form-group usn">
    	<label for="username"> <span class="glyphicon glyphicon-user"> </span> UserName</label>
      <input type="text" class="form-control usn-validation form-element" name="usn" placeholder="Enter a valid Username">
    </div>
    
  
    <div class="form-group email">
    	<label for="Email"> <span class="glyphicon glyphicon-envelope"> </span> Email</label>
        <input type="email" class="form-control email-validation form-element" name="email" aria-describedby="emailHelp" placeholder="Enter your email address" data-validation="false">
   		<span class="error"><p1 id="email_error"></p1></span>
	</div>
	 <div class="row">
	<div class="form-group password col-xs-6">
        <label for="password"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
		<input  type="password" class="form-control password-validation form-element" name="password" placeholder="Password" data-validation="false">
  		<span class="error"><p1 id="pass1_error"></p1></span>
    </div>
    <div class="form-group confirm-password col-xs-6">
     	<label for="confirm-password"><span class="glyphicon glyphicon-eye-open"></span> Confirm Password</label>
		<input  type="password" class="form-control password-confirmation form-element" name="password1" placeholder="Confirm Password" data-validation="false">
    	<span class="error"><p1 id="pass2_error"></p1></span>
    </div>
    </div>
      
    
	<div class="row">
      <div class="form-group addr col-xs-6">
      <label for="addr"><span class="glyphicon glyphicon-home"></span> Address</label>
      <input type="text" class="form-control addr-validation form-element" name="addr" placeholder="Address" data-validation="false">
	  <span class="error"><p1 id="addr_error"></p1></span>
    </div>  

    <div class="form-group postal col-xs-6">
      <label for="postal"><span class="glyphicon glyphicon-map-marker"></span> Postal Code</label>
      <input type="text" class="form-control postal-validation form-element" name="postal"  placeholder="Postal Code" data-validation="false">
      <span class="error"><p1 id="postal_error"></p1></span>
    </div> 
    </div>

    <div class="form-group tel">
      <label for="tel"><span class="glyphicon glyphicon-phone-alt"></span>  Tel. Number</label>
      <input type="text" class="form-control tel-validation form-elementl" name="tel" placeholder="Telephone Number" data-validation="false">
    	<span class="error"><p1 id="tel_error"></p1></span>
    </div>

    <div class="form-group bankaccount">
      <label for="bankaccount"><span class="glyphicon glyphicon-piggy-bank"></span> Bank Account Number</label>
      <input type="text" class="form-control bank-validation form-element" name="bankaccount" placeholder="Bank Account Number" data-validation="false">
      <span class="error"><p1 id="bank_error"></p1></span>
    </div>
      
	<button type="button" class="btn btn-default btn-danger btn-block submit-btn signup-btn"><span class="glyphicon glyphicon-pencil"></span>&nbsp; Signup </button>
  </form>
    
	
  </div>
  <div class="modal-footer">

          <!-- Message from serverside (basanth)-->
          <div class="message pull-left" id="signup-message"></div>
        </div>
      </div>
</div>

 <script async defer
     src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDJxFd20F7bBF7yY7hdjPcw0UybXJXiPYE">
    </script>

<script src="https://code.jquery.com/jquery-2.1.4.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>

