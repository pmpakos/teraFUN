<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Σχετικά με εμάς | teraFUN</title>
<style type="text/css">
  .body1 {
    background: url('static/lala.jpg');
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
      -webkit-filter: blur(0px);
      -moz-filter: blur(0px);
      -o-filter: blur(0px);
      -ms-filter: blur(0px);
      filter: blur(0px);   
    }

    .image2 {
    border-radius: 50%;
    position: relative;
    float: left;
    width:  200px;
    height: 200px;
    background-position: 50% 50%;
    background-repeat:   no-repeat;
    background-size:     cover;
    margin-top: 50px;
    margin-bottom: 50px;
    margin-right: 50px;
    margin-left: 50px;
}

</style>

</head>
<body>

<%@include file="header.jsp" %>
<!-- ////////////////////////////////////////////////////////// -->
<!-- flag=="" shmainei unknown -->
<!-- flagidi==0 shmainei admin -->
<!-- flagidi==1 shmainei user -->
<!-- flagidi==2 shmainei company -->
<%
if(flagidi==0){
  response.sendRedirect(request.getContextPath() + "/error-404.jsp");
}
%>
<!-- ////////////////////////////////////////////////////////// -->

<div class="container">
	
<div class="jumbotron">
  <p class="text-center">Ποιοί είμαστε.</p>
	<div class="bg-faded">Δεν υπάρχουν πολλές λέξεις να περιγράψουν την ευχαρίστηση ενός γονιού όταν μόνο με λίγα κλικ να μπορεί να βρει ενδιαφέρουσες δραστηριότητες για το παιδί του.</div>

  <br>

<div class="bg-faded">Η πολιτική μας βασίζεται στο εξής τρίπτυχο :</div>

  <br>
<br>
<i><strong  class="bg-faded"> Διασκέδαση  </strong ></i>
 <br>
<br>
<i><strong class="bg-faded"> Αξιοπιστία  </strong ></i>
 <br>
<br>
<i ><strong class="bg-faded"> Οικονομικές επιλογές   </strong></i>
<br>

  <br>

<div class="bg-faded">Η TeraFun δημιουργήθηκε από μια παρέα 6 ατόμων και ξεκίνησε η λειτουργία της στις 1 Μαρτίου 2018. Η δράση της βασίζεται στον σεβασμό προς τους γονείς και την αγάπη προς τα παιδιά.</div>



 <h1 class="text-center"> Η ομάδα μας: </h1>

  <div class="row">
    <div class="col-lg-4 col-sm-6">
      <div >
        <img class="image2" src="images/team/14206206_1519202061438916_5784600612905694952_o.jpg" alt="Avatar" >
      </div>
    </div>
    <div class="col-lg-4 col-sm-6">
      <div >
        <img class="image2" src="images/team/28461762_10210598958081992_345812403_o.jpg" alt="Avatar"  >
      </div>
    </div>
    <div class="col-lg-4 col-sm-6">
      <div >
        <img class="image2" src="images/team/26231013_1794060913972600_3314827946457038955_n.jpg" alt="Avatar"   >
      </div>
    </div>
    <div class="col-lg-4 col-sm-6">
      <div >
        <img class="image2" src="images/team/18033230_1554583711218641_6883455355817281985_n.jpg" alt="Avatar" >
      </div>
    </div>
    <div class="col-lg-4 col-sm-6">
      <div >
        <img class="image2" src="images/team/23131794_10210614872034609_529643354418041067_n.jpg" alt="Avatar"  >
      </div>
    </div>
    <div class="col-lg-4 col-sm-6">
      <div >
        <img class="image2" src="images/team/26112108_10209889788592111_6391759674145682846_n.jpg" alt="Avatar"   >
      </div>
    </div>
  </div>
  
  <div class="body1"></div>
</body>
</html>

