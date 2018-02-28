validcompname=0;
validafm=0;
mymail2=1;
validbank=0;

$(document).on('blur','.compname-validation',function(){
	var content = $(this).val();
	
	
	validcompname=1;

	if(content.length == 0){
		validcompname = 0;
	
		document.getElementById('compname_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
	}else{
		document.getElementById('compname_error').innerHTML = "";
		
	}


	if(validcompname){
   		$(this).css('border','');
	    $(this).attr('data-validation',true);
	   
	}else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
	}
});

$(document).on('blur','.afm-validation',function(){
	var content = $(this).val();
		var re=/\b\d{9}\b/g;

	validafm = re.test(content);
	

	if(content.length == 0){
		validafm = false;
		
		document.getElementById('afm_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
	}else if(validafm == 0 || (content.length!=9)){
		
		document.getElementById('afm_error').innerHTML = 'Παρακαλώ εισάγετε το 9ψήφιο ΑΦΜ της εταιρίας χωρίς κενά';
		
	}
	else{

		document.getElementById('afm_error').innerHTML = "";
		
	}
	
	if(validafm){
		$(this).css('border','');
		$(this).attr('data-validation',true);
	}else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
    }

});

$(document).on('blur','.bankcomp-validation',function(){
	var content = $(this).val();
	//var re=/\b\d{16}\b/g;
	//validbank = re.test(content);
	validbank=1;
	

	if(content.length == 0){
		validbank = false;
		
		document.getElementById('bank_errorcomp').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
	}
	else{

		document.getElementById('bank_errorcomp').innerHTML = "";
		
	}
	
	if(validbank){
		$(this).css('border','');
		$(this).attr('data-validation',true);
	}else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
    }

});



$(document).on('blur','.usn-comp-validation',function(){
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
			url:'/app/company_check_username',
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




$(document).on('blur','.email-comp-validation',function(){
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
			url:'/app/company_check_email',
			success: function(email_check){
				console.log("Result is: "+email_check);
				if (email_check == "true"){
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


$(document).on('blur','.curr-email-comp-validation',function(){
	
	var content = $(this).val();
	var usn1 = $(this).parent().siblings('.row').find('input[name=username]').val();
	validemail=2;
	var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	validemail = re.test(content);


	if(content.length == 0){
		validemail = 0;
		mymail2=0;
		document.getElementById('email_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';

	}else if(!validemail){
		validemail = 0;
		mymail2=0;
		document.getElementById('email_error').innerHTML = 'Συμπληρώστε μία έγκυρη διεύθυνση ηλεκτρονικού ταχυδρομίου';
		
	}
	else{
		$.ajax({
			type:"POST",
			data:{
				email:content,},
			url:'/app/company_check_email',
			success: function(email_check){
				console.log("Result is: "+email_check);
				if (email_check == usn1){
					mymail2=1;
				}
				else if(email_check.length >0){
					mymail2=0;
					validemail=0;
					document.getElementById('email_error').innerHTML = "To email αυτό χρησιμοποιείται ήδη";
				}
				else{
					mymail2=1;
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







function validatecompany(){

	var usn=document.getElementById('usn').value;
	console.log(usn);
	var password = document.getElementById('pass').value;
	console.log(password);

	var email = document.getElementById('email').value;
	console.log(email);
	var postal = document.getElementById('postal').value;
	console.log(postal);
	var addr = document.getElementById('addr').value;
	console.log(addr);
	var afm = document.getElementById('afm').value;
	console.log(afm);
	var bank=document.getElementById('bank').value;

	var tel = document.getElementById('tel').value;
	console.log(tel);
	var webpage = document.getElementById('webpage').value;
	console.log(webpage);
	var compname = document.getElementById('compname').value;
	console.log(compname);
	var description=document.getElementById('description').value;
	console.log(description);
	var fileflag=document.getElementById('file').value;
	console.log(fileflag);
	if(fileflag){
		var filename=document.getElementById('file').files[0].name;
		console.log(filename);
	}
	else{
		//document.getElementById('total_error').innerHTML = 'Πρέπει να ανεβάσετε μία φωτογραφία';
		//return false;
	}
	//var filename=document.getElementById('file').files[0].name;
	//console.log(filename);

	 var test=agree&validbank&validcompname&validpass1&validpass&validusn&validemail&validaddr&validpostal&validtel&validafm;
	 console.log(test);
	// var test=agree&validusn;
	// console.log(test); 
	if(test){
		document.getElementById('total_error').innerHTML = "";
		$.ajax({
			type:"POST",
			data:{
				usn:usn,
				email:email,
				password:password,
				compname:compname,
				webpage: webpage,
				postal:postal,
				addr:addr,
				tel:tel,
				afm:afm,
				bank:bank,
				latt:latt,
				lngg:lngg,
				description:description,
				filename:filename
			},
			// async: false,
			url:'/app/company_signup',
			success: function(){
				console.log("insertion done");
				// sync=1;	
			}
				
		});	
		
		// console.log("synchronous ajax");
		return true;
		
	} 
	else{

		document.getElementById('total_error').innerHTML = 'Πρέπει να συμπληρώσετε τα όλα πεδία και να συμφωνήσετε με τους όρους και τις προϋποθέσεις';
		return false; 	
	} 
}

function updatecompany(){
// $(document).on('click','.btn-update1',function(){
	var usn=document.getElementById('usn').value;
	console.log(usn);
	var password = document.getElementById('pass').value;
	console.log(password);
	var password1 = document.getElementById('pass1').value;
	console.log(password1);
	
	var email = document.getElementById('email').value;
	console.log(email);
	var postal = document.getElementById('postal').value;
	console.log(postal);
	var addr = document.getElementById('addr').value;
	console.log(addr);
	var afm = document.getElementById('afm').value;
	console.log(afm);
	var bank=document.getElementById('bank').value;

	var tel = document.getElementById('tel').value;
	console.log(tel);
	var webpage = document.getElementById('webpage').value;
	console.log(webpage);
	var compname = document.getElementById('compname').value;
	console.log(compname);
	var description=document.getElementById('description').value;
	console.log(description);
	var fileflag=document.getElementById('file').value;
	console.log(fileflag);

	// if(fileflag){
		// var filename=document.getElementById('file').files[0].name;
	// 	console.log(filename);
	// }
	// else{
	// 	document.getElementById('total_error').innerHTML = 'Πρέπει να ανεβάσετε μία φωτογραφία';
	// 	return false;
	// }
	var filename="nothing";
	if(document.getElementById('file').files[0]){
		filename=document.getElementById('file').files[0].name;
	}
	
	console.log(filename);

	if(mymail2==1){
		validemail=1;
		console.log(1);
	}


	if(password.localeCompare(password1)==0 && password.length>0){
		validpass1=1;
		validpass=1;
		console.log(2);
	}
	if(compname != ""){
		validcompname=1;
		console.log(3);
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
	if(bank!="" && bank.length<=32){
		validbank=1;
		console.log(8);
	}
	if(latt==0 && lngg==0){
		console.log("same location");
		latt=document.getElementById('lat').value;
		lngg=document.getElementById('lng').value;
		console.log(latt);
		console.log(lngg);


	}

	 var test=validbank&validcompname&validpass1&validpass&validemail&validaddr&validpostal;
	 console.log(validbank);
	 console.log(validcompname);
	 console.log(validpass1);
	 console.log(validpass);
	 console.log(validemail);
	 console.log(validaddr);
	 console.log(validpostal);
	// var test=agree&validusn;
	// console.log(test); 
	if(test){
		document.getElementById('total_error').innerHTML = "";
		$.ajax({
			type:"POST",
			data:{
				usn:usn,
				email:email,
				password:password,
				compname:compname,
				webpage: webpage,
				postal:postal,
				addr:addr,
				tel:tel,
				afm:afm,
				bank:bank,
				latt:latt,
				lngg:lngg,
				description:description,
				filename:filename
			},
			// async: false,
			url:'/app/company_update',
			success: function(){
				console.log("insertion done");
				window.location.href='https://localhost:8765/app/home_company.jsp'


				// sync=1;	
			}
				
		});	
		
		// console.log("synchronous ajax");
		return false;
		
	} 
	else{

		document.getElementById('total_error').innerHTML = 'Πρέπει να συμπληρώσετε όλα τα πεδία και να συμφωνήσετε με τους όρους και τις προϋποθέσεις';
		return false; 	
	} 
}
