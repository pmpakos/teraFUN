valid_distance = 0;
valid_age = 0;
fun=0;
indoor=0;
outdoor=0;
education=0;



$(function () {

	$('#datetimepicker1').datetimepicker({ format: 'DD/MM/YYYY', minDate:  moment().millisecond(0).second(0).minute(0).hour(0)});
});
		
$(document).on('click','.search_date-validation',function(event){
	event.preventDefault();
    $('#datetimepicker1').data("DateTimePicker").show();
    document.getElementById('inputID').readOnly = true;
});

$(document).on('blur','.search_date-validation',function(event){

    document.getElementById('inputID').readOnly = false;
});

$(document).on('click','.clear-button',function(){

	$('#text_search').val('');
	document.getElementById('inputID').readOnly = false;
	$('#inputID').val('');
	$('#age').val('');
	$('#distance').val('');
	$('select').prop('selectedIndex', 0);
	document.getElementById("c1").checked = false;
	document.getElementById("c2").checked = false;
	document.getElementById("c3").checked = false;
	document.getElementById("c4").checked = false;
	fun=0;
	indoor=0;
	outdoor=0;
	education=0;

});

$(document).on('blur','.distance',function(event){
	var content = $(this).val();
	invalidArray = content.match(/^[-a-zA-Zα-ωΑ-Ω]/g);
	
	if(invalidArray != null){
		valid_distance = 1;
		alert("Μη έγκυρη απόσταση!");
		$('#distance').val('');
	}

	else if(content>70){
		valid_distance=1;
		alert("H μέγιστη δυνατή απόσταση είναι 70 χλμ.!");
		$('#distance').val('');
	}

});



$(document).on('blur','.age',function(event){
	var content = $(this).val();
	invalidArray = content.match(/^[-a-zA-Zα-ωΑ-Ω]/g);
	
	if(invalidArray != null){
		valid_age = 1;
		alert("Μη έγκυρη ηλικία!");
		$('#age').val('');
	}

});




$(document).on('click','.search-button',function(){
	if($('#c1').is(":checked")){
		outdoor=1;
	}
	if($('#c2').is(":checked")){
		indoor=1;
	}
	if($('#c3').is(":checked")){
		fun=1;
	}
	if($('#c4').is(":checked")){
		education=1;
	}
	
	console.log("Out: "+outdoor+" In: "+indoor+" Fun: "+fun+" Edu: "+education);

	if(valid_age==1 || valid_distance==1){

	}
});
