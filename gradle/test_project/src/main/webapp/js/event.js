jQuery().ready(function() {

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
      if (v.form()) {
        $(".frm").hide("fast");
        $("#sf4").show("slow");
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