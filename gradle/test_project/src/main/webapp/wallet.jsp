<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="gr.ntua.ece.softeng17b.conf.*" %>
<% int ID = 4; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>teraFun</title>


  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
  <!-- Latest compiled JavaScript -->
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 <script src="js/validatebankaccount.js"></script>
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
    opacity: 0; /*We are going to animate this */
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


<link rel="stylesheet" href="css/stylelogin.css"> 
<link rel="stylesheet" href="css/header.css"> 

</head>


<!-- <body background="static/balls.jpg"> -->
<body>



<%@include file="header_unknown.jsp" %>

  <div class="container" id="ko">

  
<div class="jumbotron">
   
<h2 style="text-align: center"> Πορτοφόλι</h2>
       <h3>Διαθέσιμο υπόλοιπο : <span data-bind="text:points"></span> πόντοι </h3>
  <div class="form-body"> 
  
  <!--  <div class="panel panel-default">
      <!--<div class="panel-heading"></div> 
      <h3> <div class="panel-heading"><br>Διαθέσιμο υπόλοιπο : <span data-bind="text:points"></span> πόντοι<br></div> </h3>
      <div class="panel-body">
  -->
        <label> <h3> Προσθήκη πόντων  </h3> </label> 
  <!-- Trigger the modal with a button -->
  
         <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Αναλογία Χρημάτων - Πόντων</button>
        
         <br>
              <!--  <form id="login-form" onsubmit="return validatebankaccount()" action="upload_image_company" method="Post" enctype="multipart/form-data" role="form">
-->
  <form id="registrationForm" role='form'>
     <br>
     <br>
      <div class="row">
       <div class="form-group name col-xs-8">
        <label> Αριθμός λογαριασμού : </label> 
         <span data-bind="text:bankaccount"></span>
       </div>
     </div>
  <div class="row">
      <div class="form-group name col-xs-8">
        <label for="name"><span class="glyphicon"></span>Όνομα κατόχου</label>
        <input type="text" class="form-control name-validation form-element" name="name" placeholder="π.χ. PANOS LAMARIOS" data-validation="false">
      <span class="error"><p1 id="name_error"></p1></span>
      </div>
    </div>

     
    <div class="row">
      <!--
      <div class="form-group name col-xs-4">
        <label for="date"><span class="glyphicon"></span>Ημερομηνία λήξης</label>
        <input type="text" class="form-control date-validation form-element" name="date" placeholder="π.χ. 04/21" data-validation="false">
      <span class="error"><p1 id="date_error"></p1></span>
      </div>
    -->
        <div class="form-group month col-xs-4">
        <label for="month"><span class="glyphicon"></span>Μήνας</label>
        <input type="text" class="form-control month-validation form-element" name="month" placeholder="π.χ. 04" data-validation="false">
      <span class="error"><p1 id="month_error"></p1></span>
      </div>

       <div class="form-group year col-xs-4">
        <label for="year"><span class="glyphicon"></span>Έτος</label>
        <input type="text" class="form-control year-validation form-element" name="year" placeholder="π.χ. 22" data-validation="false">
      <span class="error"><p1 id="year_error"></p1></span>
      </div>

       <div class="form-group cvv col-xs-4">
        <label for="cvv"><span class="glyphicon"></span>CVV</label>
        <input type="text" class="form-control cvv-validation form-element" name="cvv" placeholder="π.χ. 397" data-validation="false">
      <span class="error"><p1 id="cvv_error"></p1></span>
      </div>

    </div>

<br>

        <div class="row">
           <div class="form-group points col-xs-8">
            <label for="points"><span class="glyphicon"></span>Πόντοι προς αγορά :</label>
            <input type="text" class="form-control points-validation form-element" name="points" placeholder="Εισάγετε τους πόντους" data-validation="false">
             <span class="error"><p1 id="points_error"></p1></span>
           </div>
          
          

          <div class="form-group">
          <div class="col-xs-8">   
            <button type="button" class="btn btn-block final-btn"> Επιβεβαίωση αγοράς </button>
          </div>
        </div>
      </div>
       <!--    <div class="col-xs-8">
              <input type="submit"  class="form-control btn btn-registerc" value="Επιβεβαίωση αγοράς" />
               
           </div>
      </div>
        
      <span class="error"><p1 id="total_error"></p1></span>
                  <br>
                  <br>
                </form>  -->

<div class="form-group">
      <span class="error"><p1 id="final_error"></p1></span>
  </div>
  </form>
  </div>


      <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog">
      
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Αναλογία Χρήματα - Πόντοι</h4>
          </div>
          <div class="modal-body">
            <p>1.00 ευρώ = 10 πόντοι (η μετατροπή γίνεται αυτόματα)</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>
        
      </div>
    </div>
    
     <div class="modal-footer">

          <!-- Message from serverside (basanth)-->
          <div class="message pull-left" id="signup-message"></div>
        </div>
  </div>
</div>

<div class="body1"></div>


    <script src="https://code.jquery.com/jquery-2.1.4.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


    <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="./static/bootstrap/js/bootstrap.min.js"></script>
    <script src="./static/knockout-3.4.2.js"></script>

  <% Configuration conf = Configuration.getInstance(); %>

    <script>
        function init() {    
            var VM = function(){
               // this.id = ko.observable();
                this.bankaccount = ko.observable(); 
                this.points =  ko.observable(); 
            }

            VM.prototype.loadParent = function() {
                console.log("Loading parent...");
                var ID = <%=ID%>;
                var opts = {
                    traditional : true,
                    cache       : false,
                    url         : "./api/parent/"+ID,
                    type        : "GET",
                    dataType    : "json"
                };

                return $.ajax(opts); //returns a promise
            }

            var viewModel = new VM();
            console.log("Created VM");            

            viewModel.loadParent().done(function(parentJson){
                console.log("Done loading parent.");                 
                //viewModel.id(parentJson.ParentID);
                viewModel.bankaccount(parentJson.BankAccount);
                viewModel.points(parentJson.Points);
       

            });

            ko.applyBindings(viewModel);            
            console.log("Applied bindings");
        }
    </script>

  
    <script> init();</script>








</body>
</html>
