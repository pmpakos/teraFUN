$(function() {
    $('#login-parent-link').click(function(e) {
		$("#login-parent-form").delay(100).fadeIn(100);
 		$("#login-company-form").fadeOut(100);
		$('#login-company-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
    $('#login-company-link').click(function(e) {
		$("#login-company-form").delay(100).fadeIn(100);
 		$("#login-parent-form").fadeOut(100);
		$('#login-parent-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});

validpass0=0;
validusn0=0;

validpass1=0;
validusn1=0;

validpass2=0;
validusn2=0;


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


$(document).on('blur','.pass-val0',function(){
	var content = $(this).val();
	validpass0=1;
	
	if(content.length == 0){
		validpass0=0;
		document.getElementById('pass_error0').innerHTML = "<span style=\"color:red\">" + "Συμπληρώστε αυτό το πεδίο";
	}
	
	if(validpass0){
	    $(this).css('border','');
	    document.getElementById('pass_error0').innerHTML = "";
	}else{
		$(this).css('border','1px solid red');
	}

});

$(document).on('blur','.pass-val1',function(){
	var content = $(this).val();
	validpass1=1;
	
	if(content.length == 0){
		validpass1=0;
		document.getElementById('pass_error1').innerHTML = "<span style=\"color:red\">" + "Συμπληρώστε αυτό το πεδίο";
	}
	
	if(validpass1){
	    $(this).css('border','');
	    document.getElementById('pass_error1').innerHTML = "";
	}else{
		$(this).css('border','1px solid red');
	}

});

$(document).on('blur','.pass-val2',function(){
	var content = $(this).val();
	validpass2=1;
	
	if(content.length == 0){
		validpass2=0;
		document.getElementById('pass_error2').innerHTML = "<span style=\"color:red\">" + "Συμπληρώστε αυτό το πεδίο";
	}
	
	if(validpass2){
	    $(this).css('border','');
	    document.getElementById('pass_error2').innerHTML = "";
	}else{
		$(this).css('border','1px solid red');
	}

});

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

$(document).on('blur','.usn-val0',function(){
	var content = $(this).val();
	validusn0=1;

	if(content.length == 0){
		validusn0=0;
		document.getElementById('usn_error0').innerHTML = "<span style=\"color:red\">" + "Συμπληρώστε αυτό το πεδίο";
	}
	
	if(validusn0){
		$(this).css('border','');
		document.getElementById('usn_error0').innerHTML = "";
	}else{
		$(this).css('border','1px solid red');
	}
});

$(document).on('blur','.usn-val1',function(){
	var content = $(this).val();
	validusn1=1;

	if(content.length == 0){
		validusn1=0;
		document.getElementById('usn_error1').innerHTML = "<span style=\"color:red\">" + "Συμπληρώστε αυτό το πεδίο";
	}
	
	if(validusn1){
		$(this).css('border','');
		document.getElementById('usn_error1').innerHTML = "";
	}else{
		$(this).css('border','1px solid red');
	}
});

$(document).on('blur','.usn-val2',function(){
	var content = $(this).val();
	validusn2=1;

	if(content.length == 0){
		validusn2=0;
		document.getElementById('usn_error2').innerHTML = "<span style=\"color:red\">" + "Συμπληρώστε αυτό το πεδίο";
	}
	
	if(validusn2){
		$(this).css('border','');
		document.getElementById('usn_error2').innerHTML = "";
	}else{
		$(this).css('border','1px solid red');
	}
});


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


$(document).on('click','.btn-logina',function(){
	var usn = $(this).parent().parent().parent().siblings('.usn0').find('input[name=usn0]').val();
	console.log(usn);
	var password = $(this).parent().parent().parent().siblings('.pass0').find('input[name=pass0]').val();
	console.log(password);
	var test=validpass0&validusn0;
	
	
	console.log("Valid password?: "+validpass0+" | Valid Username?: "+validusn0);
	if(test==0){
	}
	else {
		console.log("Eftasa edw ");
		$.ajax({
			type:"POST",
			data:{
				usn:usn,	
				password:password,
				flag:0
			},
			url:'/app/login',
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


$(document).on('click','.btn-loginp',function(){
	var usn = $(this).parent().parent().parent().siblings('.usn1').find('input[name=usn1]').val();
	console.log(usn);
	var password = $(this).parent().parent().parent().siblings('.pass1').find('input[name=pass1]').val();
	console.log(password);
	var test=validpass1&validusn1;
	
	
	console.log("Valid password?: "+validpass1+" | Valid Username?: "+validusn1);
	if(test==0){
	}
	else {
		console.log("Eftasa edw ");
		$.ajax({
			type:"POST",
			data:{
				usn:usn,	
				password:password,
				flag:1
			},
			url:'/app/login',
			success: function(result){
				if(result == "0"){
					document.getElementById('usn_error1').innerHTML = "<span style=\"color:red\">" + "To username ή ο κωδικός δεν είναι έγκυρος" + "</span>";
					document.getElementById("usn1").style.borderColor = "red";
					document.getElementById("pass1").value = '';
					
					//reset the company form in case of parent submit
					document.getElementById("usn2").value = '';
					document.getElementById('pass2').value = "";
				}
				else{
					//window.location.href='http://localhost:8765/app/index.jsp'
				}
				
			}
				
		});	
	}
});


$(document).on('click','.btn-loginc',function(){
	var usn = $(this).parent().parent().parent().siblings('.usn2').find('input[name=usn2]').val();
	console.log(usn);
	var password = $(this).parent().parent().parent().siblings('.pass2').find('input[name=pass2]').val();
	console.log(password);
	var test=validpass2&validusn2;
	
	
	console.log("Valid password?: "+validpass2+" | Valid Username?: "+validusn2);
	if(test==0){
	}
	else {
		console.log("Eftasa edw ");
		$.ajax({
			type:"POST",
			data:{
				usn:usn,	
				password:password,
				flag:2
			},
			url:'/app/login',
			success: function(result){
				if(result == "0"){
					document.getElementById('usn_error2').innerHTML = "<span style=\"color:red\">" + "To username ή ο κωδικός δεν είναι έγκυρος" + "</span>";
					document.getElementById("usn2").style.borderColor = "red";
					document.getElementById("pass2").value = '';
					
					//reset the company form in case of parent submit
					document.getElementById("usn1").value = '';
					document.getElementById('pass1').value = "";
				}
				else{
					//window.location.href='http://localhost:8765/app/index.jsp'
				}
				
			}
				
		});	
	}
});

/////////////////////


$(document).on('click','.fpass1',function(){
	console.log(1);
	localStorage.setItem("flag",1);

});

$(document).on('click','.fpass2',function(){
	console.log(2);
	localStorage.setItem("flag",2);
});