<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Forgot Password | teraFUN</title>

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
	<!-- Latest compiled JavaScript -->
	<!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
	<script src="js/forgot_pass.js"></script>

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/stylelogin.css"> 
<link rel="stylesheet" href="css/header.css"> 
<style>
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
</style>
</head>
<body>
<%@include file="header.jsp" %>
<!-- ////////////////////////////////////////////////////////// -->
<!-- flag=="" shmainei unknown -->
<!-- flagidi==0 shmainei admin -->
<!-- flagidi==1 shmainei user -->
<!-- flagidi==2 shmainei company -->
<%
if(flagidi==0 | flagidi==1 | flagidi==2){
  response.sendRedirect(request.getContextPath() + "/error-404.jsp");
}
%>
<!-- ////////////////////////////////////////////////////////// -->


	<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div >
								<a href="" class="active" id="login-admin-link">Υπενθύμιση password</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
					
								<form id="login-admin-form" role="form" style="display: block;">
									<div>
										Πληκτρολογήστε εδώ το mail σας για να στείλουμε email με το password
									</div>		
									<br>
									<div class="form-group email">
								    	<label for="Email"> <span class="glyphicon glyphicon-envelope"> </span> Email</label>
								    	<!-- psakse stous parents -->
								        <input style="display:none" type="email" class="form-control email-validation form-element" name="email1" id="email" placeholder="Εισάγετε την διεύθυνση ηλεκτρονικού ταχυδρομίου" data-validation="false">
								        
										<!-- psakse stous companies -->
								        <input style="display:none" type="email" class="form-control email-comp-validation form-element" name="email2" id="email-comp" placeholder="Εισάγετε την διεύθυνση ηλεκτρονικού ταχυδρομίου" data-validation="false">
								   		
								   		<span class="error"><p1 id="email_error"></p1></span>
								   		<span class="error"><p1 style="display:none" id="errorrr">Φαίνεται ότι κατέληξες εδώ κατά λάθος</p1></span>
									</div>

									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<!-- psakse stous parents -->
												<button  style="display:none" type="button" name="logina-submit" id="logina-submit1" tabindex="4" class="form-control btn btn-forgot1 btn-danger"><span>ΑΠΟΣΤΟΛΗ EMAIL</span></button>
												
												<!-- psakse stous companies -->
												<button  style="display:none" type="button" name="logina-submit" id="logina-submit2" tabindex="4" class="form-control btn btn-forgot2 btn-danger"><span>ΑΠΟΣΤΟΛΗ EMAIL</span></button>
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