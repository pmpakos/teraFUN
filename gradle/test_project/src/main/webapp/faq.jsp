<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>FAQ | teraFUN</title>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
  <!-- Latest compiled JavaScript -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/stylelogin.css"> 
<link rel="stylesheet" href="css/header.css"> 
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
	
	<h1 class="text-center"> Συχνές ερωτήσεις </h1>
	 


  </div>

 <div class="jumbotron">
<div class="font-weight-bold"><h4><strong>Πώς ξεκινάω την αναζήτηση μου;</strong></h4></div>

<div class="p-3 mb-2  "><h4>Μπορείτε να βρείτε δραστηριότητες είτε χειροκίνητα μέσω αναζήτησης ανάμεσα σε όλες τις δραστηριότητες, είτε ψάχνοντας σύμφωνα με τις ανάγκες σας, μέσω του μενού της Αναζήτησης.</h4></div>
</div>
<div class="jumbotron">
<div class="font-weight-bold"><h4><strong>Πώς κάνω μια κράτηση online;</strong></h4></div>

<div class="p-3 mb-2  "><h4>Συνδεθείτε στο λογαριασμό σας. Βρείτε το event που σας ενδιαφέρει και κάντε κλικ σε αυτό. Σε εκείνο το σημείο κάντε κλικ στο κουμπί "Κάντε Κράτηση" και επιλέξτε για πόσα άτομα είναι η κράτηση αυτή. Εφόσον διαθέτετε αρκετούς πόντους η κράτηση θα γίνει αυτόματα.</h4></div>
</div>
<div class="jumbotron">

<div class="font-weight-bold"><h4><strong>Πώς προσθέτω πόντους στο πορτοφόλι μου;</strong></h4></div>

<div class="p-3 mb-2  "><h4>Η επιλογή "Πορτοφόλι" σας στέλνει σε ένα μενού που φαίνονται οι πόντοι σας. Εκεί βρίσκεται και μια πλατφόρμα για τα στοιχεία της κάρτας σας μέσω της οποίας μπορείτε να προσθέσετε πόντους στο λογαριασμό σας. Οι πόντοι που θα λάβετε είναι τα χρήματα που θα προσθέσετε πολλαπλασιασμένα με τον αριθμό 10.</h4></div>

</div>
<div class="jumbotron">
<div class="font-weight-bold"><h4><strong>Τι γίνεται αν θέλω να κάνω μια αλλαγή ή να ακυρώσω την κράτηση μου;</strong></h4></div>

<div class="p-3 mb-2  "><h4>Δεν υπάρχει η δυνατότητα αλλαγής ή ακύρωσης της κράτησης.</h4></div>

</div>
<div class="jumbotron">
<div class="font-weight-bold"><h4><strong>Πώς ξέρω αν η κράτηση μου έχει επιβεβαιωθεί;</strong></h4></div>

<div class="p-3 mb-2  "><h4>Εκτός από ειδικό μήνυμα στην οθόνη σας, θα σας σταλεί και ένα pdf αρχείο το οποίο θα αποτελεί την απόδειξη σας και ταυτόχρονα το εισιτήριο σας για το event.</h4></div>

</div>
<div class="jumbotron">
<div class="font-weight-bold"><h4><strong>Πληρώνω περισσότερο όταν κάνω κρατήσεις από την TeraFun;</strong></h4></div>

<div class="p-3 mb-2  "><h4>Όχι, αντιθέτως η TeraFUN εξασφαλίζει ειδικές προσφορές οι οποίες δεν θα μπορούσατε να βρείτε με προσωπικές πρωτοβουλίες. </h4></div>
</div>
<div class="jumbotron">

<div class="font-weight-bold"><h4><strong>Χρειάζομαι πιστωτική/χρεωστική κάρτα;</strong></h4></div>

<div class="p-3 mb-2 "><h4>Ναι. Οι πληρωμές στο site μας γίνονται μόνο online μέσω e-banking.</h4></div>



</div>

</div>
<div class="body1"></div>

</body>
</html>

