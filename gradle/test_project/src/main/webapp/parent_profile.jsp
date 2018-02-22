<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="gr.ntua.ece.softeng17b.conf.*" %>
<%@ page import="gr.ntua.ece.softeng17b.FileChecker" %>
<%  int ID = 1; %>
<!DOCTYPE html>
<html>
<head>
    <title>TeraFun</title>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <style type="text/css">
    body { padding-top: 70px; }
    .jumbotron {
      color: #2c3e50;
      background: #ecf0f1;

    }
    .navbar-inverse {
      background: #2c3e50;
      color: white;
    }
    .navbar-inverse .navbar-brand, .navbar-inverse a{
      color:white;
      height:60px;
    }
    .navbar-inverse .navbar-nav>li>a {
      color: white;
      margin-top:10px;
      font-size:150%;
    } 
    .navbar-brand img{
       height:50px;
       margin-top:0px;
    }
    .form-inline{
    margin-top:20px;
    }
    .img1 {
        max-width: 100%; 
        max-height: 100%;
        object-fit: cover;
    }

    .portrait {
        height: 200px;
        width: 400px;
    }
    .table{
        font-size: 20px;
    }

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
  <style>
       .gmap {
        height: 400px;
        width: 50%;
       }
    </style>

</head>
<body>
    <%@include file="header.jsp" %>



        <div class="container" style="text-align: center" id="ko">
        <div class="jumbotron">

        <h2> Το προφίλ μου  <i class="fa fa-user"></i> </h2> <button type="button" class="btn btn-primary btn-lg ">Αποσύνδεση</button>

        <table class="table table-striped ">
        
    
  
  <tbody>
    
    <tr>
      
      <td><span class="glyphicon glyphicon-user"></span> Όνομα</td>
      <td></td>
      <td><span data-bind="text:first"></span></td>
      
    </tr>
    
    <tr>
      
      <td><span class="glyphicon glyphicon-user"></span> Επίθετο</td>
      <td></td>
      <td><span data-bind="text:last"></span></td>
     </tr>

     <tr>
      
      <td ><span class="glyphicon glyphicon-user"></span> Όνομα Χρήστη</td>
      <td></td>
      <td><span data-bind="text:username"></span></td>
      
    </tr>

     <tr>
      
      <td><span class="glyphicon glyphicon-envelope"> </span> E-mail</td>
      <td></td>
      <td><span data-bind="text:mail"></span></td>
      </tr>

     <tr>
      
      <td><span class="glyphicon glyphicon-home"></span> Διεύθυνση</td>
      <td></td>
      <td><span data-bind="text:address"></span></td>
      </tr>
     <tr>
      
      <td><span class="glyphicon glyphicon-map-marker"></span> Ταχυδρομικός κώδικας</td>
      <td></td>
      <td><span data-bind="text:postal"></span></td>
      </tr>
     <tr>
      
      <td><span class="glyphicon glyphicon-phone-alt"></span> Τηλέφωνο</td>
      <td></td>
      <td><span data-bind="text:tel"></span></td>
      </tr>


      <tr>
      <td><span class="glyphicon glyphicon-piggy-bank"></span> Αριθμός Κάρτας</td>
      <td></td>
      <td><span data-bind="text:credit"></span></td>
      
    </tr>
  </tbody>
</table>

    <button type="button" class="btn btn-primary btn-lg btn-block">Επεξεργασία Προφίλ</button>
    


       
    <button type="button" class="btn btn-success btn-lg btn-block">Ενεργές Εκδηλώσεις</button>
    <button type="button" class="btn btn-warning btn-lg btn-block">Ιστορικό Εκδηλώσεων</button> 
      
            </div>            
    
    </div>

    <!-- <script src="https://code.jquery.com/jquery-2.1.4.js"></script> -->
    <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> -->


    <!-- <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <!-- <script src="./static/bootstrap/js/bootstrap.min.js"></script> -->
    <script src="./static/knockout-3.4.2.js"></script>

    <% Configuration conf = Configuration.getInstance(); %>

    <script>
        function initMap() {    
            var VM = function(){
                this.id = ko.observable();
                this.username = ko.observable(); 
                this.first = ko.observable();
                this.last= ko.observable();
                this.mail= ko.observable();
                this.postal= ko.observable();
                this.address= ko.observable();
                this.tel= ko.observable();
                this.credit=ko.observable();
                   
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
                console.log("Done loading parents.");                 
                viewModel.id(parentJson.ParentID);
                viewModel.first(parentJson.FirstName);
                viewModel.last(parentJson.LastName);
                viewModel.tel(parentJson.TelephoneNumber);
                viewModel.mail(parentJson.Email);
                viewModel.postal(parentJson.PostalCode);
                viewModel.username(parentJson.Username);
                viewModel.address(parentJson.Address);
                viewModel.credit(parentJson.BankAccount)
            });

            ko.applyBindings(viewModel);            
            console.log("Applied bindings");
        }
    </script>

    <script> initMap(); </script>

    </body>
    <div class="body1"></div>
</html>
