
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Company SignUp | teraFUN</title>


	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
	<!-- Latest compiled JavaScript -->
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="js/uploadimage.js"></script>
	<script src="js/validateparent.js"></script>
	<script src="js/validatecompany.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/stylelogin.css"> 
<link rel="stylesheet" href="css/header.css"> 

<style>
.body1 {
  background: url('static/vector.jpg');
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
    /*-webkit-filter: blur(5px);
    -moz-filter: blur(5px);
    -o-filter: blur(5px);
    -ms-filter: blur(5px);
    filter: blur(5px);   */
}
</style>
</head>


<body>


<%@include file="header.jsp" %>
<br>
<br>
	<div class="container">
    	<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-register">
					<div class="panel-heading">
						<br>
						 <h>Δημιουργία Λογαριασμού Επιχείρησης</h>
						<!-- <hr class="style1"> -->
						<br>
					</br>
					</div>
					<div class="panel-body">
						 <div class="row"> 
							<div class="col-lg-10 col-md-offset-1">
								<br>
								<form id="login-form" onsubmit="return validatecompany()" action="upload_image_company" method="Post" enctype="multipart/form-data" role="form">
								<!-- <form id="login-form" role="form" enctype="multipart/form-data"> -->
									<!-- action="upload_image_company" -->
									    <div class="form-group usn">
								    	<label for="username"> <span class="glyphicon glyphicon-user" > </span> UserName</label>
								      	<input type="text" class="form-control usn-comp-validation form-element" name="usn" id="usn" placeholder="Εισάγετε ένα έγκυρο username" data-validation="false" id="usn-border">
								      	<span class="error"><p1 id="usn_error"></p1></span>
								    </div>
								    
								  
								    <div class="form-group email">
								    	<label for="Email"> <span class="glyphicon glyphicon-envelope"> </span> Email</label>
								        <input type="email" class="form-control email-comp-validation form-element" name="email" id="email" placeholder="Εισάγετε την διεύθυνση ηλεκτρονικού ταχυδρομίου" data-validation="false">
								   		<span class="error"><p1 id="email_error"></p1></span>
									</div>

									 <div class="row">
										<div class="form-group password col-xs-6">
									        <label for="password"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
											<input  type="password" class="form-control password-validation form-element" id="pass" name="password" placeholder="Εισάγετε κωδικό πρόσβασης" data-validation="false">
									  		<span class="error"><p1 id="pass1_error"></p1></span>
									    </div>
									    <div class="form-group confirm-password col-xs-6">
									     	<label for="confirm-password"><span class="glyphicon glyphicon-eye-open"></span> Επαλήθευση Password</label>
											<input  type="password" class="form-control password-confirmation form-element" id="pass1" name="password1" placeholder="Επαληθεύστε τον κωδικό πρόσβασης" data-validation="false">
									    	<span class="error"><p1 id="pass2_error"></p1></span>
									    </div>
								    </div>

									
								  	 	
							    	<div class="form-group compname">
								      	<label for="compname"><span class="glyphicon glyphicon-user"></span> Όνομα Εταιρίας</label>
								      	<input type="text" class="form-control compname-validation form-element" name="compname" id="compname" placeholder="Εισάγετε το όνομα της εταιρίας" data-validation="false">
								    	<span class="error"><p1 id="compname_error"></p1></span>
							    	</div>  	 
								  
								   <div class="form-group afm"> 
									      <label for="afm"><span class="glyphicon glyphicon-briefcase"></span> ΑΦΜ εταιρίας</label>
									      <input type="text" class="form-control afm-validation form-element" name="afm" id="afm" placeholder="Εισάγετε το ΑΦΜ" data-validation="false">
									      <span class="error"><p1 id="afm_error"></p1></span>
								    </div>
								    
									<div class="row">
									      <div class="form-group addr col-xs-6">
										      <label for="addr"><span class="glyphicon glyphicon-home"></span> Διέυθυνση</label>
										      <input type="text" class="form-control addr-validation form-element" id="addr" name="addr" placeholder="Εισάγετε διεύθυνση" data-validation="false">
											  <span class="error"><p1 id="addr_error"></p1></span>
									    </div>  

									    <div class="form-group postal col-xs-6">
										      <label for="postal"><span class="glyphicon glyphicon-map-marker"></span> Ταχυδρομικός Κώδικας</label>
										      <input type="text" class="form-control postal-validation form-element" id="postal" name="postal"  placeholder="Εισάγετε τον τκ" data-validation="false">
										      <span class="error"><p1 id="postal_error"></p1></span>
								    	</div> 
								    </div>

								    <div class="form-group tel">
								      <label for="tel"><span class="glyphicon glyphicon-phone-alt"></span> Τηλέφωνο Επικοινωνίας</label>
								      <input type="text" class="form-control tel-validation form-elementl" name="tel" id="tel" placeholder="Εισάγετε το τηλέφωνο της εταιρίας" data-validation="false">
								    	<span class="error"><p1 id="tel_error"></p1></span>
								    </div>

								    <!-- <div class="form-group bankaccount"> 
								      <label for="bankaccount"><span class="glyphicon glyphicon-piggy-bank"></span> Credit Card Number</label>
								      <input type="text" class="form-control bank-validation form-element" name="bankaccount" placeholder="Bank Account Number" data-validation="false">
								      <span class="error"><p1 id="bank_error"></p1></span>
								    </div>
 -->
								    <div class="form-group webpage">
								      <label for="webpage"><span class="glyphicon glyphicon-bookmark"></span> Webpage</label>
								      <input type="text" class="form-control" name="webpage" id="webpage"placeholder="Εισάγετε την ιστοσελίδα της εταιρίας">
								    </div>

								    <div class="form-group">
									    <label for="description"><span class="glyphicon glyphicon-pencil"></span>Περιγραφή της Εταιρίας</label>
									    <textarea class="form-control" id="description" ></textarea>
									</div>

									<div class="row"> 	
									 <!-- <div class="form-group image-preview"> -->
									 	  <div class="col-lg-8">  
									 	  	<label for="pic"><span class="glyphicon glyphicon-picture"></span> Φωτογραφία Εταιρίας</label>
                                                <!-- image-preview-filename input [CUT FROM HERE]-->
                                                <div class="input-group image-preview">
                                                	
                                                    <input type="value" class="form-control image-preview-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
                                                    <span class="input-group-btn">
                                                        <!-- image-preview-clear button -->
                                                        <button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                                                            <span class="glyphicon glyphicon-remove"></span> Clear
                                                        </button>
                                                        <!-- image-preview-input -->
                                                        <div class="btn btn-default image-preview-input">
                                                            <span class="glyphicon glyphicon-folder-open"></span>
                                                            <span class="image-preview-input-title">Browse</span>
                                                            <input type="file" name="file" multiple/> <!-- rename it -->
                                                        </div>
                                                    </span>
                                                </div><!-- /input-group image-preview [TO HERE]--> 
                                            <!-- </div> -->
									</div>
								</div>
								<br>

								<div class="form-group">
							        <!--<div class="col-xs-6 col-xs-offset-3">-->
							            <button type="button" class="btn btn-default" data-toggle="modal" data-target="#termsModal">Όροι και προϋποθέσεις</button>
							            <input type="hidden" class="form-control agree form-element" name="agree" id="agree" value="no" />
							        <!--</div>-->
							    </div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit"  class="form-control btn btn-registerc" value="ΔΗΜΙΟΥΡΓΙΑ ΛΟΓΑΡΙΑΣΜΟΥ" />
												<!-- <button type="button" name="registerc-submit" id="registerc-submit" tabindex="4" class="form-control btn btn-loginp"><span>ΔΗΜΙΟΥΡΓΙΑ ΛΟΓΑΡΙΑΣΜΟΥ </span></button> -->
											</div>
										</div>
									</div>			
									<span class="error"><p1 id="total_error"></p1></span>
									<br>
									<br>
								</form>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	

<div class="modal fade" id="termsModal" tabindex="-1" role="dialog" aria-labelledby="Terms and conditions" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">Όροι και προϋποθέσεις</h3>
            </div>

            <div class="modal-body">
                <p>ΘΑ ΠΡΕΠΕΙ ΝΑ ΠΛΗΡΩΣΕΤΕ 5 ΕΥΡΩ ΡΕ</p>
                <p>και επίσης όλα τα προσωπικά σας δεδομένα είναι ασφαλή στην τέραΦΑΝ</p>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="agreeButton" data-dismiss="modal">Συμφωνώ</button>
                <button type="button" class="btn btn-default" id="disagreeButton" data-dismiss="modal">Διαφωνώ</button>
            </div>
        </div>
    </div>
</div>

 <script async defer
     src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDJxFd20F7bBF7yY7hdjPcw0UybXJXiPYE">
    </script>
    <div class="body1"></div>

</body>
</html>