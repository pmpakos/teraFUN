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
	var re=/\b\d{}\b/g;
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
	var description=document.getElementById('description').value;
	console.log(description);
	var test=agree&validpass1&validusn;
	console.log(test); 
	if(test) return true;
	else return false; 
}







