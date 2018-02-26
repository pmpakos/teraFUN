<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Home Unknown | teraFUN</title>
<style type="text/css">
  body { padding-top: 10px; } 
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
    .footer{
      margin-top:20px;
      background-color: #ecf0f1;
      color: black;
      }
</style>

</head>
<body>

<%@include file="header.jsp" %>



<div class="container">
  <div class="jumbotron">
      <h1 style="font-family:Times New Roman font-size:25px"><span>Καλώς ήρθατε στην Tera</span><span style="color:red">F</span><span style="color:#ff9900">U</span><span style="color:#0086b3">N</span>!</h1> 
      <p style = "font-size:15px">
        Tην πρώτη online πλατφόρμα δραστηριοτήτων για παιδιά!
        <br>
        Οι καλύτερες δραστηριότητες για τα παιδιά είναι κοντά σου, με το πάτημα ενός click.
      </p>
  </div>


  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="max-width:650px ;width: auto;margin: auto">
    <!-- ;margin: auto -->
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="static/homepage/image1.jpg" alt="Chania">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>

      <div class="item">
        <img src="static/homepage/image2.jpg" alt="Chicago">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>
      <div class="item">
        <img src="static/homepage/image3.jpg" alt="Chicago">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>
      <div class="item">
        <img src="static/homepage/image4.jpg" alt="Chicago">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>

    </div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

<div class="jumbotron" style="margin-top:20px;text-align: center">
      <p style = "font-size:13px">
        Έχετε ήδη λογαριασμό; Αν ναι, συνδεθείτε τώρα και εξερευνήσετε νέες δραστηριότητες για τα παιδιά σας!
      </p>
      <button onclick="window.location.href='login.jsp';" style="width:170px; border:red; background-color:red" class="btn btn-success" >Σύνδεση</button>

      <p style = "font-size:13px">
        <br><br><br><br>
        Αν δεν έχετε, επισκεφθείτε τις σελίδες πληροφοριών, για να μάθετε περισσότερα για εμάς, και φτιάξτε λογαριασμό. 
      </p>
      <button onclick="window.location.href='sign_up_parent.jsp';" style="width:170px ; border:#ff9900 ;background-color:#ff9900" class="btn btn-info" >Εγγραφή</button>


      <p style = "font-size:13px">
        <br><br><br>
        Εάν είστε επιχείρηση παροχής υπηρεσιών για παιδιά, πατήστε εδώ για να μεταφερθείτε στη φόρμα υποβολής των στοιχείων σας. Η ομάδα της teraFUN θα εξετάσει την εγκυρότητα των στοιχείων σας και θα σας προβάλλει σε όλους τους χρήστες της πλατφόρμας, δίνοντας μια νέα πνοή στην επιχείρησή σας.
      </p>
      <button onclick="window.location.href='sign_up_company.jsp';" style="width:170px; border:#0086b3; background-color:#0086b3" class="btn btn-primary" >Εγγραφή Επιχείρησης</button>
  </div>


  <div class="body1"></div>

</div>
</body>
</html>

