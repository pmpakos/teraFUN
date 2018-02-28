<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Επαλήθευση Γονέα | teraFUN</title>

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
	<!-- Latest compiled JavaScript -->
	<!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
	<script src="js/login.js"></script>
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
								<a href="" class="active" id="login-admin-link">Επαλήθευση Λογαριασμού Γονέα</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-admin-form" role="form" style="display: block;">
									<div class="form-group">
										<label>Φαίνεται ότι δεν έχετε ακόμη επαληθεύσει τον λογαριασμό σας. </label>
									</div>
									<div class="form-group">
										<label>Εισάγετε εδώ το Username σας και τον Κωδικό Επαλήθευσης που στάλθηκε στο email σας κατά την εγγραφή σας!</label>
									</div>
									<div class="form-group usn3">
										<label for="usn"> <span class="glyphicon glyphicon-user"> </span> Username</label>
										<input type="text" name="usn3" id="usn3" tabindex="1" class="form-control usn-val3 form-element" placeholder="Username" value="">
										<span class="error"><p1 id="usn_error3"></p1></span>
									</div>
									<div class="form-group pass3">
										<label for="password"><span class="glyphicon glyphicon-eye-open"></span> Verification Code</label>
										<input type="text" name="pass3" id="pass3" tabindex="2" class="form-control pass-val3 form-element" placeholder="Verification Code">
										<span class="error"><p1 id="pass_error3"></p1></span>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<button type="button" name="validp-submit" id="validp-submit" tabindex="4" class="form-control btn btn-validp"><span>ΥΠΟΒΟΛΗ ΚΩΔΙΚΟΥ </span></button>
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
<div class="body1"></div>

</body>
</html>