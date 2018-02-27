<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="gr.ntua.ece.softeng17b.conf.*" %>
<%@ page import="gr.ntua.ece.softeng17b.FileChecker" %>
<%
  String id2;
  String ID= request.getParameter("idevent");
  int show=0,notshow=0;
    if(session.getAttribute("id") == null || session.getAttribute("id").equals("")){
        id2 ="";
        notshow=1;

    }
    else{
        id2 = (String)session.getAttribute("id");
        show=1;
    }
    %>
<!DOCTYPE html>
<html>
<head>
       <title>Event | TeraFUN</title>


       <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 

  <%@include file="header.jsp" %>

  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

  <!-- OUR JS -->
  <!-- // <script src="js/eventprofile.js"></script> -->
  <!-- OUR CSS -->
  <link rel="stylesheet" href="css/header.css"> 
  <link rel="stylesheet" href="css/stylelogin.css"> 
    <link rel="stylesheet" href="css/eventprofile.css"> 
  

    <!-- Fonts -->
 
  <link href="https://fonts.googleapis.com/css?family=Didact+Gothic" rel="stylesheet">
 

  <link href="https://fonts.googleapis.com/css?family=GFS+Neohellenic:400i" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=GFS+Neohellenic" rel="stylesheet">
  
  <style>


.body1 {
  background: url('static/balls.jpg');
  background-color: #cccccc;
  display: block;
  height: 100%;
  width: 100%;
  left: 0;
  position: fixed;
  right: 0;
  z-index: -1;
   top: 0;

  background-size:cover;
    -webkit-filter: blur(5px);
    -moz-filter: blur(5px);
    -o-filter: blur(5px);
    -ms-filter: blur(5px);
    filter: blur(5px);   
}
.header{
  font-size:40px;

  }
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
    

                    <div class="row">
                        <br>
                    </br>
                    <br>
                </br>
                    </div>
                  

        <div class="container" id="ko">

<div class="panel panel-login">

  <div class="panel-heading">

    <h2><span data-bind="text:eventname"></span> </h2>
            
            </div>

        
        <div class="panel-body">
          <!-- <div class="row"> -->
            <!-- <div><p5 text-align="left">της εταιρίας τάδε</p5></div> -->
            <div>
            <p5>Περιγραφή Εκδήλωσης:</p5>
            </div>
             <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 excerpet">
              
              <div><br></div>
              <ps data-bind="text:description"></ps>   
              <div><br></div>                     
              <!-- <button type="button" class="btn btn-info btn-sm" style="vertical-align:bottom;">Μάθε Περισσότερα</button>
              <button id="mybtn" href="#myModal" data-bind="visible: $parent.showMe, value: id" type="button" class="btn btn-success" style="float: right;" data-toggle="modal" onclick="set(this.value)">Κλείσε θέση τώρα!</button>
              <button onclick="location.href = 'sign_up_parent.jsp';" data-bind="visible: $parent.notShow" type="button" class="btn btn-warning" style="float: right;" data-toggle="tooltip" title="Γίνε μέλος για να κάνεις κράτηση!">Κάνε εγγραφή τώρα!</button> -->
          </div>
           <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 excerpet">
                                
                                           
                            
                                <button id="mybtn" href="#myModal" data-bind="visible: show" type="button" class="btn btn-success" style="float: right;" data-toggle="modal" onclick="set(this.value)">Κλείσε θέση τώρα!</button>
                                <button onclick="location.href = 'sign_up_parent.jsp';" data-bind="visible: notshow" type="button" class="btn btn-warning" style="float: right;" data-toggle="tooltip" title="Γίνε μέλος για να κάνεις κράτηση!">Κάνε εγγραφή τώρα!</button>

                                <!-- data-bind="visible: $parent.notShow" -->
                                 <!-- data-bind="visible: $parent.showMe, value: id" -->
                            </div>
          
            <div class="col-xs-12 col-sm-12 col-md-12">
        <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 800px;margin: auto"> 

        <ol class="carousel-indicators">

          
    
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" align="center" role="listbox" style=" width:100%; height: 500px !important;">
            
   
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
   
      <div class="row">
                        <br>
                    </br>
                   
                  
                
      </div>
       </div>
       <div class="row" data-bind="visible:offer">
       <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
        <a href="#" title="offer" class="thumbnail"><img src="static/offer.jpg" data-bind="visible:offer"></a>
      </div>
      <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
       <div><poffer  ><br></br>Η εκδήλωση αυτή είναι σε τιμή προσφοράς!<br><br><br></poffer></div>
     </div>
   </div>
      
      <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
        <p5>Πληροφορίες:</p5>
              <ul class="meta-search">
                <li><p2><ka>Διοργανωτής:</ka>  <a  data-bind="attr: {href: compid}" onclick="location.href = 'company_profile.jsp/?idcompany='+this.value;" style="vertical-align:bottom;"><span data-bind="text:compname"></span> </a> </p2></li><div></div>
                   <li><p2><ka>Ημερομηνία:</ka> <span data-bind="text:date"></span></p2></li><div></div>
                   <li><p2><ka>Ώρα:</ka> <span data-bind="text:hour"></span></p2></li><div></div>
                    <li><p2><ka>Διάρκεια:</ka> <span data-bind="text:duration"></span> λεπτά</p2></li><div></div>
                    <li><p2><ka>Κόστος:</ka> <span data-bind="text:cost"></span> πόντοι</p2></li><div></div>
                    <li><p2><ka>Τοποθεσία:</ka> <span data-bind="text:address"></span></p2></li><div></div>
      </div>
              </ul>

              <div id="map" class="gmap"></div>
          <!-- </div> -->
         
           
    </div>

    
   

<div class="body1"></div>
    

    <!-- <script src="https://code.jquery.com/jquery-2.1.4.js"></script> -->
    <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> -->


    <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <!-- <script src="./static/bootstrap/js/bootstrap.min.js"></script> -->
    <script src="./static/knockout-3.4.2.js"></script>

    <% Configuration conf = Configuration.getInstance(); %>

    <script>

            var dictfull = {
                Mon: "Δευτέρα",
                Tue: "Τρίτη",
                Wed: "Τετάρτη",
                Thu: "Πέμπτη",
                Fri: "Παρασκευή",
                Sat: "Σάββατο",
                Sun: "Κυριακή",
                Jan: "Ιανουαρίου",
                Feb: "Φεβρουαρίου",
                Mar: "Μαρτίου",
                Apr: "Απριλίου",
                May: "Μαΐου",
                Jun: "Ιουνίου",
                Jul: "Ιουλίου",
                Aug: "Αυγούστου",
                Sep: "Σεπτεμβρίου",
                Oct: "Οκτωβρίου",
                Nov: "Νοεμβρίου",
                Dec: "Δεκεμβρίου"
                // etc.
            };


        var show1= <%=show%>;
        var notshow1=<%=notshow%>;
        console.log(notshow1);
        function initMap() {    
            var VM = function(){
                this.id = ko.observable();
                this.eventname = ko.observable(); 
                console.log(this.eventname);
                 this.hour = ko.observable(); 
                 this.address= ko.observable(); 
                 this.date= ko.observable(); 
                 this.cost= ko.observable(); 
                 this.duration=ko.observable();
                 this.description=ko.observable();
                 this.offer=ko.observable();
                 console.log(this.offer);
                 this.show=ko.observable(show1);
                 this.notshow=ko.observable(notshow1);
                 this.visits=ko.observable();
                 this.compname=ko.observable();
                 this.compid=ko.observable();
                   
            }

           VM.prototype.loadEventComp = function() {
                console.log("Loading event...");
                var ID = <%=ID%>;
                var opts = {
                    traditional : true,
                    cache       : false,
                    url         : "./api/event_plus_comp/"+ID,
                    type        : "GET",
                    dataType    : "json"
                };

                return $.ajax(opts); //returns a promise
            }

            var viewModel = new VM();
            console.log("Created VM");      

            viewModel.loadEventComp().done(function(eventJson){

                var init_date =new Date(eventJson.DateEvent);

                            
                            var parts = init_date.toString().split(" ");
                            // var date = "";
                            if(parts[2].startsWith("0")){
                                parts[2] = parts[2].substring(1,2);
                            }
                            console.log("Ημέρα "+parts[0]);
                  
                            var date_full = dictfull[parts[0]]+", "+parts[2]+" "+dictfull[parts[1]]+" "+parts[3];

                console.log("Done loading event+comp.");                 
                viewModel.id(eventJson.EventID);
                viewModel.eventname(eventJson.Name);
                viewModel.hour(eventJson.Hour);
                viewModel.address(eventJson.Address);
                viewModel.date(date_full);
                viewModel.cost(eventJson.Cost);
                viewModel.visits(eventJson.Visits);
                viewModel.duration(eventJson.Duration);
                viewModel.description(eventJson.Description);
                viewModel.offer(eventJson.IsOffer);
                viewModel.compname(eventJson.TagDescription);
                viewModel.compid(eventJson.CompanyID);
                console.log('skata nifo :!!!!!'+eventJson.TagDescription);
                
                $.ajax({
                  type:"POST",
                  data:{
                    id:eventJson.EventID,
                    visits:eventJson.Visits
                  },
                  url:'/app/event_visits_update',
                  success: function(){
                    //window.location.href='https://localhost:8765/app/event_profile.jsp'
                  }
                });       
               
                
                <%  //System.out.println(FileChecker.main("/src/main/webapp/images/user_profiles/krataios/")); %>
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
