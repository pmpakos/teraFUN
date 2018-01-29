flag=0
flag = localStorage.getItem("flag");
window.onload = console.log(flag);

// <span class="labelNotification" style="display:none">Your Warning Text</span>

$(document).ready(function(){
	if( flag==1) {
		document.getElementById('email').style.display='block'
		document.getElementById('logina-submit1').style.display='block'
	} else if (flag==2) {
		document.getElementById('email-comp').style.display='block'
		document.getElementById('logina-submit2').style.display='block'
	}    
	else{
		document.getElementById('errorrr').style.display='block'
	}
});

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
				if (email_check == "true"){
					document.getElementById('email_error').innerHTML = "";
					validemail=1;
					document.getElementById('email_error').innerHTML = "<span style=\"color:green\">" + "Έγκυρο email" + "</span>";
					//document.getElementById('email-border').style.borderColor = "green";
				}
				else{
					validemail=0;
					document.getElementById('email_error').innerHTML = "To email αυτό δεν χρησιμοποιείται στην teraFUN";
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
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

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
					document.getElementById('email_error').innerHTML = "";
					validemail=1;
					document.getElementById('email_error').innerHTML = "<span style=\"color:green\">" + "Έγκυρο email" + "</span>";
					//document.getElementById('email-border').style.borderColor = "green";
				}
				else{
					validemail=0;
					document.getElementById('email_error').innerHTML = "To email αυτό δεν χρησιμοποιείται στην teraFUN";
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




$(document).on('click','.btn-forgot1',function(){
	var email = $(this).parent().parent().parent().siblings('.email').find('input[name=email1]').val();
	console.log(email);
	var test=validemail;
	
	
	console.log("Valid email?: "+validemail);
	if(test==0){
	}
	else {
		console.log("Eftasa edw ");
		$.ajax({
			type:"POST",
			data:{
				email:email,	
				flag:1,
			},
			url:'/app/forgot_password',
			success: function(result){
				if(result == "0"){
					document.getElementById('usn_error0').innerHTML = "<span style=\"color:red\">" + "To username ή ο κωδικός δεν είναι έγκυρος" + "</span>";
					document.getElementById("usn0").style.borderColor = "red";
					document.getElementById("pass0").value = '';
				}
				else{
					//window.location.href='http://localhost:8765/app/index.jsp'
				}
				
			}
				
		});	
	}
});


$(document).on('click','.btn-forgot2',function(){
	var email = $(this).parent().parent().parent().siblings('.email').find('input[name=email2]').val();
	console.log(email);
	var test=validemail;
	
	
	console.log("Valid email?: "+validemail);
	if(test==0){
	}
	else {
		console.log("Eftasa edw ");
		$.ajax({
			type:"POST",
			data:{
				email:email,	
				flag:2,
			},
			url:'/app/forgot_password',
			success: function(result){
				if(result == "0"){
					document.getElementById('usn_error0').innerHTML = "<span style=\"color:red\">" + "To username ή ο κωδικός δεν είναι έγκυρος" + "</span>";
					document.getElementById("usn0").style.borderColor = "red";
					document.getElementById("pass0").value = '';
				}
				else{
					//window.location.href='http://localhost:8765/app/index.jsp'
				}
				
			}
				
		});	
	}
});