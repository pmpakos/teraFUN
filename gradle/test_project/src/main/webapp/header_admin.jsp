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
                <a href="index.html" class="navbar-brand"><img src="static/logo.png"  class="img-responsive" alt=""/></a>
            </div>
            <div class="collapse navbar-collapse" id="bs-nav-demo">
                <ul class="nav navbar-nav">
                    <li><a href="admin_parents_panel.jsp"><i class="fa fa-user"></i>  Γονείς </a></li>
                    <li><a href="admin_companies_panel.jsp"><i class="fa fa-building"></i>  Εταιρίες </a></li> 
                    <!-- <li><a href="admin_bank.jsp"><i class="fa fa-eur"></i>  Τράπεζα </a></li>                 -->
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="" onclick="return theFunction();"> Αποσύνδεση  <i class="fa fa-power-off"></i></a></li>
                </ul>
            </div>
        </div>
    </nav>

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