<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login | teraFUN</title>


	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
	<!-- Latest compiled JavaScript -->
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="js/login.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/stylelogin.css"> 
<link rel="stylesheet" href="css/header.css"> 

</head>


<body>


<%@include file="header.jsp" %>
	<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">Σύνδεση Χρήστη</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">Σύνδεση Επιχείρησης</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
					
								<form id="login-form" role="form" style="display: block;">
		
									<div class="form-group usn">
										<label for="usn"> <span class="glyphicon glyphicon-user"> </span>UserName</label>
										<input type="text" name="usn" id="usn" tabindex="1" class="form-control usn-val form-element" placeholder="Username" value="">
										<span class="error"><p1 id="usn_error1"></p1></span>
									</div>
									<div class="form-group pass">
										<label for="password"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
										<input type="password" name="pass" id="password" tabindex="2" class="form-control pass-val form-element" placeholder="Password">
										<span class="error"><p1 id="pass_error1"></p1></span>
									</div>
								
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<button type="button" name="loginp-submit" id="loginp-submit" tabindex="4" class="form-control btn btn-loginp"><span>ΣΥΝΔΕΣΗ </span></button>
											</div>
										</div>
									</div>			
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="http://localhost:8765/app/forgot_pass" tabindex="5" class="forgot-password">Forgot Password?</a>
												</div>
											</div>
										</div>
									</div>
								</form>
								<form id="register-form" role="form" style="display: none;">
		
									<div class="form-group usn1">
										<label for="username"> <span class="glyphicon glyphicon-user"> </span> UserName</label>
										<input type="text" name="usn1" id="username" tabindex="1" class="form-control usn-val2 form-element" placeholder="Username" value="">
										<span class="error"><p1 id="usn_error2"></p1></span>
									</div>
								
									<div class="form-group pass1">
										<label for="password"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
										<input type="password" name="pass1" id="password" tabindex="2" class="form-control pass-val2 form-elementSS" placeholder="Password">
										<span class="error"><p1 id="pass_error2"></p1></span>
									</div>
									
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<button type="button" name="loginc-submit" id="loginc-submit" tabindex="4" class="form-control btn btn-loginc"><span>ΣΥΝΔΕΣΗ </span></button>
											</div>
										</div>
									</div>	
									
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="http://localhost:8765/app/forgot_pass" tabindex="5" class="forgot-password">Forgot Password?</a>
												</div>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	

</body>
</html>