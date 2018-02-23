validname=0;
validdesc=0;
validdate=0;
validprice=0;
validmin=0;
validmax=0;
validcap=0;

$(document).on('blur','.eventname-validation',function(){
  var content = $(this).val();
  validname=1;

  if(content.length == 0){
    validname = 0;
  
    document.getElementById('eventname_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
  }else{
    document.getElementById('eventname_error').innerHTML = "";
    
  }

  if(validname){
      $(this).css('border','');
     
  }else{
      $(this).css('border','1px solid red');
  }
});

$(document).on('blur','.price-validation',function(){
  var content = $(this).val();
  
  var re=/^\d+$/;
  validprice = re.test(content);
  

  if(content.length == 0){
    validprice = 0;
  
    document.getElementById('price_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
  }else if(validprice==0){

    document.getElementById('price_error').innerHTML = 'Οι πόντοι είναι ακέραιος αριθμός';
  }
  else{
    document.getElementById('price_error').innerHTML = "";
    
  }

  if(validprice){
      $(this).css('border','');
     
  }else{
      $(this).css('border','1px solid red');
  }
});

$(document).on('blur','.min-validation',function(){
  var content = $(this).val();
  
  var re=/^\d+$/;
  validmin= re.test(content);
  

  if(content.length == 0){
    validmin = 0;
  
    document.getElementById('min_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
  }else if(validmin==0){

    document.getElementById('min_error').innerHTML = 'Εισάγετε αριθμό';
  }
  else{
    document.getElementById('min_error').innerHTML = "";
    
  }

  if(validmin){
      $(this).css('border','');
     
  }else{
      $(this).css('border','1px solid red');
  }
});

$(document).on('blur','.max-validation',function(){
  var content = $(this).val();
  
  var re=/^\d+$/;
  validmax= re.test(content);
  

  if(content.length == 0){
    validmax = 0;
  
    document.getElementById('max_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
  }else if(validmax==0){

    document.getElementById('max_error').innerHTML = 'Εισάγετε αριθμό';
  }
  else{
    document.getElementById('max_error').innerHTML = "";
    
  }

  if(validmax){
      $(this).css('border','');
     
  }else{
      $(this).css('border','1px solid red');
  }
});

$(document).on('blur','.cap-validation',function(){
  var content = $(this).val();
  
  var re=/^\d+$/;
  validcap= re.test(content);
  

  if(content.length == 0){
    validcap = 0;
  
    document.getElementById('cap_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
  }else if(validcap==0){

    document.getElementById('cap_error').innerHTML = 'Εισάγετε αριθμό';
  }
  else{
    document.getElementById('cap_error').innerHTML = "";
    
  }

  if(validcap){
      $(this).css('border','');
     
  }else{
      $(this).css('border','1px solid red');
  }
});

$(document).on('blur','.desc-validation',function(){
  var content = $(this).val();
  validdesc=1;

  if(content.length == 0){
    validdesc = 0;
    document.getElementById('desc_error').innerHTML = 'Συμπληρώστε αυτό το πεδίο';
  }else{
    document.getElementById('desc_error').innerHTML = "";  
  }

  if(validdesc){
      $(this).css('border','');
     
  }else{
      $(this).css('border','1px solid red');
  }
});

jQuery().ready(function(){ 


    // validate form on keyup and submit
    var v = jQuery("#basicform").validate({
      rules: {
        uname: {
          required: true,
          minlength: 2,
          maxlength: 16
        },
        uemail: {
          required: true,
          minlength: 2,
          email: true,
          maxlength: 100,
        },
        upass1: {
          required: true,
          minlength: 6,
          maxlength: 15,
        },
        upass2: {
          required: true,
          minlength: 6,
          equalTo: "#upass1",
        }

      },
      errorElement: "span",
      errorClass: "help-inline-error",
    });

    $(".open1").click(function() {
      if (v.form()) {
        $(".frm").hide("fast");
        $("#sf2").show("slow");
      }
    });

    $(".open2").click(function() {
      if (v.form()) {
        $(".frm").hide("fast");
        $("#sf3").show("slow");
      }
    });
    
    // $(".open3").click(function() {
    //   if (v.form()) {
    //     $("#loader").show();
    //      setTimeout(function(){
    //        $("#basicform").html('<h2>Thanks for your time.</h2>');
    //      }, 1000);
    //     return false;
    //   }
    // });

 $(".open3").click(function() {
      var name=document.getElementById('eventname').value;
      console.log(name);
      var desc = document.getElementById('description').value;
      console.log(desc);
      var date = document.getElementById('inputID').value;
      console.log(date);
      var postal = document.getElementById('postal').value;
      console.log(postal);
      var addr = document.getElementById('addr').value;
      console.log(addr);
      var start = document.getElementById('sel1').value;
      console.log(start);
      var stop=document.getElementById('sel2').value;
      console.log(stop);
      var price = document.getElementById('price').value;
      console.log(price);
      var offer = document.getElementById('sel3').value;
      console.log(offer);
      var min = document.getElementById('min').value;
      console.log(min);
      var max = document.getElementById('max').value;
      console.log(max);
      var cap = document.getElementById('cap').value;
      console.log(cap);
      var out = document.getElementById('c1').checked;
      console.log(out);
      var ind = document.getElementById('c2').checked;
      console.log(ind);
      var fun = document.getElementById('c3').checked;
      console.log(fun);
       var lea = document.getElementById('c4').checked;
      console.log(lea);
      var ath = document.getElementById('c5').checked;
      console.log(ath);
      var team = document.getElementById('c6').checked;
      console.log(team);

   var test=validname&validdesc&validaddr&validpostal&validprice&validmax&validmin&validcap&validdate;
   console.log(test);
  // var test=agree&validusn;
  // console.log(test); 
  if(test){
    document.getElementById('total_error1').innerHTML = "";
    $.ajax({
      type:"POST",
      data:{
        name:name,
        desc:desc,
        date:date,
        postal:postal,
        addr:addr,
        start:start,
        stop: stop,
        price:price,
        offer:offer,
        min:min,
        max:max,
        cap:cap,
        out:out,
        ind:ind,
        fun:fun,
        lea:lea,
        ath:ath,
        team:team,
        latt:latt,
        lngg:lngg,
      },
      url:'/app/create_event',
      success: function(){
        console.log("insertion done");
        //SET ID = ID OF EVENT 
      }
        
    }); 
    
    if (v.form()) {
        $(".frm").hide("fast");
        $("#sf4").show("slow");
      }}

    
  } 
  else{

    document.getElementById('total_error1').innerHTML = 'Πρέπει να συμπληρώσετε τα όλα πεδία';
   
  } 
     
    });
    
    $(".back2").click(function() {
      $(".frm").hide("fast");
      $("#sf1").show("slow");
    });

    $(".back3").click(function() {
      $(".frm").hide("fast");
      $("#sf2").show("slow");
    });

  });

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


function checknumber(){
  // var number=4;
 var $fileUpload = $("input[type='file']");
 var number=parseInt($fileUpload.get(0).files.length);
  console.log(number);
        if (number==0){
          document.getElementById('total_error').innerHTML = 'Πρέπει να ανεβάσετε μία φωτογραφία';
      return false;
        }
        else if (number>5){
          document.getElementById('total_error').innerHTML = 'Μπορείτε να ανεβάσετε το μέχρι 5 φωτογραφίες';
      return false;
    }
    else{
      document.getElementById('total_error').innerHTML = '';
      return false;
    }
}



