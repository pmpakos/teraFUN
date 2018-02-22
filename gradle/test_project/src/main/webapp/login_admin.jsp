<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Admin | teraFUN</title>

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
	<!-- Latest compiled JavaScript -->
	<!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
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
							<div >
								<a href="" class="active" id="login-admin-link">Σύνδεση Διαχειριστή</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
					
								<form id="login-admin-form" role="form" style="display: block;">		
									<div class="form-group usn0">
										<label for="usn"> <span class="glyphicon glyphicon-user"> </span> Username</label>
										<input type="text" name="usn0" id="usn0" tabindex="1" class="form-control usn-val0 form-element" placeholder="Username" value="">
										<span class="error"><p1 id="usn_error0"></p1></span>
									</div>
									<div class="form-group pass0">
										<label for="password"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
										<input type="password" name="pass0" id="pass0" tabindex="2" class="form-control pass-val0 form-element" placeholder="Password">
										<span class="error"><p1 id="pass_error0"></p1></span>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<button type="button" name="logina-submit" id="logina-submit" tabindex="4" class="form-control btn btn-logina"><span>ΣΥΝΔΕΣΗ </span></button>
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