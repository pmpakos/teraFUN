<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ page import="gr.ntua.ece.softeng17b.conf.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Αρχική Διαχειριστή | teraFun</title>


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
if(flag=="" | flagidi==1 | flagidi==2){
  System.out.println("wwwp la8oosss syggnwmhhh?");
  response.sendRedirect(request.getContextPath() + "/error-404.jsp");
}
%>
<!-- ////////////////////////////////////////////////////////// -->


<div class="container"  id="ko">
  <div class="panel panel-login">
    <div class="panel-heading"> <span class="header">Καλώς ήλθες </span>
      <span data-bind="text:first" class="header"></span> 
      <span data-bind="text:last" class="header"></span> <span class="header">(</span>
      <span data-bind="text:username" class="header"></span> <span class="header">) !</span>
    </div>
    <div class="panel-body">
      <h3>
        Πατώντας ένα από τα παρακάτω κουμπιά θα μεταφερθείς στη σελίδα διαχείρισης της αντίστοιχης ομάδας χρηστών.
      </h3>
      <br><br>
      
      <button onclick="window.location.href='admin_parents_panel.jsp';" class="btn btn-primary btn-lg btn-block" ><h3>Πίνακας Διαχείρισης Γονέων</h3></button>
      <br>
      <button onclick="window.location.href='admin_companies_panel.jsp';" class="btn btn-primary btn-lg btn-block" ><h3>Πίνακας Διαχείρισης Επιχειρήσεων</h3></button>
      <br>
<!--        <h3>
        Μπορείς ακόμη να δεις πόσα χρήματα βρίσκονται στον τραπεζικό λογαριασμό της εταιρείας TeraFUN πατώντας στο παρακάτω κουμπί.
      </h3>
      <button onclick="window.location.href='admin_bank.jsp';" class="btn btn-success btn-lg btn-block" ><h3>Πίνακας Εσόδων</h3></button>
      <br><br><br>
 -->       <h3 style="text-align: right">
        Have fun<br>
        TeraFUN!
      </h3>
    </div>
  </div>
</div>


<div class="body1"></div>


    <!-- <script src="https://code.jquery.com/jquery-2.1.4.js"></script> -->
    <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> -->


    <!-- <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <!-- <script src="./static/bootstrap/js/bootstrap.min.js"></script> -->
    <script src="./static/knockout-3.4.2.js"></script>

 <% Configuration conf = Configuration.getInstance(); %>

    <script>
        function init() {    
            var VM = function(){
                this.username = ko.observable(); 
                this.first = ko.observable();
                this.last= ko.observable();                   
            }

            VM.prototype.loadAdministrator = function() {
                console.log("Loading administrator...");
                var ID = <%=Integer.parseInt(id)%>;
                var opts = {
                    traditional : true,
                    cache       : false,
                    url         : "./api/administrator/"+ID,
                    type        : "GET",
                    dataType    : "json"
                };

                return $.ajax(opts); //returns a promise
            }

            var viewModel = new VM();
            console.log("Created VM");            

            viewModel.loadAdministrator().done(function(administratorJson){
                console.log("Done loading administrators.");                 
                viewModel.first(administratorJson.FirstName);
                viewModel.last(administratorJson.LastName);
                viewModel.username(administratorJson.Username);
            });

            ko.applyBindings(viewModel);            
            console.log("Applied bindings");
        }
    </script>

    <script> init(); </script>
</body>
</html>
