<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!DOCTYPE html>
<html>
<head>
	<title>Create Account | teraFUN </title>
	
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 

	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="css/header.css"> 
	
	<script src="js/validateparent.js"></script>
	

    

	

  <style type="text/css">


  body { padding-top: 70px; }

p1 {
font-size: small;
font-family: helvectia, geneva, arial, sun-sans, sans serif;
color: red;
}

.body1 {
  background: url('static/balls.jpg');
  background-color: #cccccc;
  display: block;
  height: 100%;
  width: 100%;
  left: 0;
  position: fixed;
  right: 0;
  z-index: -1;
   top: 0;

  background-size:cover;
    -webkit-filter: blur(5px);
    -moz-filter: blur(5px);
    -o-filter: blur(5px);
    -ms-filter: blur(5px);
    filter: blur(5px);   
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
.signup-btn {
  background-color: #d9534f;
  outline: none;
  color: #fff;
  font-size: 14px;
  height: auto;
  font-weight: normal;
  padding: 14px 0;
  text-transform: uppercase;
  border-color: #d9534f;
}
.signup-btn:hover,
.signup-btn:focus {
  color: #fff;
  background-color:#c9302c;border-color:#761c19
}

  </style>

</head>
<body>


    <%@include file="header.jsp" %>
 
 
<div class="container">

		 
			
			
			   
  <div class="jumbotron">
  
	          
  <h2 style="text-align: center"> Δημιουργία Νέου Λογαριασμού</h2>
		   
  <div class="form-body"> 
  <form id="registrationForm" role='form'>
  	 
  	 	<div class="row">
  	 	<div class="form-group fname col-xs-6">
      	<label for="fname"><span class="glyphicon glyphicon-user"></span>First Name</label>
      	<input type="text" class="form-control fname-validation form-element" name="fname" placeholder="First Name" data-validation="false">
	  	<span class="error"><p1 id="fname_error"></p1></span>
    	</div>
    	<div class="form-group lname col-xs-6">
      	<label for="lname"><span class="glyphicon glyphicon-user"></span> Last Name</label>
      	<input type="text" class="form-control lname-validation form-element" name="lname" placeholder="Last Name" data-validation="false">
    	<span class="error"><p1 id="lname_error"></p1></span>
    	</div>  	 
  	 </div>
  	 
    <div class="form-group usn">
    	<label for="username"> <span class="glyphicon glyphicon-user" > </span> UserName</label>
      <input type="text" class="form-control usn-validation form-element" name="usn" placeholder="Enter a valid Username" data-validation="false" id="usn-border">
      <span class="error"><p1 id="usn_error"></p1></span>
    </div>
    
  
    <div class="form-group email">
    	<label for="Email"> <span class="glyphicon glyphicon-envelope"> </span> Email</label>
        <input type="email" class="form-control email-validation form-element" name="email" aria-describedby="emailHelp" placeholder="Enter your email address" data-validation="false">
   		<span class="error"><p1 id="email_error"></p1></span>
	</div>
	 <div class="row">
	<div class="form-group password col-xs-6">
        <label for="password"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
		<input  type="password" class="form-control password-validation form-element" id="pass" name="password" placeholder="Password" data-validation="false">
  		<span class="error"><p1 id="pass1_error"></p1></span>
    </div>
    <div class="form-group confirm-password col-xs-6">
     	<label for="confirm-password"><span class="glyphicon glyphicon-eye-open"></span> Confirm Password</label>
		<input  type="password" class="form-control password-confirmation form-element" id="pass1" name="password1" placeholder="Confirm Password" data-validation="false">
    	<span class="error"><p1 id="pass2_error"></p1></span>
    </div>
    </div>
      
    
	<div class="row">
      <div class="form-group addr col-xs-6">
      <label for="addr"><span class="glyphicon glyphicon-home"></span> Address</label>
      <input type="text" class="form-control addr-validation form-element" id="addr" name="addr" placeholder="Address" data-validation="false">
	  <span class="error"><p1 id="addr_error"></p1></span>
    </div>  

    <div class="form-group postal col-xs-6">
      <label for="postal"><span class="glyphicon glyphicon-map-marker"></span> Postal Code</label>
      <input type="text" class="form-control postal-validation form-element" id="postal" name="postal"  placeholder="Postal Code" data-validation="false">
      <span class="error"><p1 id="postal_error"></p1></span>
    </div> 
    </div>

    <div class="form-group tel">
      <label for="tel"><span class="glyphicon glyphicon-phone-alt"></span> Contact Number</label>
      <input type="text" class="form-control tel-validation form-elementl" name="tel" placeholder="Contact Number" data-validation="false">
    	<span class="error"><p1 id="tel_error"></p1></span>
    </div>

    <div class="form-group bankaccount"> 
      <label for="bankaccount"><span class="glyphicon glyphicon-piggy-bank"></span> Credit Card Number</label>
      <input type="text" class="form-control bank-validation form-element" name="bankaccount" placeholder="Credit Card Number" data-validation="false">
      <span class="error"><p1 id="bank_error"></p1></span>
    </div>

    <div class="form-group">
        <!--<div class="col-xs-6 col-xs-offset-3">-->
            <button type="button" class="btn btn-default" data-toggle="modal" data-target="#termsModal">Όροι και προϋποθέσεις</button>
            <input type="hidden" class="form-control agree form-element" name="agree" id="agree" value="no" />
        <!--</div>-->
    </div>
 <div class="form-group">
<div class="col-sm-6 col-sm-offset-3">   
	<button type="button" class="btn btn-block submit-btn signup-btn"><span class="glyphicon glyphicon-pencil"></span>&nbsp; Signup </button>
</div>
</div>


  <div class="form-group">
      <span class="error"><p1 id="final_error"></p1></span>
  </div>
  </form>
    
	
  </div>
<br>
<br>
  <div class="modal-footer">

          <!-- Message from serverside (basanth)-->
          <div class="message pull-left" id="signup-message"></div>
        </div>
      </div>
</div>

<div class="modal fade" id="termsModal" tabindex="-1" role="dialog" aria-labelledby="Terms and conditions" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">Όροι και προϋποθέσεις</h3>
            </div>

            <div class="modal-body">
                <p>ΘΑ ΠΡΕΠΕΙ ΝΑ ΠΛΗΡΩΣΕΤΕ 5 ΕΥΡΩ ΡΕ</p>
                <p>και επίσης όλα τα προσωπικά σας δεδομένα είναι ασφαλή στην τέραΦΑΝ</p>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="agreeButton" data-dismiss="modal">Συμφωνώ</button>
                <button type="button" class="btn btn-default" id="disagreeButton" data-dismiss="modal">Διαφωνώ</button>
            </div>
        </div>
    </div>
</div>
<div class="body1"></div>
 <script async defer
     src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDJxFd20F7bBF7yY7hdjPcw0UybXJXiPYE">
    </script>



</body>
</html>

