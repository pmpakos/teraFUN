<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<%  int ID = 1; %>
<!DOCTYPE html>
<html>
<head>
  <title>Επεξεργασία Προφίλ | teraFUN </title>
  
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 

  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

  <link rel="stylesheet" href="css/header.css"> 
  
  <script src="js/validateparent.js"></script>
  

    

  

  <style type="text/css">


  body { padding-top: 70px; }

p1 {
font-size: small;
font-family: helvectia, geneva, arial, sun-sans, sans serif;
color: red;
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

</head>
<body>


    <%@include file="header_unknown.jsp" %>
 
 
<div class="container">

     
      
      
         
  <div class="jumbotron" style="display: none;" data-bind="visible: true">
  
            
  <h2 style="text-align: center"> 
  Username: <span data-bind="text:username"></span>
  <h3 style="text-align: center"> Επεξεργασία Στοιχείων </h3>
  </h2>
       
  <div class="form-body"> 
  <form id="registrationForm" role='form'>
     
      <div class="row">
      <div class="form-group fname col-xs-6">
        <input type="hidden" name="username" data-bind="value:username"/>
        <label for="fname"><span class="glyphicon glyphicon-user"></span>Όνομα</label>
        <input type="text" class="form-control fname-validation form-element" name="fname" data-bind="value: first, attr: {placeholder: 'Όνομα'}" data-validation="false">
      <span class="error"><p1 id="fname_error"></p1></span>
      </div>
      <div class="form-group lname col-xs-6">
        <label for="lname"><span class="glyphicon glyphicon-user"></span> Επίθετο </label>
        <input type="text" class="form-control lname-validation form-element" name="lname" data-bind="value: last, attr: {placeholder: 'Επίθετο'}" data-validation="false">
      <span class="error"><p1 id="lname_error"></p1></span>
      </div>     
     </div>
     
    
  
    <div class="form-group email">
      <label for="Email"> <span class="glyphicon glyphicon-envelope"> </span> E-mail</label>
        <input type="email" class="form-control current_email-validation form-element" name="email" aria-describedby="emailHelp" data-bind="value: mail, attr: {placeholder: 'E-mail'}" data-validation="false">
      <span class="error"><p1 id="email_error"></p1></span>
  </div>
   <div class="row">
  <div class="form-group password col-xs-6">
        <label for="password"><span class="glyphicon glyphicon-eye-open"></span> Κωδικός Πρόσβασης</label>
    <input  type="password" class="form-control password-validation form-element" id="pass" name="password" data-bind="value: password, attr: {placeholder: 'Κωδικός Πρόσβασης'}" data-validation="false">
      <span class="error"><p1 id="pass1_error"></p1></span>
    </div>
    <div class="form-group confirm-password col-xs-6">
      <label for="confirm-password"><span class="glyphicon glyphicon-eye-open"></span> Επιβεβαίωση Κωδικού </label>
    <input  type="password" class="form-control password-confirmation form-element" id="pass1" name="password1" name="password" data-bind="value: password2, attr: {placeholder: 'Επιβεβαίωση Κωδικού'}" data-validation="false">
      <span class="error"><p1 id="pass2_error"></p1></span>
    </div>
    </div>
      
    
  <div class="row">
      <div class="form-group addr col-xs-6">
      <label for="addr"><span class="glyphicon glyphicon-home"></span> Διεύθυνση</label>
      <input type="text" class="form-control addr-validation form-element" id="addr" name="addr" name="password" data-bind="value: address, attr: {placeholder: 'Διεύθυνση'}" data-validation="false">
    <span class="error"><p1 id="addr_error"></p1></span>
    </div>  

    <div class="form-group postal col-xs-6">
      <label for="postal"><span class="glyphicon glyphicon-map-marker"></span> Ταχυδρομικός Κώδικας</label>
      <input type="text" class="form-control postal-validation form-element" id="postal" name="postal" data-bind="value: postal, attr: {placeholder: 'Ταχυδρομικός Κώδικας'}" data-validation="false">
      <span class="error"><p1 id="postal_error"></p1></span>
    </div> 
    </div>

    <div class="form-group tel">
      <label for="tel"><span class="glyphicon glyphicon-phone-alt"></span> Τηλέφωνο</label>
      <input type="text" class="form-control tel-validation form-elementl" name="tel" data-bind="value: tel, attr: {placeholder: 'Τηλέφωνο'}" data-validation="false">
      <span class="error"><p1 id="tel_error"></p1></span>
    </div>

    <div class="form-group bankaccount"> 
      <label for="bankaccount"><span class="glyphicon glyphicon-piggy-bank"></span> Αριθμός Κάρτας</label>
      <input type="text" class="form-control bank-validation form-element" name="bankaccount" data-bind="value: credit, attr: {placeholder: 'Αριθμός Κάρτας'}">
      <span class="error"><p1 id="bank_error"></p1></span>
    </div>

  <br>
  </br>
 <div class="form-group">
<div class="col-sm-6 col-sm-offset-3">   
<br>
</br>
  <button type="button" class="btn btn-block btn-danger submit-btn update-btn"><span class="glyphicon glyphicon-pencil"></span>&nbsp; Ενημέρωση Στοιχείων </button>
</div>
</div>


  <div class="form-group">
      <span class="error"><p1 id="final_error"></p1></span>
  </div>
  </form>
    
  
  </div>
<br>
<br>
  
        </div>
    </div>
</div>
<div class="body1"></div>
 <script async defer
     src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDJxFd20F7bBF7yY7hdjPcw0UybXJXiPYE">
    </script>


    <script src="https://code.jquery.com/jquery-2.1.4.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


    <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="./static/bootstrap/js/bootstrap.min.js"></script>
    <script src="./static/knockout-3.4.2.js"></script>



    <script>
        function fetch_data() {    
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
                this.password=ko.observable();
                this.password2=ko.observable();
                   
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
                viewModel.credit(parentJson.BankAccount);
                viewModel.password(parentJson.Password);
                viewModel.password2(parentJson.Password);


                
                
                

            });

            ko.applyBindings(viewModel);            
            console.log("Applied bindings");
        }
    </script>

 <script> fetch_data(); </script>

</body>
</html>
