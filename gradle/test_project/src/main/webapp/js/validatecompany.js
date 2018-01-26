validcompname=0;
validafm=0;

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
	}else if(validafm == 0){
		
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

function validatecompany(){

	var usn=document.getElementById('usn').value;
	console.log(usn);
	var password = document.getElementById('pass').value;
	console.log(password);

	var email = document.getElementById('email').value;
	var postal = document.getElementById('pass').value;
	var addr = document.getElementById('pass').value;
	var afm = document.getElementById('email').value;
	var tel = document.getElementById('pass').value;
	var webpage = document.getElementById('pass').value;
	var compname = document.getElementById('pass').value;
	var description=document.getElementById('description').value;
	console.log(description);

	var test=agree&validcompname&validpass1&validpass&validusn&validemail&validaddr&validpostal&validtel&validafm;
	console.log(test);

	console.log(test); 
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
				latt:latt,
				lngg:lngg,
				description:description
			},
			url:'/app/company_signup',

			success: function(){
				
			}
				
		});	
		return true;
	} 
	else{

		document.getElementById('total_error').innerHTML = 'Πρέπει να συμπληρώσετε τα υποχρεωτικά πεδία και να συμφωνήσετε με τους όρους και τις προϋποθέσεις';
		return false; 	
	} 
}







