<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="gr.ntua.ece.softeng17b.conf.*" %>
<%@ page import="gr.ntua.ece.softeng17b.FileChecker" %>
<%  int ID = 2; %>
<!DOCTYPE html>
<html>
<head>
       <title>Event | TeraFUN</title>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 

  <!-- OUR JS -->
  <!-- // <script src="js/eventprofile.js"></script> -->
  <!-- OUR CSS -->
  <link rel="stylesheet" href="css/header.css"> 
  <link rel="stylesheet" href="css/stylelogin.css"> 
    <link rel="stylesheet" href="css/eventprofile.css">  
  
  <style>
       .gmap {
        height: 400px;
        width: 50%;
       }
    </style>

    <script>

$(document).ready(function(){
     var ID = <%=ID%>;
     var l1= "<div class='item'> <img src='"     
     var l2="'> </div>"

     var l10= "<div class='item active'><img src='"
     var l20="' alt='Chania'></div>"

      var l3="<li data-target='#myCarousel' data-slide-to='";
    var l4="'></li>";
    var l6= "<li data-target='#myCarousel' data-slide-to='0' class='active'></li>"

    var folder = "/app/images/events/event"+ID;

    var counter=0;
   
  
    // console.log(folder);
    $.ajax({
        url : folder,
        success: function (data) {
            $(data).find("a").attr("href", function (i, val) {
                if( val.match(/\.(jpe?g|png|gif)$/) ) { 
                    if(counter==0){
                        $(".carousel-indicators").append( l6 );

                        $(".carousel-inner").append( l10 + val +l20 );

                    

                    // $(".carousel-inner").append( l7 );


                    }
                    else{
                
                    $(".carousel-indicators").append( l3 + counter +l4 );

                    $(".carousel-inner").append( l1 + val +l2 );
                  
                    }
                    // $("body").append( "<img src='" + val +"'>" );
                    counter++;
                } 
            });
        }
    });

});

</script>


</head>
<body>
    <%@include file="header_company.jsp" %>

                    <div class="row">
                        <br>
                    </br>
                    <br>
                </br>
                    </div>
                  

        <div class="container" id="ko">

<div class="panel panel-register">

            <div class="panel-heading">
                        <br>
                         <h><span data-bind="text:eventname"></span> </h>
                        <!-- <hr class="style1"> -->
                        <br>
                    </br>
                    </div>
                    <div class="panel-body">
                        <div class="col-xs-5 col-sm-9 col-md-9">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 800px;margin: auto"> 
        <!-- ;margin: auto -->
        <!-- Indicators -->
        <ol class="carousel-indicators">

           <!-- <li data-target="#myCarousel" data-slide-to="0" class="active"></li> -->
    
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner role="listbox" style=" width:100%; height: 500px !important;"">
            <!-- <div class="item active">
            <img src="static/nifo1.jpg" alt="Chania">
          </div> -->
          

         
   
        </div>


        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>

                       </div>
                       <div class="col-xs-3 col-sm-3 col-md-3 ">
                        <h3>
                        <ul class="meta-search">


                        <li class="glyphicon glyphicon-calendar"> <span data-bind="text:date"></span></li><div></div>
                        <li class="glyphicon glyphicon-time"> <span data-bind="text:hour"></span></li><div></div>
                        <li class="glyphicon glyphicon-piggy-bank"> <span data-bind="text:cost"></span></li>
                    </ul>
                </h3>
                </div>
                               
                  
         
            
                </div>

            <h2>Map</h2>

            <div id="map" class="gmap"></div>
    
    </div>

    

    <script src="https://code.jquery.com/jquery-2.1.4.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


    <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="./static/bootstrap/js/bootstrap.min.js"></script>
    <script src="./static/knockout-3.4.2.js"></script>

    <% Configuration conf = Configuration.getInstance(); %>

    <script>
        function initMap() {    
            var VM = function(){
                this.id = ko.observable();
                this.eventname = ko.observable(); 
                console.log(this.eventname);
                 this.hour = ko.observable(); 
                 this.address= ko.observable(); 
                 this.date= ko.observable(); 
                 this.cost= ko.observable(); 
                   
            }

            VM.prototype.loadEvent = function() {
                console.log("Loading company...");
                var ID = <%=ID%>;
                var opts = {
                    traditional : true,
                    cache       : false,
                    url         : "./api/event/"+ID,
                    type        : "GET",
                    dataType    : "json"
                };

                return $.ajax(opts); //returns a promise
            }

            var viewModel = new VM();
            console.log("Created VM");            

            viewModel.loadEvent().done(function(eventJson){
                console.log("Done loading companies.");                 
                viewModel.id(eventJson.EventID);
                viewModel.eventname(eventJson.Name);
                viewModel.hour(eventJson.Hour);
                viewModel.address(eventJson.Address);
                viewModel.date(eventJson.DateEvent);
                viewModel.cost(eventJson.Cost);
               
                
                <%  System.out.println(FileChecker.main("/src/main/webapp/images/user_profiles/krataios/")); %>
                var uluru = {lat: eventJson.Latitude, lng: eventJson.Longitude};

                var map = new google.maps.Map(document.getElementById('map'), {
                  zoom: 15,
                  center: uluru
                });
                
                var marker = new google.maps.Marker({
                  position: uluru,
                  map: map
                });

            });

            ko.applyBindings(viewModel);            
            console.log("Applied bindings");
        }
    </script>

    <% String apiKey = conf.getProperty("apiKey"); %>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=<%=apiKey%>&callback=initMap"></script>

    </body>
</html>
