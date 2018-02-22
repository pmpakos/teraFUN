
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
	<!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
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
								    <div class="form-group bankaccount"> 
									      <label for="bankaccount"><span class="glyphicon glyphicon-piggy-bank"></span> Αριθμός Τραπεζικού Λογαριασμού</label>
									      <input type="text" class="form-control bankcomp-validation form-element" name="bankaccountcomp" id="bank" placeholder="Πληκτρολογείστε τον τραπεζικό σας λογαριασμό" data-validation="false">
									      <span class="error"><p1 id="bank_errorcomp"></p1></span>
									    </div>
								    
									<div class="row">
									      <div class="form-group addr col-xs-6">
										      <label for="addr"><span class="glyphicon glyphicon-home"></span> Διεύθυνση</label>
										      <input type="text" class="form-control addr-validation form-element" id="addr" name="addr" placeholder="Εισάγετε την διεύθυνση της εταιρίας" data-validation="false">
											  <span class="error"><p1 id="addr_error"></p1></span>
									    </div>  

									    <div class="form-group postal col-xs-6">
										      <label for="postal"><span class="glyphicon glyphicon-map-marker"></span> Ταχυδρομικός Κώδικας</label>
										      <input type="text" class="form-control postal-validation form-element" id="postal" name="postal"  placeholder="Εισάγετε τον ταχυδρομικό κώδικα" data-validation="false">
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
								      <input type="text" class="form-control" name="webpage" id="webpage"placeholder="Εισάγετε ιστοσελίδα της εταιρίας">
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
                                                            <input type="file" name="file" id="file"/> <!-- rename it -->
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
<!--                 <p>ΘΑ ΠΡΕΠΕΙ ΝΑ ΠΛΗΡΩΣΕΤΕ 5 ΕΥΡΩ ΡΕ</p>
                <p>και επίσης όλα τα προσωπικά σας δεδομένα είναι ασφαλή στην τέραΦΑΝ</p> -->
 <div class="font-weight-bold"><h4><strong>Αποδοχή των Όρων Χρήσης</strong></h4></div>

<div class="p-3 mb-2 bg-light text-dark"><h4>Η TeraFun Α.Ε., εφεξής η «Εταιρεία», δημιούργησε τον διαδικτυακό τόπο www.terafun.gr εφεξής ο «Διαδικτυακός Τόπος», και κάθε πληροφορία ή στοιχείο (π.χ. έγγραφα, αρχεία, κείμενα, γραφήματα) που εμπεριέχεται σε αυτόν, εφεξής «το Υλικό», με σκοπό την πραγματοποίηση κρατήσεων σε event ψυχαγωγίας από συνεργαζόμενους αντίστοιχους παρόχους. Η χρήση του Διαδικτυακού Τόπου, των υπηρεσιών που προσφέρονται μέσα από αυτόν και του Υλικού υπόκειται στους παρόντες Όρους Χρήσης, όπως ισχύουν σε κάθε χρονική στιγμή, οι οποίοι αποτελούν και τη συμφωνία μεταξύ της Εταιρείας και κάθε προσώπου που επισκέπτεται το Διαδικτυακό Τόπο σχετικά με τη χρήση αυτού. Η με οποιονδήποτε τρόπο πρόσβαση στο Διαδικτυακό Τόπο και χρήση αυτού (συμπεριλαμβανομένης και της απλής πλοήγησης σε αυτόν), δηλώνει την ανεπιφύλακτη αποδοχή από το χρήστη των Όρων Χρήσης, όπως ισχύουν σε κάθε χρονική στιγμή. Η TeraFun μπορεί να χρησιμοποιήσει τα στοιχεία επικοινωνίας του χρήστη για να στείλει ενημερωτικά email ή μηνύματα, όπως ορίζεται στις διατάξεις του Ν.2472/1997.</h4></div>

<div class="p-3 mb-2 bg-light text-dark"><h4>O Διαδικτυακός Τόπος υπό τους όρους και τις προϋποθέσεις που τίθενται στο παρόν και όλους τους εφαρμοστέους νόμους και κανονισμούς, σας χορηγεί ένα μη αποκλειστικό, αμεταβίβαστο, προσωπικό, περιορισμένο δικαίωμα πρόσβασης, χρήσης και παρουσίασης αυτής της ιστοσελίδας και των περιεχομένων στοιχείων της. Αυτή η άδεια δεν αποτελεί μεταβίβαση τίτλου στην ιστοσελίδα και στα στοιχεία της και υπόκειται στους ακόλουθους περιορισμούς: (1) πρέπει να διατηρείτε σε όλα τα αντίγραφα της ιστοσελίδας και των στοιχείων της, όλες τις επισημειώσεις που αφορούν πνευματικά δικαιώματα και άλλα ιδιοκτησιακά δικαιώματα και (2) δεν μπορείτε να τροποποιήσετε την ιστοσελίδα και τα στοιχεία της με κανένα τρόπο ή να αναπαράγετε ή να παρουσιάσετε δημοσίως, ή να διανείμετε ή με άλλο τρόπο να χρησιμοποιήσετε την ιστοσελίδα και τα στοιχεία της για οποιοδήποτε δημόσιο ή εμπορικό σκοπό, εκτός εάν άλλως επιτρέπεται με το παρόν.</h4></div>


<div class="font-weight-bold"><h4><strong>Χρήση του διαδικτυακού τόπου από ανήλικους</strong></h4></div>

<div class="p-3 mb-2 bg-light text-dark"><h4>Με την αποδοχή των Όρων Χρήσης ο Χρήστης δηλώνει ότι είναι ενήλικος άνω των 18 ετών ή, εάν είναι κάτω των 18 ετών, ότι έχει λάβει την απαραίτητη συναίνεση από τον έχοντα/ τους έχοντες τη γονική μέριμνα αυτού και ότι θα παράσχει τα στοιχεία αυτού/ αυτών, εφόσον του ζητηθεί κάτι τέτοιο.</h4></div>


<div class="font-weight-bold"><h4><strong>Μεταβολές</strong></h4></div>

<div class="p-3 mb-2 bg-light text-dark"><h4>Η Εταιρεία διατηρεί το δικαίωμα να μεταβάλει ή να τροποποιεί τους εφαρμοστέους όρους και προϋποθέσεις για τη χρήση της ιστοσελίδας σε οποιαδήποτε χρονική στιγμή. Τέτοιες αλλαγές, τροποποιήσεις, προσθήκες ή διαγραφές στους όρους και τις προϋποθέσεις της χρήσης θα τίθενται σε ισχύ άμεσα από την γνωστοποίησή τους, η οποία μπορεί να δοθεί με κάθε μέσο συμπεριλαμβανομένης, αλλά όχι περιοριστικά, της θέσης καινούργιων όρων και προϋποθέσεων στην ιστοσελίδα. Κάθε χρήση της ιστοσελίδας κατόπιν τέτοιας αλλαγής ή τροποποίησης θα θεωρείται ότι αποτελεί αποδοχή εκ μέρους σας τέτοιων αλλαγών, τροποποιήσεων, προσθηκών ή διαγραφών. Η Εταιρεία μπορεί, σε οποιαδήποτε χρονική στιγμή, να καταγγείλει, αλλάξει, αναστείλει ή διακόψει οποιαδήποτε επιμέρους λειτουργία αυτής της ιστοσελίδας συμπεριλαμβανομένης της διαθεσιμότητας, της φωτογραφία παρουσίασης ή περιγραφής οποιουδήποτε προϊόντος ή υπηρεσίας. Η συνέχιση της χρήσης του Διαδικτυακού Τόπου από το χρήστη και μετά από τέτοια ανακοίνωση συνιστά αποδοχή των μεταβολών αυτών.</h4></div>

<div class="p-3 mb-2 bg-light text-dark"><h4>Η χρήση του Διαδικτυακού Τόπου υπόκειται στους Όρους Χρήσης που ισχύουν τη στιγμή που γίνεται η χρήση. Ο χρήστης θα πρέπει περιοδικά να ελέγχει τους Όρους Χρήσης, ώστε να ενημερώνεται για το περιεχόμενό τους και είναι αποκλειστικά υπεύθυνος για την ενημέρωσή του αυτή.</h4></div>


<div class="font-weight-bold"><h4><strong>Περιορισμός Ευθύνης</strong></h4></div>

<div class="p-3 mb-2 bg-light text-dark"><h4>Η Εταιρεία, οι υπάλληλοί της, ή άλλοι αντιπρόσωποί της, δεν έχει καμία ευθύνη, υπό οποιεσδήποτε συνθήκες, για όποιες επακόλουθες, παρεμπίπτουσες, έμμεσες, ειδικές αποζημιώσεις ή έξοδα ή χρηματικές ποινές, συμπεριλαμβανομένων, αλλά όχι περιοριστικά, διαφυγόντων κερδών, διακοπής λειτουργίας της επιχείρησης, απώλειας πληροφοριών ή δεδομένων, ή απώλειας πελατείας, απώλειας ή ζημίας περιουσίας, και οποιωνδήποτε αξιώσεων τρίτων μερών προκύψουν από ή σε σχέση με την χρήση, την αντιγραφή, ή την παρουσίαση αυτής της ιστοσελίδας ή των περιεχομένων της ή οποιασδήποτε άλλης συνδεδεμένης ιστοσελίδας, ανεξαρτήτως εάν η Εταιρεία είχε ενημερωθεί, γνώριζε ή έπρεπε να γνωρίζει αυτή την πιθανότητα.</h4></div>


<div class="font-weight-bold"><h4><strong>Διόρθωση, Τροποποίηση ή Διαγραφή Πληροφοριών</strong></h4></div>

<div class="p-3 mb-2 bg-light text-dark"><h4>Η Εταιρεία επιτρέπει στους χρήστες της να διορθώνουν, αλλάζουν, συμπληρώνουν ή να διαγράφουν δεδομένα και πληροφορίες που έχουν προσκομιστεί στην TeraFun. Εάν επιλέξετε να διαγράψετε μια πληροφορία, η TeraFun θα ενεργήσει έτσι ώστε να διαγραφεί αυτή η πληροφορία από τα αρχεία της άμεσα. Για τη προστασία και την ασφάλεια του χρήστη η Εταιρεία θα προσπαθήσει να βεβαιωθεί ότι το πρόσωπο που κάνει τις αλλαγές είναι όντως το ίδιο πρόσωπο με το χρήστη. Παρακαλούμε όπως λάβετε υπόψη σας ότι θα κάνουμε ότι είναι δυνατό προκειμένου να προστατεύσουμε τα προσωπικά σας δεδομένα, αλλά η προστασία τους κωδικού πρόσβασης σας στην ιστοσελίδα μας εξαρτάται και από εσάς.</h4></div>


<div class="font-weight-bold"><h4><strong>Ασφάλεια συναλλαγών</strong></h4></div>

<div class="p-3 mb-2 bg-light text-dark"><h4>Η Εταιρεία δεσμεύεται όσον αφορά στην εξασφάλιση της ασφάλειας και της ακεραιότητας των δεδομένων που συλλέγει σχετικά με τους χρήστες της ιστοσελίδας της. Η Εταιρεία έχει υιοθετήσει διαδικασίες, οι οποίες προφυλάσσουν τα προσωπικά δεδομένα που οι χρήστες προσκομίζουν στην ιστοσελίδα της ή τα παρέχουν με οποιοδήποτε άλλο μέσο (πχ. τηλεφωνικά). Αυτές οι διαδικασίες προστατεύουν τα δεδομένα των χρηστών από οποιαδήποτε μη επιτρεπόμενη πρόσβαση ή αποκάλυψη, απώλεια ή κακή χρήση, και αλλαγή ή καταστροφή. Βοηθούν επίσης στο να πιστοποιείται ότι τα στοιχεία αυτά είναι ακριβή και χρησιμοποιούνται σωστά.</h4></div>


<div class="font-weight-bold"><h4><strong>Εφαρμοστέο Δίκαιο και δικαιοδοσία</strong></h4></div>

<div class="p-3 mb-2 bg-light text-dark"><h4>Οι παρόντες Όροι και Προϋποθέσεις Χρήσης και κάθε τροποποίησή τους διέπονται από το Ελληνικό Δίκαιο. Για κάθε διαφορά που τυχόν προκύψει από την παρούσα συμφωνία και η οποία δεν μπορεί να επιλυθεί εξωδίκως αρμόδια ορίζονται τα καθ' ύλη δικαστήρια των Αθηνών. Όλα τα δικαιώματα και τα ένδικα μέσα σύμφωνα με τους όρους χρήσης είναι σωρευτικά και δεν αποκλείουν άλλα δικαιώματα και ένδικα μέσα που προβλέπονται από το νόμο ή από άλλη συμφωνία.</h4></div>                
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