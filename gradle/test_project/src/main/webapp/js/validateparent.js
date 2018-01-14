invalid_fields_on_page=  0;
latt=0;
lngg=0;

/*
$(document).on('blur','.usn-validation',function(){
	var content = $(this).val();
	var message = '';
	/*Check for punctuation. See if there is a better way*/
/*	validArray = content.match(/^\w{10}$/i);
	var valid = true;

	if(content.length == 0){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter field ");
		message = "Enter Your USN"; //made change
	}else if(validArray == null){
		valid = false;
		invalid_fields_on_page++;
		console.log("inalid text input");
		//alert("invalid");
		message = "Invalid USN";//made change
		//console.log(invalidArray);
	}else{
		// No errors!
	}

	$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(message);
	if(valid){
	    $(this).css('border','');
	    $(this).attr('data-validation',true);
	    $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','green');

  }else{
	    $(this).css('border','1px solid red');
	    $(this).attr('data-validation',false);
	    $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');
  }
});*/
$(document).on('blur','.alphanum-validation',function(){
	//".form-group input[type='textbox']"
	var content = $(this).val();
	var message = '';
	/*Check for punctuation. See if there is a better way*/
	invalidArray = content.match(/[^0-9A-Za-z_ ]/g);
	var valid = true;

	if(content.length == 0){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter field ");
		message = "Enter Field";
	}else if(invalidArray != null){
		valid = false;
		invalid_fields_on_page++;
		console.log("inalid text input");
		console.log(invalidArray);
		message = "Inalid text input";
	}else{
		// No errors!
	}

	$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(message);
	 if(valid){
    	 $(this).css('border','');
   		 $(this).attr('data-validation',true);
    	 $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','green');
 	 }else{
	    $(this).css('border','1px solid red');
	    $(this).attr('data-validation',false);
        $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');
  }
});

$(document).on('blur','.password-validation',function(){
	var content = $(this).val();
	var message = '';
	/*Check for punctuation. See if there is a better way*/
	invalidArray = content.match(/[^0-9A-Za-z_ ]/g);
	var valid = true;

	if(content.length == 0){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter field ");
		message = "Enter Field";
	}else if(invalidArray != null){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter only Alphabets, digits and underscore");
		console.log(invalidArray);
		message = "Enter only Alphabets, digits and underscore";
	}else if(content.length < 8){
		valid = false;
		invalid_fields_on_page++;
		console.log("Password should have at least 8 characters");
		message = "Password should have at least 8 characters";
	}else{
		// No errors!
	}

	$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(message);

if(valid){
    $(this).css('border','');
    $(this).attr('data-validation',true);
    $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','green');
  }else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
        $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');
  }

});

$(document).on('blur','.password-confirmation',function(){
	var content = $(this).val();
	var password = $(this).parent().siblings().find('.password-validation').val();
	var message = '';
	/*Check for punctuation. See if there is a better way*/
	invalidArray = content.match(/[^0-9A-Za-z_ ]/g);
	var valid = true;

	/* First, chech if the password entered in the password field is correct*/
	if(($(this).parent().siblings().find('.password-validation').attr('data-validation') != 'true')){
		valid = false;
		invalid_fields_on_page++;
		console.log("First enter a Correct Password");
		message = "First enter a Correct Password";
	}else if(content.length == 0){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter field ");
		message = "Enter field ";
	}else if(password.length == 0){
		/*If nothing is entered in the password field (redundant)*/
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter Password First ");
		message = "Enter Password First ";
	}else if(password != content){
		valid = false;
		invalid_fields_on_page++;
		console.log("Passwords Dont match");
		message = "Passwords Dont match";
	}else{
		// No errors!
	}

		$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(message);

	if(valid){
    $(this).css('border','');
    $(this).attr('data-validation',true);
        $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','green');
  }else{
    $(this).css('border','1px solid red');
    $(this).attr('data-validation',false);
        $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');
  }
});

$(document).on('blur','.email-validation',function(){
	var content = $(this).val();
	var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	var valid = re.test(content);
	var message='';

	if(content.length == 0){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter Email ");
		message="Enter Email";
	/*}else if(invalidArray != null){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter only Alpgabets, digits, @ and underscore");
		console.log(invalidArray);
	/*}else if(content.count("@") != 1){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter valid email");
		console.log(invalidArray);*/
	}else if(!valid){
		valid = false;
		invalid_fields_on_page++;
		console.log("Please enter a valid Email");
		message="Please enter a valid Email";
		
	}
	else{
		// No errors!
	}
	
	$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(message);
	
	if(valid){
    $(this).css('border','');
    $(this).attr('data-validation',true);
    $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','green');
  }else{
    $(this).css('border','1px solid red');
    $(this).attr('data-validation',false);
    $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');
    
  }
});

$(document).on('blur','.name-validation',function(){
	var content = $(this).val();
	var re=/^[A-Za-z\s]+$/;

	var valid = re.test(content);
	var message = '';
	

	if(content.length == 0){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter field ");
		message = "Enter Field";
	}else if(!valid){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter only Letters");
		message = "Enter only Letters";
	}else{
		// No errors!
	}

	$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(message);

if(valid){
    $(this).css('border','');
    $(this).attr('data-validation',true);
    $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','green');
  }else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
        $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');
  }

});

$(document).on('blur','.addr-validation',function(){
	var content = $(this).val();

});

$(document).on('blur','.postal-validation',function(){
	var content = $(this).val();
	var address = $(this).parent().siblings().find('.addr-validation').val();
	var message = '';
	var location = address+content;
	valid=true;
	

	if(content.length == 0){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter postal code ");
		message = "Enter postal code";
	}else if(address.length==0){
		valid = false;
		invalid_fields_on_page++;
		console.log("Enter address first");
		message = "Enter address first";
	}else{
		geocoder = new google.maps.Geocoder();
		if( geocoder ) {
		    geocoder.geocode({ 'address': location }, function (results, status) {
		      if( status == google.maps.GeocoderStatus.OK ) {
		    	  latt=results[0].geometry.location.lat();
	        	  lngg=results[0].geometry.location.lng();
	        	  message= "latt =\"" + latt.toString()  + "\" and lngg = \"" + lngg.toString() + "\" ";
	        	  console.log(message);
		      }
		      else{
		    	 valid=false;
		        invalid_fields_on_page++;
		  		console.log("Enter valid address and postal code");
		  		message = "Enter valid address and postal code";
		      }
		    });
		  }
		
	}
	

	$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(message);

if(valid){
    $(this).css('border','');
    $(this).attr('data-validation',true);
    $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','green');
  }else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
        $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');
  }

});




$(document).on('click','.signup-btn',function(){
	//var category = $(this).siblings('.category').find('select[name=category]').val();
	var usn = $(this).siblings('.usn').find('input[name=usn]').val();

	var email = $(this).siblings('.email').find('input[name=email]').val();
	
	var password = $(this).siblings('.password').find('input[name=password]').val();
	
	var fname=$(this).siblings('.fname').find('input[name=fname]').val();

	var lname=$(this).siblings('.lname').find('input[name=lname]').val();
	
	var postal=$(this).siblings('.postal').find('input[name=postal]').val();

	var addr=$(this).siblings('.addr').find('input[name=addr]').val();

	var tel=$(this).siblings('.tel').find('input[name=tel]').val();
	
	var bank=$(this).siblings('.bankaccount').find('input[name=bankaccount]').val();

	
	var message= " latt =\"" + latt.toString()  + "\" and lngg = \"" + lngg.toString() + "\" and fname = \"" + fname.toString() + "\" and lname = \"" + lname.toString() + "\" and email = \"" + email.toString() + "\" and password = \"" + password.toString() + "\" and usn = \"" + usn.toString() + "\" and postal = \"" + postal.toString() + "\" and addr = \"" + addr.toString() + "\" and tel = \"" + tel.toString() + "\" and account = \"" + bank.toString() + "\" and flag = \"" + invalid_fields_on_page.toString() + "\" ";
	console.log(message);
	
	
	if(invalid_fields_on_page==0){
	$.post('/SignUpParent.txt',{
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
	},response);

	function response(res){
		//alert(res);
		/*var result = JSON.parse(res);
		console.log("message : " + result.message + result.success);
		$('#signup-message').html(result.message);
		if(result.success){
			$('#signup-message').css('color','green');
		}else{
			$('#signup-message').css('color','red');
		}*/
		//$('#signup-message').html(result.message);
		return ;	
	}
	}
	});





