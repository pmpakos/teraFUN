validname=0;
validcvv=0;
validmonth=0;
validyear=0;
validpoints=0;
agree=0;


$(document).on('blur','.name-validation',function(){
	var content = $(this).val();
	var re=/\b[A-Z]+\s[A-Z]+\b/g;
	validname = re.test(content);

	
	if(content.length == 0){
		validname = 0;
	
		document.getElementById('name_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
	}else if(validname == 0){
		
		document.getElementById('name_error').innerHTML = 'Παρακαλώ εισάγετε το όνομα';
		
	}else{
		document.getElementById('name_error').innerHTML = "";
		
	}


	if(validname){
   		$(this).css('border','');
	    $(this).attr('data-validation',true);
	   
	}else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
	}
});

$(document).on('blur','.month-validation',function(){
	var content = $(this).val();
	var re=/\b([0][0-9]|[1][0-2])\b/g;
	validmonth = re.test(content);
	

	if(content.length == 0){
		validmonth = false;
		
		document.getElementById('month_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
	}else if(validmonth == 0){
		
		document.getElementById('month_error').innerHTML = 'Παρακαλώ εισάγετε τον μήνα';
		
	}
	else{

		document.getElementById('month_error').innerHTML = "";
		
	}
	
	if(validmonth){
		$(this).css('border','');
		$(this).attr('data-validation',true);
	}else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
    }

});

$(document).on('blur','.year-validation',function(){
	var content = $(this).val();
	var re=/\b([1][8-9]|[2-9][0-9])\b/g;
	validyear = re.test(content);
	

	if(content.length == 0){
		validyear = false;
		
		document.getElementById('year_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
	}else if(validyear == 0){
		
		document.getElementById('year_error').innerHTML = 'Παρακαλώ εισάγετε το έτος';
		
	}
	else{

		document.getElementById('year_error').innerHTML = "";
		
	}
	
	if(validyear){
		$(this).css('border','');
		$(this).attr('data-validation',true);
	}else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
    }

});

$(document).on('blur','.cvv-validation',function(){
	var content = $(this).val();
	var re=/\b\d{3}\b/g;
	validcvv = re.test(content);
	

	if(content.length == 0){
		validcvv = false;
		
		document.getElementById('cvv_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
	}else if(validcvv == 0){
		
		document.getElementById('cvv_error').innerHTML = 'Παρακαλώ εισάγετε 3 ψηφία';
		
	}
	else{

		document.getElementById('cvv_error').innerHTML = "";
		
	}
	
	if(validcvv){
		$(this).css('border','');
		$(this).attr('data-validation',true);
	}else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
    }

});

$(document).on('blur','.points-validation',function(){
	var content = $(this).val();
	var re=/\b\d+\b/g;
	validpoints = re.test(content);
	

	if(content.length == 0){
		validpoints = false;
		
		document.getElementById('points_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
	}else if(validpoints == 0){
		
		document.getElementById('points_error').innerHTML = 'Παρακαλώ εισάγετε ακέραιο αριθμό';
		
	}
	else{

		document.getElementById('points_error').innerHTML = "";
		
	}
	
	if(validpoints){
		$(this).css('border','');
		$(this).attr('data-validation',true);
	}else{
    	$(this).css('border','1px solid red');
    	$(this).attr('data-validation',false);
    }

});



$(document).on('click','.final-btn',function(){
	
	
	
	var points=$(this).parent().parent().siblings('.points').find('input[name=points]').val();
	console.log(points);
	
	var test=validname&validmonth&validyear&validcvv&validpoints;
	console.log(test);


	if(test==0){
		var mes='Παρακαλώ συμπληρώστε όλα τα πεδία';
     	$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(mes);	
        $(this).closest('.form-body').siblings('.modal-footer').find('.message').css('color','red');
	}
	
	else {
		//var mes="";

	   //$(this).closest('.form-body').siblings('.modal-footer').find('.message').html(mes);
		$.ajax({
			type:"POST",
			data:{
				points:points
			},
			url:'/app/wallet_update',
			success: function(){
				window.location.href='https://localhost:8765/app/wallet.jsp'
			}
				
		});	
	}
	});