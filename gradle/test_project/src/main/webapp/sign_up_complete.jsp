<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ολοκλήρωση Εγγραφής | teraFUN</title>

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
								<a href="" class="active">Εγγραφή Επιτυχής</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-admin-form" role="form" style="display: block;">
									<div class="form-group">
										<label>Η εγγραφή σας ολοκληρώθηκε!</label>
										<div class="form-group"></div>

										<label id="par" style="display:none">Στο email σας στείλαμε έναν κωδικό, τον οποίον θα χρειαστεί να πληκτρολογήσετε για να επιβεβαιώσουμε την εγκυρότητα των στοιχείων σας. Πατήστε <a  href="verification_parent.jsp">εδώ</a> </label>

										<label id="cmp" style="display:none">Αναμένετε μέχρι να γίνει ο έλεγχος των στοιχείων της επιχειρησής σας από την ομάδα της teraFUN.</label>
										<div class="form-group"></div><div class="form-group"><br></div>
										<div class="form-group">
											<label>Για περισσότερες πληροφορίες στείλτε email στο  <a href="mailto:terafun@outlook.com">terafun@outlook.com</a></label>
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

	<%String flag_v= request.getParameter("fv"); %>
<script type="text/javascript">
	var flag_v="0";
	flag_v = <%=flag_v%>
	console.log(flag_v);
	if(flag_v=="1"){
		document.getElementById('par').style.display='block'
	}else if(flag_v=="2"){
		document.getElementById('cmp').style.display='block'
	}
	else{
		window.location.href='https://localhost:8765/app/error-404.jsp'
	}
</script>



</body>

</html>