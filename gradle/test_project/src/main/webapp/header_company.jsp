<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!DOCTYPE html>

<html>

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/header.css"> 
<link rel="stylesheet" href="css/stylelogin.css"> 

<head>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <!-- <div class="container" id="ko"> -->
        <div class="container">
            <div class="navbar-header">
                 <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-nav-demo" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="home_company.jsp" class="navbar-brand"><img src="static/logo.png"  class="img-responsive" alt=""/></a>
            </div>
            <div class="collapse navbar-collapse" id="bs-nav-demo">
                <ul class="nav navbar-nav">
                    <li><a href="create_event.jsp"> Δημιουργία Event  <i class="fa fa-plus"></i></a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" style="background-color:#2c3e50;"  id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Πληροφορίες  <i class="fa fa-info"></i></a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color:#2c3e50; width:250px" >
                            <ul class="nav navbar-nav "  >
                                <li style="background-color:#2c3e50;"><a href="contact.jsp" ><i class="fa fa-envelope"></i>  Επικοινωνία </a></li>
                                <li style="background-color:#2c3e50;"><a href="about_us.jsp"><i class="fa fa-users"></i>  Σχετικά με εμάς </a></li> 
                                <li style="background-color:#2c3e50;"><a href="faq.jsp"><i class="fa fa-question-circle"></i>  Συχνές ερωτήσεις </a></li>   
                            </ul>
                        </div>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="wallet_company.jsp"> Πορτοφόλι  <i class="fa fa-eur"></i></a></li>
                    <!-- <li><a href="company_profile.jsp">Προφίλ  <i class="fa fa-user"></i></a></li> -->
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" style="background-color:#2c3e50;"  id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Ο λογαριασμός μου <i class="fa fa-user"></i></a>

                         <!-- <a class="nav-link dropdown-toggle" style="background-color:#2c3e50;" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <span data-bind="text:username"> </span><i class="fa fa-user"></i></a> -->
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color:#2c3e50;" >
                            <ul class="nav navbar-nav">
                                
                                <li style="background-color:#2c3e50;"><a href="company_profile.jsp/?idcompany=-1"><i class="fa fa-edit"></i>  Προφίλ </a></li>
                    <!-- prepei na proste8ei edw koumpi gia log out me sugkekrimeno action na sumvainei otan auto patietai -->
                                <li><a href="" onclick="return theFunction();"><i class="fa fa-power-off"></i>  Αποσύνδεση </a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

<!--

    <script>
        function initMap() {    
            var VM = function(){
                this.username = ko.observable(); 
            }

            VM.prototype.loadCompany = function() {
                console.log("Loading company...");
                var ID = <%%>;
                var opts = {
                    traditional : true,
                    cache       : false,
                    url         : "./api/company/"+ID,
                    type        : "GET",
                    dataType    : "json"
                };

                return $.ajax(opts); //returns a promise
            }

            var viewModel = new VM();
            console.log("Created VM");            

            viewModel.loadCompany().done(function(parentJson){
                console.log("Done loading companies.");                 
                viewModel.username(companyJson.Username);
            });

            ko.applyBindings(viewModel);            
            console.log("Applied bindings");
        }
    </script>

    <script> initMap(); </script>
 -->
</head>
<script type="text/javascript">
    function theFunction () {
        console.log("Eftasa edw ");
        $.ajax({
            type:"POST",
            data:{
            },
            url:'/app/logout',
            success: function(result){
                window.location.href='https://localhost:8765/app/home_unknown.jsp'
            }
        }); 
    }
</script>

</html>