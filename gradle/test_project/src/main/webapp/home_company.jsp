<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ page import="gr.ntua.ece.softeng17b.conf.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Αρχική Επιχείρησης | teraFun</title>


  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
  <!-- Latest compiled JavaScript -->
  <!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

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
.header{
  font-size:40px;

  }

</style>


<link rel="stylesheet" href="css/stylelogin.css"> 
<link rel="stylesheet" href="css/header.css"> 

</head>


<!-- <body background="static/balls.jpg"> -->
<body>

<%@include file="header.jsp" %>

<!-- ////////////////////////////////////////////////////////// -->
<!-- flag=="" shmainei unknown -->
<!-- flagidi==0 shmainei admin -->
<!-- flagidi==1 shmainei user -->
<!-- flagidi==2 shmainei company -->
<%
if(flag=="" | flagidi==0 | flagidi==1){
  System.out.println("wwwp la8oosss syggnwmhhh?");
  response.sendRedirect(request.getContextPath() + "/error-404.jsp");
}
%>
<!-- ////////////////////////////////////////////////////////// -->


<div class="container"  id="ko">
  <div class="panel panel-login">
    <div class="panel-heading"> <span class="header">Καλώς ήλθατε!</span>
    </div>
    <div class="panel-body">
    	<div style="display: inline-block; vertical-align: middle;  margin: 10px 0;">
			<span style="font-size:25px"> Προσθέστε μία νέα εκδήλωση τώρα! </span>
			<button onclick="window.location.href='create_event.jsp';" class="btn btn-info" style="width:170px; text-align: center; border:#ff9900; background-color: #ff9900;"> Νέο event</button> 

    	</div>

		<h3>Παρακάτω μπορείτε να δείτε τις επερχόμενες εκδηλώσεις σας </h3>
	    <table id="Data" class="table table-striped table-bordered" data-bind="visible: events().length > 0">
	        <thead class="thead-light">
	            <tr>
	                <th scope="col">Όνομα </th>
	                <th scope="col">Ημερομηνία </th>
	                <th scope="col">Διεύθυνση </th>
	                <th scope="col">Συνολικά Εισιτήρια </th>
	                <th scope="col">Έσοδα σε ευρώ </th>
	                <th scope="col">Περιγραφή </th>
	            </tr>
	        </thead>  
	        <tbody data-bind="foreach:events">
	            <tr>
	                <td> <span data-bind="text:name"></span> </td>
	                <td> <span data-bind="text:date"></span> </td>
	                <td> <span data-bind="text:address"></span> </td>
	                <td> <span data-bind="text:ticket_counter"></span> </td>
	                <td> <span data-bind="text:income"></span> </td>
	                                      
	                <td>
	                  <!-- shit to be done here -->
	                  <!-- <span data-bind="text:description"></span> -->
	                  <button id="description" data-bind="click: function(data, event) { show_description(name, description, data,  event) }" type="button" class="btn btn-info btn-admin">Περιγραφή</button>
	                </td>                    
	            </tr>                   
	        </tbody>
	    </table>
    </div>
  </div>
</div>


<div class="body1"></div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="./static/knockout-3.4.2.js"></script>

 <% Configuration conf = Configuration.getInstance(); %>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="./static/knockout-3.4.2.js"></script>
    <script src="./js/DataTable.js"></script>
    <script src="./js/DataTable.bootstrap4.js"></script>
    <script src="js/active_events_company.js"></script>

</body>
</html>