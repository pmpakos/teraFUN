
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%  int ID = 3; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Company SignUp | teraFUN</title>


	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
	<!-- Latest compiled JavaScript -->
	<!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
	<script src="js/uploadimage.js"></script>
	<script src="js/validateparent.js"></script>
	<script src="js/validatecompany.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/stylelogin.css"> 
<link rel="stylesheet" href="css/header.css"> 

<style>
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

  /*background-size:cover;*/
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
						 <h>Επεξεργασία Στοιχείων Λογαριασμού <span data-bind="text:companyname"></span> </h>

						 
						<!-- <hr class="style1"> -->
						<br>
					</br>
					</div>
					<div class="panel-body">
						 <div class="row"> 
							<div class="col-lg-10 col-md-offset-1">
								<br>
								<!-- <form id="login-form" role="form"> -->

								 <form id="login-form"  action="upload_image_company" method="Post" enctype="multipart/form-data" role="form">

									    
								    
								  
								    <div class="form-group email">
								    <input type="hidden" id="usn" data-bind="value:username"/>
								    <input type="hidden" id="afm" data-bind="value:afm"/>
								    	<label for="Email"> <span class="glyphicon glyphicon-envelope"> </span> Email</label>
								        <input type="email" class="form-control email-comp-validation form-element" name="email" id="email" data-bind="value: email, attr: {placeholder: 'Εισάγετε την διεύθυνση ηλεκτρονικού ταχυδρομίου'}"  data-validation="false">
								   		<span class="error"><p1 id="email_error"></p1></span>
									</div>

									 <div class="row">
										<div class="form-group password col-xs-6">
									        <label for="password"><span class="glyphicon glyphicon-eye-open"></span> Κωδικός Πρόσβασης</label>
											<input  type="password" class="form-control password-validation form-element" id="pass" name="password" data-bind="value: password, attr: {placeholder:'Εισάγετε κωδικό πρόσβασης'}"  data-validation="false">
									  		<span class="error"><p1 id="pass1_error"></p1></span>
									    </div>
									    <div class="form-group confirm-password col-xs-6">
									     	<label for="confirm-password"><span class="glyphicon glyphicon-eye-open"></span> Επαλήθευση Κωδικού Πρόσβασης</label>
											<input  type="password" class="form-control password-confirmation form-element" id="pass1" name="password1" data-bind="value: password2, attr: {placeholder:'Επαληθεύστε τον κωδικό πρόσβασης'}" data-validation="false">
									    	<span class="error"><p1 id="pass2_error"></p1></span>
									    </div>
								    </div>

									
								  	 	
							    	<div class="form-group compname">
								      	<label for="compname"><span class="glyphicon glyphicon-user"></span> Όνομα Εταιρείας</label>
								      	<input type="text" class="form-control compname-validation form-element" name="compname" id="compname" data-bind="value: companyname, attr: {placeholder:'Εισάγετε το όνομα της εταιρείας'}" data-validation="false">
								    	<span class="error"><p1 id="compname_error"></p1></span>
							    	</div>  	 
								  
								<!--   <div class="form-group afm"> 
									      <label for="afm"><span class="glyphicon glyphicon-briefcase"></span> ΑΦΜ εταιρείας</label>
									      <input type="text" class="form-control afm-validation form-element" name="afm" id="afm" data-bind="value: afm, attr: {placeholder:'Εισάγετε το ΑΦΜ της εταιρείας'}" data-validation="false">
									      <span class="error"><p1 id="afm_error"></p1></span>
								    </div> -->
								    <div class="form-group bankaccount"> 
									      <label for="bankaccount"><span class="glyphicon glyphicon-piggy-bank"></span> Αριθμός Τραπεζικού Λογαριασμού</label>
									      <input type="text" class="form-control bankcomp-validation form-element" name="bankaccountcomp" id="bank" data-bind="value:bank, attr: {placeholder:'Πληκτρολογήστε τον τραπεζικό  λογαριασμό της εταιρείας'}" data-validation="false">
									      <span class="error"><p1 id="bank_errorcomp"></p1></span>
									    </div>
								    
									<div class="row">
									      <div class="form-group addr col-xs-6">
										      <label for="addr"><span class="glyphicon glyphicon-home"></span> Διεύθυνση</label>
										      <input type="text" class="form-control addr-validation form-element" id="addr" name="addr" data-bind="value: address, attr: {placeholder:'Εισάγετε την διεύθυνση της εταιρείας'}" data-validation="false">
											  <span class="error"><p1 id="addr_error"></p1></span>
									    </div>  

									    <div class="form-group postal col-xs-6">
										      <label for="postal"><span class="glyphicon glyphicon-map-marker"></span> Ταχυδρομικός Κώδικας</label>
										      <input type="text" class="form-control postal-validation form-element" id="postal" name="postal"  data-bind="value: postal, attr: {placeholder:'Εισάγετε τον ταχυδρομικό κώδικα της εταιρείας'}" data-validation="false">
										      <span class="error"><p1 id="postal_error"></p1></span>
								    	</div> 
								    </div>

								    <div class="form-group tel">
								      <label for="tel"><span class="glyphicon glyphicon-phone-alt"></span> Τηλέφωνο Επικοινωνίας</label>
								      <input type="text" class="form-control tel-validation form-elementl" name="tel" id="tel" data-bind="value: telephone, attr: {placeholder:'Εισάγετε το τηλέφωνο της εταιρείας'}" data-validation="false">
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
								      <input type="text" class="form-control" name="webpage" id="webpage"data-bind="value: web, attr: {placeholder:'Εισάγετε την ιστοσελίδα της εταιρείας'}">
								    </div>

								    <div class="form-group">
									    <label for="description"><span class="glyphicon glyphicon-pencil"></span>Περιγραφή της Εταιρείας</label>
									    <textarea class="form-control" id="description" data-bind="value: description, attr: {placeholder:'Εισάγετε περιγραφή της εταιρείας'}" ></textarea>
									</div>

									<div class="row"> 	
									 <!-- <div class="form-group image-preview"> -->
									 	  <div class="col-lg-8">  
									 	  	<label for="pic"><span class="glyphicon glyphicon-picture"></span> Φωτογραφία Εταιρείας</label>
                                                <!-- image-preview-filename input [CUT FROM HERE]-->
                                                <div class="input-group image-preview">
                                                	
                                                    <input type="value"  placeholder="Ανανέωση φωτογραφίας προφίλ" class="form-control image-preview-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
                                                    <span class="input-group-btn">
                                                        <!-- image-preview-clear button -->
                                                        <button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                                                            <span class="glyphicon glyphicon-remove"></span> Clear
                                                        </button>
                                                        <!-- image-preview-input -->
                                                        <div class="btn btn-default image-preview-input">
                                                            <span class="glyphicon glyphicon-folder-open"></span>
                                                            <span class="image-preview-input-title">Browse</span>
                                                            <input type="file" name="file" id="file"/> <!-- rename it -->
                                                        </div>
                                                    </span>
                                                </div><!-- /input-group image-preview [TO HERE]--> 
                                            <!-- </div> -->
									</div>
								</div>
								<br>

								
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="button"  class="form-control btn btn-info btn-update1" value="ΕΝΗΜΕΡΩΣΗ ΣΤΟΙΧΕΙΩΝ" />
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



 <script async defer
     src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDJxFd20F7bBF7yY7hdjPcw0UybXJXiPYE">
    </script>
    <div class="body1"></div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <!-- <script src="./static/bootstrap/js/bootstrap.min.js"></script> -->
    <script src="./static/knockout-3.4.2.js"></script>

    

    <script>
        function fetch_data() {    
            var VM = function(){
                this.id = ko.observable();
                this.companyname = ko.observable(); 
                this.web = ko.observable(); 
                this.description =  ko.observable(); 
                this.address =  ko.observable();
                this.PhotosFolder = ko.observable();  
                this.telephone = ko.observable();  
                this.postal = ko.observable();
                this.password =ko.observable();
                this.email =ko.observable();
                this.password2 =ko.observable();
                this.afm=ko.observable();
                this.bank=ko.observable();
                this.username=ko.observable();
            }

            VM.prototype.loadCompany = function() {
                console.log("Loading company...");
                var ID = <%=ID%>;
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

            viewModel.loadCompany().done(function(companyJson){
                console.log("Done loading companies.");                 
                viewModel.id(companyJson.CompanyID);
                viewModel.companyname(companyJson.CompanyName);
                viewModel.web(companyJson.WebPage);
                viewModel.description(companyJson.Description);
                viewModel.address(companyJson.Address);
                viewModel.PhotosFolder(companyJson.PhotosFolder);
                viewModel.telephone(companyJson.TelephoneNumber);
                viewModel.postal(companyJson.PostalCode);
                viewModel.password(companyJson.Password);
                viewModel.password2(companyJson.Password);
                viewModel.email(companyJson.Email);
                viewModel.afm(companyJson.AFM);
                viewModel.bank(companyJson.BankAccount);
                viewModel.username(companyJson.Username);

            
                
               
                
                
            });

            ko.applyBindings(viewModel);            
            console.log("Applied bindings");
        }

    </script>

    <script> fetch_data(); </script>
   

</body>
</html>
