<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ page import="gr.ntua.ece.softeng17b.conf.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Πορτοφόλι | teraFun</title>


  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
  <!-- Latest compiled JavaScript -->
  <!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
 <!-- <script src="js/validatebankaccount.js"></script> -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<style>
.divider {
  height: 1px;
  display:block; /* for use on default inline elements like span */
  overflow: hidden;
  background-color: #e5e5e5;
  
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


<link rel="stylesheet" href="css/stylelogin.css"> 
<link rel="stylesheet" href="css/header.css"> 

</head>


<!-- <body background="static/balls.jpg"> -->
<body>

  <%@include file="header.jsp" %>
<% String ID = id; %>


<div class="container" id="ko">

    <div class="container">

      <div class="row">
      <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1">
        <div class="panel panel-register">
          <div class="panel-heading">
             <h>Πορτοφόλι</h>
          </div>
          <div class="panel-body">


            <div class="alert alert-success alert-dismissible success" >
                <button type="button" class="close" data-hide="alert" aria-hidden="true">&times;</button>
                        Η αγορά πόντων έγινε επιτυχώς!
            </div>
            <div class="alert alert-danger alert-dismissible fail1" >
                <button type="button" class="close" data-hide="alert" aria-hidden="true">&times;</button>
                        Ανεπιτυχής συναλλαγή! Για την πρώτη αγορά απαιτείται η εξόφληση της συνδρομής (50 πόντοι). 
            </div>
            <div class="alert alert-info alert-dismissible success2" >
                <button type="button" class="close" data-hide="alert" aria-hidden="true">&times;</button>
                        Συγχαρητήρια για την πρώτη αγορά πόντων! Είσαι έτοιμος να ανακαλύψεις τις δυνατότητες της πλατφόρμας TeraFUN.
            </div>


             <div class="row"> 
              <div class="col-lg-12 col-md-offset-1 col-sm-offset-1"> 
                <h4>Διαθέσιμο υπόλοιπο : <span data-bind="text:points"></span> πόντοι </h4>
                <br>
        <h4> Προσθήκη πόντων </h4>
          <div class="form-body"> 
            <form id="registrationForm" role='form'>
                <div class="row">
                 <div class="form-group name col-xs-8">
                  <label> Αριθμός λογαριασμού : </label> 
                   <span data-bind="text:bankaccount"></span>
                 </div>
               </div>
            <div class="row">
                <div class="form-group name col-xs-10">
                  <label for="name"><span class="glyphicon"></span>Όνομα κατόχου</label>
                  <input type="text" class="form-control name-validation form-element" name="name" placeholder="π.χ. THEODOROS GALIDIS" data-validation="false">
                <span class="error"><p1 id="name_error"></p1></span>
                </div>
              </div>
              <div class="row">
                  <div class="form-group month col-xs-5">
                  <label for="month"><span class="glyphicon"></span>Μήνας</label>
                  <input type="text" class="form-control month-validation form-element" name="month" placeholder="π.χ. 04" data-validation="false">
                <span class="error"><p1 id="month_error"></p1></span>
                </div>

                 <div class="form-group year col-xs-5">
                  <label for="year"><span class="glyphicon"></span>Έτος</label>
                  <input type="text" class="form-control year-validation form-element" name="year" placeholder="π.χ. 22" data-validation="false">
                <span class="error"><p1 id="year_error"></p1></span>
                </div>
              </div>
              <div class='row'>
                 <div class="form-group cvv col-xs-5">
                  <label for="cvv"><span class="glyphicon"></span>CVV</label>
                  <input type="text" class="form-control cvv-validation form-element" name="cvv" placeholder="π.χ. 397" data-validation="false">
                <span class="error"><p1 id="cvv_error"></p1></span>
                </div>
              </div>
          <br>
                  <div class="row">
                     <div class="form-group points col-xs-10">
                      <label for="points"><span class="glyphicon"></span>Πόντοι προς αγορά :</label><h5> Η αναλογία είναι 1.00 ευρώ = 10 πόντοι (η μετατροπή γίνεται αυτόματα)</h5> 
                      <input type="text" class="form-control points-validation form-element" name="points" placeholder="Εισάγετε τους πόντους" data-validation="false">
                       <span class="error"><p1 id="points_error"></p1></span>
                     </div>
                    <div class="form-group">
                    <div class="col-xs-10">   
                      <button type="button" class="btn btn-block final-btn form-control btn btn-registerc"> Επιβεβαίωση αγοράς </button>
                    </div>
                  </div>
                </div>
          <div class="form-group">
                <span class="error"><p1 id="final_error"></p1></span>
            </div>
            </form>

        </div>
      </div>
    </div>



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

    <script type="text/javascript">
      $('.success2').hide();
      $('.success').hide();
      $('.fail1').hide();
      validname=0;
      validcvv=0;
      validmonth=0;
      validyear=0;
      validpoints=0;
      agree=0;


      $(document).on('blur','.name-validation',function(){
        var content = $(this).val();
        var re=/\b[A-Z]+\s[A-Z]+\b/g;
        validname = re.test(content);

        
        if(content.length == 0){
          validname = 0;
        
          document.getElementById('name_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
        }else if(validname == 0){
          
          document.getElementById('name_error').innerHTML = 'Παρακαλώ εισάγετε το όνομα';
          
        }else{
          document.getElementById('name_error').innerHTML = "";
          
        }


        if(validname){
            $(this).css('border','');
            $(this).attr('data-validation',true);
           
        }else{
            $(this).css('border','1px solid red');
            $(this).attr('data-validation',false);
        }
      });

      $(document).on('blur','.month-validation',function(){
        var content = $(this).val();
        var re=/\b([0][0-9]|[1][0-2])\b/g;
        validmonth = re.test(content);
        

        if(content.length == 0){
          validmonth = false;
          
          document.getElementById('month_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
        }else if(validmonth == 0){
          
          document.getElementById('month_error').innerHTML = 'Παρακαλώ εισάγετε τον μήνα';
          
        }
        else{

          document.getElementById('month_error').innerHTML = "";
          
        }
        
        if(validmonth){
          $(this).css('border','');
          $(this).attr('data-validation',true);
        }else{
            $(this).css('border','1px solid red');
            $(this).attr('data-validation',false);
          }

      });

      $(document).on('blur','.year-validation',function(){
        var content = $(this).val();
        var re=/\b([1][8-9]|[2-9][0-9])\b/g;
        validyear = re.test(content);
        

        if(content.length == 0){
          validyear = false;
          
          document.getElementById('year_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
        }else if(validyear == 0){
          
          document.getElementById('year_error').innerHTML = 'Παρακαλώ εισάγετε το έτος';
          
        }
        else{

          document.getElementById('year_error').innerHTML = "";
          
        }
        
        if(validyear){
          $(this).css('border','');
          $(this).attr('data-validation',true);
        }else{
            $(this).css('border','1px solid red');
            $(this).attr('data-validation',false);
          }

      });

      $(document).on('blur','.cvv-validation',function(){
        var content = $(this).val();
        var re=/\b\d{3}\b/g;
        validcvv = re.test(content);
        

        if(content.length == 0){
          validcvv = false;
          
          document.getElementById('cvv_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
        }else if(validcvv == 0){
          
          document.getElementById('cvv_error').innerHTML = 'Παρακαλώ εισάγετε 3 ψηφία';
          
        }
        else{

          document.getElementById('cvv_error').innerHTML = "";
          
        }
        
        if(validcvv){
          $(this).css('border','');
          $(this).attr('data-validation',true);
        }else{
            $(this).css('border','1px solid red');
            $(this).attr('data-validation',false);
          }

      });

      $(document).on('blur','.points-validation',function(){
        var content = $(this).val();
        var re=/\b\d+\b/g;
        validpoints = re.test(content);
        

        if(content.length == 0){
          validpoints = false;
          
          document.getElementById('points_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
        }else if(validpoints == 0){
          
          document.getElementById('points_error').innerHTML = 'Παρακαλώ εισάγετε ακέραιο αριθμό';
          
        }
        else{

          document.getElementById('points_error').innerHTML = "";
          
        }
        
        if(validpoints){
          $(this).css('border','');
          $(this).attr('data-validation',true);
        }else{
            $(this).css('border','1px solid red');
            $(this).attr('data-validation',false);
          }

      });


      function sleep(milliseconds) {
        var start = new Date().getTime();
        for (var i = 0; i < 1e7; i++) {
          if ((new Date().getTime() - start) > milliseconds){
            break;
          }
        }
      }

      $(document).on('click','.final-btn',function(){
        var points=$(this).parent().parent().siblings('.points').find('input[name=points]').val();
        console.log(points);
        
        var test=validname&validmonth&validyear&validcvv&validpoints;
        console.log(test);


        if(test==0){
          var mes='Παρακαλώ συμπληρώστε όλα τα πεδία';
            $(this).closest('.form-body').siblings('.modal-footer').find('.message').html(mes); 
              $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');
        }
        
        else {
          //var mes="";

           //$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(mes);
          $.ajax({
            type:"POST",
            data:{
              id:<%=ID%>,
              points:points
            },
            url:'/app/wallet_update',
            success: function(result){
              // window.location.href='https://localhost:8765/app/wallet.jsp'

              // 0 -> Points < 50 && Status = 1 | 1 -> Points > 50 && Status=1 | 2 -> Status=2
              if(result == "0"){
                $('.success2').hide();
                $('.success').hide();
                $('.fail1').show();

              }
              else if(result=="1"){
                $('.success2').show();
                $('.success').hide();
                $('.fail1').hide();
                setTimeout(function() {
                    document.location = 'https://localhost:8765/app/wallet.jsp';
                }, 1821);
              }
              else{
                $('.success2').hide();
                $('.success').show();
                $('.fail1').hide();
                setTimeout(function() {
                    document.location = 'https://localhost:8765/app/wallet.jsp';
                }, 1453);
                

              }
              
            }
              
          }); 
        }
        });      
    </script>

</body>
</html>
