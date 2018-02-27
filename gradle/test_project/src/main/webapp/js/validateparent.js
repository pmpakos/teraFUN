validpostal=0;
validtel=0;
validbank=0;
validaddr=0;
validfname=0;
validlname=0;
validusn=0;
validemail=0;
validpass=0;
validpass1=0;
agree=0;
latt=0;
lngg=0;
mymail=1;
$(document).ready(function() {
	$('#agreeButton, #disagreeButton').on('click', function() {
        var whichButton = $(this).attr('id');
        console.log(whichButton);
        if(whichButton=="disagreeButton"){
        	 agree=false;
        	
        }
        else{
        	 agree=true;
        	
        }
       
    });
});

$(document).on('blur','.usn-validation',function(){
	var content = $(this).val();

	invalidArray = content.match(/[^a-zA-Z0-9]/g);
	validusn=2;

	
	if(content.length == 0){
		validusn=0;
		document.getElementById('usn_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
	}else if(invalidArray != null){
		
		validusn=0;
		
		document.getElementById('usn_error').innerHTML = 'Το username περιλαμβάνει μόνο λατινικά γράμματα και αριθμούς';
	}
	else if(content.length < 2){
		validusn=0;
		document.getElementById('usn_error').innerHTML = 'Tο username πρέπει να έχει τουλάχιστον δύο χαρακτήρες';
	}
	else{
		$.ajax({
			type:"POST",
			data:{
				usn:content,},
			url:'/app/check_username',
			success: function(username_check){
				console.log("Result is: "+username_check);
				if (username_check == "true"){
					validusn=0;
					document.getElementById('usn_error').innerHTML = "To username αυτό χρησιμοποιείται ήδη";
					
				}
				else{
					validusn = 1;
					document.getElementById('usn_error').innerHTML = "<span style=\"color:green\">" + "Διαθέσιμο username" + "</span>";
				}
			}
		});
	}

	//$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(message);

	if(validusn){
    	$(this).css('border','');
    	$(this).attr('data-validation',true);
    //$(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','green');
  	}else{
    		$(this).css('border','1px solid red');
    		$(this).attr('data-validation',false);
      //  $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');
  	}

});


$(document).on('blur','.password-validation',function(){
	var content = $(this).val();

	invalidArray = content.match(/[^a-zA-Z0-9_ ]/g);
	
	if(validpass1){
		document.getElementById("pass1").value = '';
		validpass1=0;	
	}
	
	
	if(content.length == 0){
		validpass=0;
		document.getElementById('pass1_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
	}else if(invalidArray != null){
		
		validpass=0;
		
		document.getElementById('pass1_error').innerHTML = 'Ο κωδικός περιλαμβάνει μόνο αριθμούς, λατινικά γράμματα και κάτω παύλες';
	
	}else if(content.length < 5){
		
		validpass=0;
		document.getElementById('pass1_error').innerHTML = 'Ο κωδικός πρόσβασης πρέπει να έχει τουλάχιστον 5 χαρακτήρες';
		
	}else{
		validpass=1;
		document.getElementById('pass1_error').innerHTML = "";
	}

	//$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(message);

if(validpass){
    $(this).css('border','');
    $(this).attr('data-validation',true);
    //$(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','green');
  }else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
      //  $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');
  }

});

$(document).on('blur','.password-confirmation',function(){
	var content = $(this).val();
	var password = $(this).parent().siblings().find('.password-validation').val();

	
	//invalidArray = content.match(/[^a-zA-Z0-9_ ]/g);

	if(($(this).parent().siblings().find('.password-validation').attr('data-validation') != 'true')){
		validpass1=0;
		document.getElementById('pass2_error').innerHTML = 'Συμπληρώστε πρώτα έναν έγκυρο κωδικό πρόσβασης';
		
	}else if(content.length == 0){
		validpass1=0;
		

		document.getElementById('pass2_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
	}else if(password.length == 0){
		
		validpass1=0;
		document.getElementById('pass2_error').innerHTML = 'Πρώτα συμπληρώστε τον κωδικό';
		
	}else if(password != content){
	
		validpass1=0;
	
		document.getElementById('pass2_error').innerHTML = "Οι κωδικοί που δώσατε δεν είναι ίδιοι";
	}else{
		document.getElementById('pass2_error').innerHTML = "";
		validpass1=1;
	}

	if(validpass1){
	
    $(this).css('border','');
    $(this).attr('data-validation',true);
  }else{
    $(this).css('border','1px solid red');
    $(this).attr('data-validation',false);
     }
});

$(document).on('blur','.email-validation',function(){
	var content = $(this).val();
	validemail=2;
	
	var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	validemail = re.test(content);


	if(content.length == 0){
		validemail = 0;

		document.getElementById('email_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';

	}else if(!validemail){
		validemail = 0;
		
		document.getElementById('email_error').innerHTML = 'Συμπληρώστε μία έγκυρη διεύθυνση ηλεκτρονικού ταχυδρομίου';
		
	}
	else{
		$.ajax({
			type:"POST",
			data:{
				email:content,},
			url:'/app/check_email',
			success: function(email_check){
				console.log("Result is: "+email_check);
				if (email_check.length>0){
					validemail=0;
					document.getElementById('email_error').innerHTML = "To email αυτό χρησιμοποιείται ήδη";
				}
				else{
					document.getElementById('email_error').innerHTML = "";
					validemail=1;
					document.getElementById('email_error').innerHTML = "<span style=\"color:green\">" + "Έγκυρο email" + "</span>";
					//document.getElementById('email-border').style.borderColor = "green";
				}
			}
		});
	}
	
	
	
	if(validemail){
    $(this).css('border','');
    $(this).attr('data-validation',true);

  }else{
    $(this).css('border','1px solid red');
    $(this).attr('data-validation',false);
  
    
  }
});

$(document).on('blur','.current_email-validation',function(){
	var content = $(this).val();
	var usn1 = $(this).parent().siblings('.row').find('input[name=username]').val();
	validemail=2;
	var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	validemail = re.test(content);


	if(content.length == 0){
		validemail = 0;
		mymail=0;
		document.getElementById('email_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';

	}else if(!validemail){
		validemail = 0;
		mymail=0;
		document.getElementById('email_error').innerHTML = 'Συμπληρώστε μία έγκυρη διεύθυνση ηλεκτρονικού ταχυδρομίου';
		
	}
	else{
		$.ajax({
			type:"POST",
			data:{
				email:content,},
			url:'/app/check_email',
			success: function(email_check){
				console.log("Result is: "+email_check);
				if (email_check == usn1){
					mymail=1;
				}
				else if(email_check.length >0){
					mymail=0;
					validemail=0;
					document.getElementById('email_error').innerHTML = "To email αυτό χρησιμοποιείται ήδη";
				}
				else{
					mymail=1;
					document.getElementById('email_error').innerHTML = "";
					validemail=1;
					document.getElementById('email_error').innerHTML = "<span style=\"color:green\">" + "Έγκυρο email" + "</span>";
					//document.getElementById('email-border').style.borderColor = "green";
				}
			}
		});
	}
	
	
	
	if(validemail){
    $(this).css('border','');
    $(this).attr('data-validation',true);

  }else{
    $(this).css('border','1px solid red');
    $(this).attr('data-validation',false);
  
    
  }
});



$(document).on('blur','.fname-validation',function(){
	var content = $(this).val();
	
	invalidArray = content.match(/[^a-zA-ZΆ-ωΑ-ώ\s]/g);
		
	if(invalidArray!=null) validfname=0;
	else validfname=1;

	if(content.length == 0){
		validfname = 0;
		
		document.getElementById('fname_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
	}else if(!validfname){
		
		document.getElementById('fname_error').innerHTML = 'Το όνομα πρέπει να περιέχει μόνο γράμματα';
	}else{
		document.getElementById('fname_error').innerHTML = "";
		
	}



if(validfname){
    $(this).css('border','');
    $(this).attr('data-validation',true);
    
  }else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);

  }

});

$(document).on('blur','.lname-validation',function(){
	var content = $(this).val();
	
	invalidArray = content.match(/[^a-zA-ZΆ-ωΑ-ώ\s]/g);
		
	if(invalidArray!=null) validlname=0;
	else validlname=1;

	if(content.length == 0){
		validlname = 0;
	
		document.getElementById('lname_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
	}else if(!validlname){
		
		document.getElementById('lname_error').innerHTML = 'Το επίθετο πρέπει να περιέχει μόνο γράμματα';
	}else{
		document.getElementById('lname_error').innerHTML = "";
		
	}


if(validlname){
    $(this).css('border','');
    $(this).attr('data-validation',true);
   
  }else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
        }
});



$(document).on('blur','.addr-validation',function(){
	if(validpostal){
		document.getElementById("postal").value = '';
		validpostal=0;	
	}
	var content = $(this).val();
	
	if(content.length == 0){
		validaddr = 0;
		
		document.getElementById('addr_error').innerHTML ='Συμπληρώστε αυτό το πεδίο';
	}
	else{
		
		document.getElementById('addr_error').innerHTML = "";
		
	}
});

$(document).on('blur','.postal-validation',function(){
	if(validaddr){
		document.getElementById("addr").value = '';
		validaddr=0;	
	}
	var content = $(this).val();
	var address = $(this).parent().siblings().find('.addr-validation').val();
	var location = address+" "+content;

	var content = $(this).val();
	var re=/\b\d{5}\b/g;
	validpostal = re.test(content);
	

	if(content.length == 0){
		validpostal=0;
		console.log("Enter postal code ");
		document.getElementById('postal_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
	}else if(address.length==0){
		validpostal = 0;
		console.log("Enter address first");
		document.getElementById('addr_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
	}
	else if(validpostal ==0 || (content.length!=5)){
		
		document.getElementById('postal_error').innerHTML = 'Ο ταχυδρομικός κωδικός πρέπει να περιέχει 5 αριθμούς χωρίς κενά';
		
	}
	else{
		geocoder = new google.maps.Geocoder();
		if( geocoder ) {
		    geocoder.geocode({ 'address': location }, function (results, status) {
		      if( status == google.maps.GeocoderStatus.OK ) {
		    	  latt=results[0].geometry.location.lat();
	        	  lngg=results[0].geometry.location.lng();
	        	  message= "latt =\"" + latt.toString()  + "\" and lngg = \"" + lngg.toString() + "\" ";
	        	  console.log(message);
	        	  document.getElementById('postal_error').innerHTML = "";
	        	  validpostal=1;
	        	  validaddr=1;
		      }
		      else{
		    	  validpostal=0;
	        	  validaddr=0;
	        	  document.getElementById('addr_error').innerHTML = 'Η διεύθυνση ή ο ΤΚ δεν είναι έγκυρα';
		  		document.getElementById('postal_error').innerHTML = 'Η διεύθυνση ή ο ΤΚ δεν είναι έγκυρα';
		      }
		    });
		  }
		
	}
	
	if(validpostal){
		$(this).css('border','');
		$(this).attr('data-validation',true);
		$(this).parent().siblings().find('.addr-validation').css('border','');
		$(this).parent().siblings().find('.addr-validation').attr('data-validation',true);
	}else{
		$(this).parent().siblings().find('.addr-validation').css('border','1px solid red');
		$(this).parent().siblings().find('.addr-validation').attr('data-validation',false);
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
    }

});

$(document).on('blur','.tel-validation',function(){
	var content = $(this).val();
	var re=/\b\d{10}\b/g;
	validtel = re.test(content);
	
	if(content.length == 0){
		validtel = false;
	
		document.getElementById('tel_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
	}else if(validtel == 0 || (content.length!=10)){
	
		document.getElementById('tel_error').innerHTML = 'Το τηλέφωνο επικοινωνίας πρέπει να περιέχει μόνο αριθμούς χωρίς κενά';
		
	}
	else{
		document.getElementById('tel_error').innerHTML = "";
		
	}
	
	
	if(validtel){
		$(this).css('border','');
		$(this).attr('data-validation',true);
	}else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
    }

});


$(document).on('blur','.bank-validation',function(){
	var content = $(this).val();
	var re=/\b\d{16}\b/g;
	validbank = re.test(content);
	

	if(content.length == 0){
		validbank = false;
		
		document.getElementById('bank_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
	}else if(validbank == 0 || (content.length!=16)){
		
		document.getElementById('bank_error').innerHTML = 'Παρακαλώ εισάγετε τον 16ψήφιο αριθμού της κάρτας σας χωρίς κενά';
		
	}
	else{

		document.getElementById('bank_error').innerHTML = "";
		
	}
	
	if(validbank){
		$(this).css('border','');
		$(this).attr('data-validation',true);
	}else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
    }

});

$(document).on('click','.signup-btn',function(){
	
	var usn = $(this).parent().parent().siblings('.usn').find('input[name=usn]').val();
	console.log(usn);
	var email = $(this).parent().parent().siblings('.email').find('input[name=email]').val();
	console.log(email);
	var password = $(this).parent().parent().siblings('.row').find('input[name=password]').val();
	console.log(password);
	var fname=$(this).parent().parent().siblings('.row').find('input[name=fname]').val();
	console.log(fname);
	var lname=$(this).parent().parent().siblings('.row').find('input[name=lname]').val();
	console.log(lname);
	var postal=$(this).parent().parent().siblings('.row').find('input[name=postal]').val();
	console.log(postal);
	var addr=$(this).parent().parent().siblings('.row').find('input[name=addr]').val();
	console.log(addr);
	var tel=$(this).parent().parent().siblings('.tel').find('input[name=tel]').val();
	console.log(tel);
	var bank=$(this).parent().parent().siblings('.bankaccount').find('input[name=bankaccount]').val();
	console.log(bank);
	
	var test=agree&validlname&validfname&validpass1&validpass&validusn&validemail&validaddr&validpostal&validtel&validbank;
	console.log(test);
	
	if(agree==false){
		var mes='Πρέπει να συμφωνήσετε με τους όρους και τις προϋποθέσεις';
     	$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(mes);	
        $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');

	}
	else if(test==0){
		var mes='Παρακαλώ συμπληρώστε όλα τα πεδία';
     	$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(mes);	
        $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');
	}
	
	else {
		var mes="";
	   $(this).closest('.form-body').siblings('.modal-footer').find('.message').html(mes);
		$.ajax({
			type:"POST",
			data:{
				usn:usn,
				email:email,
				password:password,
				fname:fname,
				lname:lname,
				postal:postal,
				addr:addr,
				tel:tel,
				bank:bank,
				latt:latt,
				lngg:lngg
			},
			url:'/app/parent_signup',
			success: function(){
				window.location.href='https://localhost:8765/app/sign_up_complete.jsp?fv=1'
			}
				
		});	
	}
});

$(document).on('click','.update-btn',function(){
	console.log("ΕΔΩ ΕΙΜΑΙ!");
	var usn = $(this).parent().parent().siblings('.row').find('input[name=username]').val();
	console.log(usn);
	var email = $(this).parent().parent().siblings('.email').find('input[name=email]').val();
	console.log(email);
	var password = $(this).parent().parent().siblings('.row').find('input[name=password]').val();
	console.log(password);
	var password1 = $(this).parent().parent().siblings('.row').find('input[name=password1]').val();
	console.log(password1);
	var fname=$(this).parent().parent().siblings('.row').find('input[name=fname]').val();
	console.log(fname);
	var lname=$(this).parent().parent().siblings('.row').find('input[name=lname]').val();
	console.log(lname);
	var postal=$(this).parent().parent().siblings('.row').find('input[name=postal]').val();
	console.log(postal);
	var addr=$(this).parent().parent().siblings('.row').find('input[name=addr]').val();
	console.log(addr);
	var tel=$(this).parent().parent().siblings('.tel').find('input[name=tel]').val();
	console.log(tel);
	var bank=$(this).parent().parent().siblings('.bankaccount').find('input[name=bankaccount]').val();
	console.log(bank);
	validusn=1;
	if(mymail==1){
		validemail=1;
		console.log(1);
	}
	console.log(password+", "+password1);
	if(password.localeCompare(password1)==0 && password.length>0){
		validpass1=1;
		validpass=1;
		console.log(2);
	}
	if(fname != ""){
		validfname=1;
		console.log(3);
	}
	if(lname!=""){
		validlname=1;
		console.log(4);
	}
	if(postal != ""){
		validpostal =1;
		console.log(5);
	}
	if(addr!=""){
		validaddr=1;
		console.log(6);
	}
	if(tel != "" && tel.length==10){
		validtel=1;
		console.log(7);
	}
	if(bank!="" && bank.length==16){
		validbank=1;
		console.log(8);
	}


	var test=validlname&validfname&validpass1&validpass&validusn&validemail&validaddr&validpostal&validtel&validbank;
	if(test==0){
		var mes='Παρακαλώ συμπληρώστε όλα τα πεδία';
     	$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(mes);	
        $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');
	}
	else {
		var mes="";
		$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(mes);
		$.ajax({
			type:"POST",
			data:{
				usn:usn,
				email:email,
				password:password,
				fname:fname,
				lname:lname,
				postal:postal,
				addr:addr,
				tel:tel,
				bank:bank,
				latt:latt,
				lngg:lngg
			},
			url:'/app/parent_update',
			success: function(){
				window.location.href='https://localhost:8765/app/parent.jsp'
			}
				
		});	
	}
});





