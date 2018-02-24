<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Validation Company | teraFUN</title>

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
								<a href="" class="active" id="login-admin-link">Επαλήθευση Λογαριασμού Επιχείρησης</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-admin-form" role="form" style="display: block;">
									<div class="form-group">
										<label>Φαίνεται ότι δεν ο λογαριασμός σας δεν έχει ακόμη επαληθευθεί. </label>
									</div>
									<div class="form-group">
										<label>Αναμένετε μέχρι να γίνει ο έλεγχος των στοιχείων της επιχειρησής σας από την ομάδα της teraFUN.</label>
									</div>
									<div class="form-group">
										<label>Για περισσότερες πληροφορίες στείλτε email στο  <a href="mailto:terafun@outlook.com">terafun@outlook.com</a></label>
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