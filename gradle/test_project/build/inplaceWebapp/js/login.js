$(function() {

    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});

validpass=0;
validusn=0;
validpass2=0;
validusn2=0;


$(document).on('blur','.pass-val',function(){
	var content = $(this).val();
	validpass=1;
	
	if(content.length == 0){
		validpass=0;
		document.getElementById('pass_error1').innerHTML = "<span style=\"color:red\">" + "Συμπληρώστε αυτό το πεδίο";
	}
	
if(validpass){
    $(this).css('border','');
    document.getElementById('pass_error1').innerHTML = "";
    
  }else{
    	$(this).css('border','1px solid red');
  }

});

$(document).on('blur','.usn-val',function(){
	var content = $(this).val();
	validusn=1;
	
	if(content.length == 0){
		validusn=0;
		document.getElementById('usn_error1').innerHTML = "<span style=\"color:red\">" + "Συμπληρώστε αυτό το πεδίο";
	}
	
if(validusn){
    $(this).css('border','');
    document.getElementById('usn_error1').innerHTML = "";
    
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

$(document).on('blur','.usn-val2',function(){
	var content = $(this).val();
	validusn2=1;
	
	if(content.length == 0){
		validusn2=0;
		document.getElementById('usn_error2').innerHTML = "<span style=\"color:red\">" + "Συμπληρώστε αυτό το πεδίο";
	}
	
if(validusn2){
	document.getElementById('usn_error2').innerHTML = "";
    $(this).css('border','');
    
  }else{
    	$(this).css('border','1px solid red');
  }

});


$(document).on('click','.btn-loginp',function(){
	
	var usn = $(this).parent().parent().parent().siblings('.usn').find('input[name=usn]').val();
	console.log(usn);
	var password = $(this).parent().parent().parent().siblings('.pass').find('input[name=pass]').val();
	console.log(password);
	var test=validpass&validusn;
	
	console.log(test);
	
	if(test==0){
	
	}
	
	else {
		var mes="";
	   
		$.ajax({
			type:"POST",
			data:{
				usn:usn,	
				password:password,
			},
			url:'/app/parent_login',
			success: function(){
				window.location.href='http://localhost:8765/app/parent.jsp'
			}
				
		});	
	}
	});

$(document).on('click','.btn-loginc',function(){
	var usn = $(this).parent().parent().parent().siblings('.usn1').find('input[name=usn1]').val();
	console.log(usn);
	var password = $(this).parent().parent().parent().siblings('.pass1').find('input[name=pass1]').val();
	console.log(password);
	var test=validpass2&validusn2;
	
	console.log(test);
	
	if(test==0){
	
	}
	
	else {
		var mes="";
	   
		$.ajax({
			type:"POST",
			data:{
				usn:usn,	
				password:password,
			},
			url:'/app/company_login',
			success: function(){
				window.location.href='http://localhost:8765/app/parent.jsp'
			}
				
		});	
	}
	});


