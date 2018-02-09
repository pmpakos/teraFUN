valid_distance = 0;
valid_age = 0;
fun=0;
indoor=0;
outdoor=0;
education=0;
team_spirit=0;
sports=0;


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
	invalidArray = content.match(/[-a-zA-Zα-ωΑ-Ω]/g);
	
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
	
	invalidArray = content.match(/[-a-zA-Zα-ωΑ-Ω]/g);
	


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
	if($('#c5').is(":checked")){
		sports=1;
	}
	if($('#c6').is(":checked")){
		team_spirit=1;
	}

	var text_search = document.getElementById("text_search").value;
	console.log("Search: "+text_search);
	
	var date = document.getElementById("inputID").value;
	console.log("Date: "+date);
	
	var e = document.getElementById("sel1");
	var ticket = e.options[e.selectedIndex].value;
	console.log("No. Tickets: "+ticket);


	var age = document.getElementById("age").value;
	console.log("Age: "+age);


	var distance = document.getElementById("distance").value;
	console.log("Distance: "+distance);


	console.log(" Out: "+outdoor+" In: "+indoor+" Fun: "+fun+" Edu: "+education+"Sports: "+ sports+" TeamSpirit: "+team_spirit);

	empty_in1 = (text_search.length>0)? 0: 1;
	empty_in2 = (date.length>0)? 0: 1;
	empty_in4 = (age.length>0)? 0: 1;
	empty_in5 = (distance.length>0)? 0: 1;

	if(empty_in1*empty_in2*empty_in4*empty_in5 > 0){
		alert("Συμπληρώστε πεδίο προς αναζήτηση.");
	}
	else if (valid_age==1){
		
		alert("Μη έγκυρη εισαγωγή πεδίων.");
	}
	else if(valid_distance ==1 ){
		alert("Μη έγκυρη εισαγωγή πεδίων.");
	}
	else{
		window.location.href='http://localhost:8765/app/after_search.jsp?text_search='+text_search+'&date='+date+'&ticket='+ticket+'&age='+age+'&distance='+distance+'&sports='+sports+'&team_spirit='+team_spirit
	}
});
