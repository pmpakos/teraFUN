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
latt=0;
lngg=0;
invalid_fields_on_page=0;
valid_fields=0;


$(document).on('blur','.password-validation',function(){
	var content = $(this).val();

	invalidArray = content.match(/[^0-9A-Za-z_ ]/g);
	var valid = true;

	if(content.length == 0){
		valid = false;
		validpass=false;
		//console.log("Enter field ");
		document.getElementById('pass1_error').innerHTML = 'Enter this field';
	}else if(invalidArray != null){
		valid = false;
		validpass=false;
		//invalid_fields_on_page++;
		document.getElementById('pass1_error').innerHTML = 'Enter only letters, digits and underscore';
		//console.log("Enter only Alphabets, digits and underscore");
		//console.log(invalidArray);
		//message = "Enter only Alphabets, digits and underscore";
	}else if(content.length < 8){
		valid = false;
		validpass=false;
	//	invalid_fields_on_page++;
		document.getElementById('pass1_error').innerHTML = 'Password should have at least 8 characters';
		//console.log("Password should have at least 8 characters");
		//message = "Password should have at least 8 characters";
	}else{
		validpass=true;
		document.getElementById('pass1_error').innerHTML = "";
		//valid_fields++;
	}

	//$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(message);

if(valid){
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
	var message = '';
	/*Check for punctuation. See if there is a better way*/
	invalidArray = content.match(/[^0-9A-Za-z_ ]/g);
	var valid = true;

	if(($(this).parent().siblings().find('.password-validation').attr('data-validation') != 'true')){
		valid = false;
		invalid_fields_on_page++;
		document.getElementById('pass2_error').innerHTML = 'First enter a valid password';
		//console.log("First enter a Correct Password");
		
	}else if(content.length == 0){
		valid = false;
		invalid_fields_on_page++;
		//console.log("Enter field ");
		document.getElementById('pass2_error').innerHTML = 'Enter this field';
	}else if(password.length == 0){
		/*If nothing is entered in the password field (redundant)*/
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter Password First ");
		document.getElementById('pass2_error').innerHTML = 'Enter password first';
	}else if(password != content){
		valid = false;
		invalid_fields_on_page++;
		console.log("Passwords Dont match");
		document.getElementById('pass2_error').innerHTML = "Passwords don't match";
	}else{
		document.getElementById('pass2_error').innerHTML = "";
		valid_fields++;
	}

	if(valid){
	
    $(this).css('border','');
    $(this).attr('data-validation',true);
  }else{
    $(this).css('border','1px solid red');
    $(this).attr('data-validation',false);
     }
});

$(document).on('blur','.email-validation',function(){
	var content = $(this).val();
	
	var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	var valid = re.test(content);


	if(content.length == 0){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter Email ");
		document.getElementById('email_error').innerHTML = 'Enter this field';

	}else if(!valid){
		valid = false;
		invalid_fields_on_page++;
		console.log("Please enter a valid Email");
		document.getElementById('email_error').innerHTML = 'Enter a valid email address';
		
	}
	else{
		document.getElementById('email_error').innerHTML = "";
		valid_fields++;
	}
	
	//$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(message);
	
	if(valid){
    $(this).css('border','');
    $(this).attr('data-validation',true);
   // $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','green');
  }else{
    $(this).css('border','1px solid red');
    $(this).attr('data-validation',false);
   // $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');
    
  }
});

$(document).on('blur','.fname-validation',function(){
	var content = $(this).val();
	var re=/^[a-zA-Z\-_ ’'‘αβγδεζηθικλμνξοπρστυφχψωΑΒΓΔΕΖΗΘΙΚΛΜΝΞΟΠΡΣΤΥΦΧΨΩ]$/;

	var valid = re.test(content);	

	if(content.length == 0){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter field ");
		document.getElementById('fname_error').innerHTML = 'Enter this field';
	}else if(!valid){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter only Letters");
		document.getElementById('fname_error').innerHTML = 'First name must contain only letters';
	}else{
		document.getElementById('fname_error').innerHTML = "";
		valid_fields++;
	}

	//$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(message);

if(valid){
    $(this).css('border','');
    $(this).attr('data-validation',true);
    //$(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','green');
  }else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
      //  $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');
  }

});

$(document).on('blur','.lname-validation',function(){
	var content = $(this).val();
	var re=/^[A-Za-z\s]+$/;

	var valid = re.test(content);	

	if(content.length == 0){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter field ");
		document.getElementById('lname_error').innerHTML = 'Enter this field';
	}else if(!valid){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter only Letters");
		document.getElementById('lname_error').innerHTML = 'Last name must contain only letters';
	}else{
		document.getElementById('lname_error').innerHTML = "";
		valid_fields++;
	}

	//$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(message);

if(valid){
    $(this).css('border','');
    $(this).attr('data-validation',true);
    //$(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','green');
  }else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
      //  $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');
  }
});

$(document).on('blur','.addr-validation',function(){
	var content = $(this).val();
	if(content.length == 0){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter field ");
		document.getElementById('addr_error').innerHTML = 'Enter this field';
	}
	else{
		document.getElementById('addr_error').innerHTML = "";
		valid_fields++;
	}
});

$(document).on('blur','.postal-validation',function(){
	var content = $(this).val();
	var address = $(this).parent().siblings().find('.addr-validation').val();
	var message = '';
	var location = address+content;

	var content = $(this).val();
	var re=/\b\d{5}\b/g;
	var valid = re.test(content);
	

	if(content.length == 0){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter postal code ");
		document.getElementById('postal_error').innerHTML = 'Enter this field';
	}else if(address.length==0){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter address first");
		document.getElementById('addr_error').innerHTML = 'Enter address field';
	}
	else if(valid ==0){
		invalid_fields_on_page++;
		document.getElementById('postal_error').innerHTML = 'Postal code must contain 5 digits without space';
		
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
	        	  valid_fields++;
		      }
		      else{
		    	 valid=false;
		        invalid_fields_on_page++;
		  		console.log("Enter valid address and postal code");
		  		document.getElementById('postal_error').innerHTML = 'Your address or postal code is not valid';
		      }
		    });
		  }
		
	}
	
	if(valid){
		$(this).css('border','');
		$(this).attr('data-validation',true);
	}else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
    }

});

$(document).on('blur','.tel-validation',function(){
	var content = $(this).val();
	var re=/\b\d{10}\b/g;
	var valid = re.test(content);
	

	if(content.length == 0){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter postal code ");
		document.getElementById('tel_error').innerHTML = 'Enter this field';
	}else if(valid == 0){
		invalid_fields_on_page++;
		document.getElementById('tel_error').innerHTML = 'Telephone must contain 10 digits without space';
		
	}
	else{
		document.getElementById('tel_error').innerHTML = "";
		valid_fields++;
	}
	
	
	if(valid){
		$(this).css('border','');
		$(this).attr('data-validation',true);
	}else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
    }

});


$(document).on('blur','.bank-validation',function(){
	var content = $(this).val();
	var re=/\b\d{12}\b/g;
	var valid = re.test(content);
	

	if(content.length == 0){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter postal code ");
		document.getElementById('bank_error').innerHTML = 'Enter this field';
	}else if(valid == 0){
		invalid_fields_on_page++;
		document.getElementById('bank_error').innerHTML = 'Please add 12-number yout bank account number without spaces';
		
	}
	else{
		document.getElementById('bank_error').innerHTML = "";
		valid_fields++;
	}
	
	if(valid){
		$(this).css('border','');
		$(this).attr('data-validation',true);
	}else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
    }

});

$(document).on('click','.signup-btn',function(){
	
	var usn = $(this).siblings('.usn').find('input[name=usn]').val();
	console.log(usn);
	var email = $(this).siblings('.email').find('input[name=email]').val();
	console.log(email);
	var password = $(this).siblings('.row').find('input[name=password]').val();
	console.log(password);
	var fname=$(this).siblings('.row').find('input[name=fname]').val();
	console.log(fname);
	var lname=$(this).siblings('.row').find('input[name=lname]').val();
	console.log(lname);
	var postal=$(this).siblings('.row').find('input[name=postal]').val();
	console.log(postal);
	var addr=$(this).siblings('.row').find('input[name=addr]').val();
	console.log(addr);
	var tel=$(this).siblings('.tel').find('input[name=tel]').val();
	console.log(tel);
	var bank=$(this).siblings('.bankaccount').find('input[name=bankaccount]').val();
	console.log(bank);
	
	//var message= " latt =\"" + latt.toString()  + "\" and lngg = \"" + lngg.toString() + "\" and fname = \"" + fname.toString() + "\" and lname = \"" + lname.toString() + "\" and email = \"" + email.toString() + "\" and password = \"" + password.toString() + "\" and usn = \"" + usn.toString() + "\" and postal = \"" + postal.toString() + "\" and addr = \"" + addr.toString() + "\" and tel = \"" + tel.toString() + "\" and account = \"" + bank.toString() + "\" and flag = \"" + invalid_fields_on_page.toString() + "\" ";
	//console.log(message);
	if(valid_fields<10){
		var mes='Please fill all the fields'
     	$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(mes);	
        $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');
	}
	
		
	
	else if(invalid_fields_on_page==0){
		var mes=""
			
       $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');
			$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(mes);
			
	/*$.post('/psignup.txt',{
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
	},response);*/
		
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
				window.location.href='http://localhost:8765/app/parent.jsp'
			}
				
		});	
	}
	});





