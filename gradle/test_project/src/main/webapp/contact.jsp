<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/stylelogin.css"> 
<link rel="stylesheet" href="css/header.css"> 

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Επικοινωνία | teraFUN</title>
<style type="text/css">
    body { padding-top: 70px; }
    .body1 {
    background: url('static/lala.jpg');
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
      -webkit-filter: blur(0px);
      -moz-filter: blur(0px);
      -o-filter: blur(0px);
      -ms-filter: blur(0px);
      filter: blur(0px);   
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
if(flagidi==0){
  response.sendRedirect(request.getContextPath() + "/error-404.jsp");
}
%>
<!-- ////////////////////////////////////////////////////////// -->

  <div class="container">
  	
    <div class="jumbotron">
            <h1 class="text-center"> Επικοινωνία </h1>
    </div>

    <div class="jumbotron">

    <div class="font-weight-bold"><h4><strong>Αντιμετωπίζετε κάποιο πρόβλημα; Έχετε κάποια απορία;</strong></h4></div>
    <div class="font-weight-bold"><h4><strong></strong></h4><br></div>
    <div class="font-weight-bold"><h4><strong>Για αρχή σας προτείνουμε να δοκιμάσετε τον τομέα των συχνών ερωτήσεων. Δεν είναι απίθανο να βρίσκεται εκεί η απάντηση στο ερώτημα σας.</strong></h4></div>
    <div class="font-weight-bold t<h4><strong>ext-white"><h4><strong><br></strong></h4></div>
    <div class="font-weight-bold"><h4><strong>Σε αντίθετη όμως περίπτωση μπορείτε να επικοινωνήσετε με την ομάδα μας. Το συντομότερο δυνατό θα λάβετε την απάντηση που ψάχνετε</strong></h4></div>
    <div class="font-weight-bold t<h4><strong>ext-white"><h4><strong><br></strong></h4></div>
    <div class="font-weight-bold"><h4><strong>Για να γίνει αυτό στείλτε απλώς ένα e-mail στο <a href="mailto:terafun@outlook.com">terafun@outlook.com</a></strong></h4></div>
    </div>
  </div>

  <div class="body1"></div>
</body>
</html>

