<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!DOCTYPE html>
<html>

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-2.1.4.js"></script>
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
                    <li><a href="search2.jsp"> Αναζήτηση </a></li>              
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" style="background-color:#2c3e50;"  id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Πληροφορίες</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <ul class="nav navbar-nav "  >
                                <li><a href="contact_unknown.jsp" ><font color="2c3e50">Επικοινωνία </font></a></li>
                                <li><a href="about_us_unknown.jsp"><font color="2c3e50">Σχετικά με εμάς</font></a></li> 
                                <li><a href="faq_unknown.jsp"><font color="2c3e50">Συχνές ερωτήσεις</font></a></li>   
                            </ul>
                        </div>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="sign_up_parent.jsp">Εγγραφή  <i class="fa fa-user-plus"></i></a></li>
                    <li><a href="login.jsp">Σύνδεση <i class="fa fa-user"></i></a></li>
                </ul>
            </div>
        </div>
    </nav>
</head>
</html>