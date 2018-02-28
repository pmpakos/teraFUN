<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="gr.ntua.ece.softeng17b.conf.*" %>

<%  
    // o monos logos pou einai id2 einai giati uparxei logw tou header.jsp hdh orismenh h metavlhth me onoma "id"
    String id2;
    if(session.getAttribute("id") == null || session.getAttribute("id").equals("")){
        id2 ="";
    }
    else{
        id2 = (String)session.getAttribute("id");
    }

    String text_search = request.getParameter("text_search");
    String date = request.getParameter("date");
    String ticket = request.getParameter("ticket");
    String age = request.getParameter("age");
    //String distance = request.getParameter("distance");
   
    String kind = request.getParameter("kind");
    String team = request.getParameter("team");
    String indoor = request.getParameter("indoor");    
    String offer = request.getParameter("offer");

    System.out.println(id2);

 %>

<!DOCTYPE html>
<% //FOr example the search is being done by Πέτρος Μανταλίδης with given lat, long
 %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Αποτελέσματα | teraFUN</title>


        <!-- Latest compiled and minified CSS -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
        
        <!-- Latest compiled JavaScript -->
        <!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
        <link href="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/build/css/bootstrap-datetimepicker.css" rel="stylesheet">

        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
         <script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js"></script>
        <!-- <link rel="stylesheet" href="css/header.css">  -->
        <script src="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/src/js/bootstrap-datetimepicker.js"></script>
        <link rel="stylesheet" href="css/dataTables.min.css"/>
        <link rel="stylesheet" href="css/header.css"> 

        <link rel="stylesheet" href="css/after_search.css">

    </head>

    <body>
        
<%@include file="header.jsp" %>
 <!-- ////////////////////////////////////////////////////////// -->
<!-- flag=="" shmainei unknown -->
<!-- flagidi==0 shmainei admin -->
<!-- flagidi==1 shmainei user -->
<!-- flagidi==2 shmainei company -->
<%
if(flagidi==0 | flagidi==2){
  response.sendRedirect(request.getContextPath() + "/error-404.jsp");
}
%>
<!-- ////////////////////////////////////////////////////////// -->

        <div class="alert alert-success alert-dismissible success" style="position: absolute; width: 60%; z-index: 0">
                    <button type="button" class="close" data-hide="alert" aria-hidden="true">&times;</button>
                    Η αγορά έγινε επιτυχώς! Το εισιτήριό σου έχει σταλεί στο email.
        </div>
        <div class="alert alert-danger alert-dismissible fail1" style="position: absolute; width: 60%; z-index: 0">
        <button type="button" class="close" data-hide="alert" aria-hidden="true">&times;</button>
                    Ουψ! Δεν υπάρχουν τόσες διαθέσιμες θέσεις για την εκδήλωση.
        </div>
        <div class="alert alert-danger fail2" style="position: absolute; width: 60%; z-index: 0">
        <button type="button" class="close" data-hide="alert" aria-hidden="true">&times;</button>
                    Οι πόντοι που διαθέτεις δεν επαρκούν!
        </div>
        <div class="alert alert-danger alert-dismissible fail3" style="position: absolute; width: 60%; z-index: 0">
        <button type="button" class="close" data-hide="alert" aria-hidden="true">&times;</button>
                    Συναλλαγή ανεπιτυχής! Για την αγορά εισιτηρίου είναι απαραίτητη η πληρωμή της συνδρομής!
        </div>
        <div class="parent" style="margin-top:20px; display: none;" data-bind="visible: true"">
            <div class="container" style="border-bottom: 1px solid #ccc; max-width: 60%;">
                <h1>Αποτελέσματα αναζήτησης</h1>
                <hgroup class="mb20">
                    
                    <h2 class="lead" style="float:left">Εμφανίζονται  <strong class="text-danger"> <span data-bind="text:calculate"></span> </strong>από συνολικά<strong class="text-danger"> <span data-bind="text:events().length"></span> </strong> <span data-bind="visible:events().length>1">εκδηλώσεις</span> <span data-bind="visible:events().length<2">εκδήλωση</span><span data-bind="visible:events().length<1">: Δεν βρέθηκαν αποτελέσματα για την αναζήτησή σου. <a href="search.jsp">Ξαναπροσπάθησε!</a></span></h2>

                    <div class="btn-group" style="float:right; margin-top:6px; margin-bottom:6px;" data-bind="visible: showMe() && events().length>0" aria-haspopup="true">

                        <button type="button"  data-toggle="dropdown" class="btn btn-default dropdown-toggle">
                            <span class="glyphicon glyphicon-road"> Απόσταση</span>
                            <span class="caret"></span>
                        </button>

                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <button id="check0" type="button" class="btn btn-default" data-bind="click: filter.bind(this, '5')" style="width:100%;">
                                    <span style="font-weight:bold;">5 χλμ.</span>
                                </button> 
                            </li> 
                            <li> 
                                <button id="check1" type="button" class="btn btn-default" data-bind="click: filter.bind(this, '15')" style="width:100%;">
                                    <span style="font-weight:bold;">15 χλμ.</span>
                                </button> 
                            </li>
                            <li> 
                                <button id="check2" type="button" class="btn btn-default" data-bind="click: filter.bind(this, '25')" style="width:100%;">
                                    <span style="font-weight:bold;">25 χλμ.</span>
                                </button> 
                            </li>
                            <li> 
                                <button id="check3" type="button" class="btn btn-default" data-bind="click: filter.bind(this, '40')" style="width:100%;">
                                    <span style="font-weight:bold;">40 χλμ.</span>
                                </button> 
                            </li>
                            <li> 
                                <button id="check4" type="button" class="btn btn-info" data-bind="click: filter.bind(this, '75')">
                                    <span style="font-weight:bold;">Κανένας Περιορισμός</span>
                                </button> 
                            </li>
                        </ul>
                    </div>
            
                </hgroup>

                <section class="col-xs-12 col-sm-12 col-md-12 col-lg-12 pre-scrollable" data-bind="foreach:events">
                    <article class="search-result row" data-bind="visible: isVisible">
                        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-3">
                            <div class="portrait">
                                <a href="#" title="Lorem ipsum" class="thumbnail"><img class=img1 data-bind="attr:{src: photo}"></a>
                            </div>
                        </div>
                        
                            <div class="col-xs-3 col-sm-4 col-md-5 col-lg-2">
                                <ul class="meta-search">
                                    <li><i class="glyphicon glyphicon-calendar"></i> <span data-bind="text:date"></span></li>
                                    <li><i class="glyphicon glyphicon-time"></i> <span data-bind="text:hour"></span></li>
                                    <li><i class="glyphicon glyphicon-hourglass"></i> <span data-bind="text:duration"></span></li>
                                    <li style="font-weight:bold;"><i class="glyphicon glyphicon-piggy-bank"></i> <span data-bind="text:cost"></span></li>
                                    <!--<li>    
                                        <label class="container1">
                                            <input type="checkbox" checked="checked" data-bind="checked: showInMap">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>-->
                                </ul>
                            </div>
                            <div class="col-xs-7 col-sm-6 col-md-5 col-lg-7 excerpet">
                                <h3><span data-bind="text:name"></span></h3>
                                <p data-bind="text:description"></p>                        
                                <button  data-bind="value: id" onclick="location.href = 'event_profile.jsp/?id='+this.value;" type="button" class="btn btn-info btn-sm" style="vertical-align:bottom;">Μάθε Περισσότερα</button>
                                <button id="mybtn" href="#myModal" data-bind="visible: $parent.showMe, value: id" type="button" class="btn btn-success" style="float: right;" data-toggle="modal" onclick="set(this.value)">Κλείσε θέση τώρα!</button>
                                <button onclick="location.href = 'sign_up_parent.jsp';" data-bind="visible: $parent.notShow()" type="button" class="btn btn-warning" style="float: right;" data-toggle="tooltip" title="Γίνε μέλος για να κάνεις κράτηση!">Κάνε εγγραφή τώρα!</button>
                            </div>
                        <span class="clearfix borda"></span>
                    </article>       

                </section>
            </div>


            <div id="map" class="gmap"></div>
        </div>

        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button style="float: right;" type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title" style="float:left;" id="myModalLabel">Αγορά Εισιτηρίου | teraFUN</h5>
              </div>
              <div class="modal-body" id="mbody">
                <input type="hidden" id="eventID" name="eventID"/>
                <div class="modal-portrait">
                    <a class="thumbnail"><img id="modal-img"></a>
                    <p id="p1"><strong>Εκδήλωση: </strong></p>
                    <p id="p2"><strong>Πότε: </strong></p>
                    <p id="p3"><strong>Πού: </strong></p>
                    <p id="p4"><strong>Κόστος: </strong></p>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Ακύρωση</button>
                <button id="proceed" type="button" class="btn btn-primary">Επιβεβαίωση πληρωμής</button>
              </div>
            </div>
            </div>
        </div>


        <!-- <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script> -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>

        <script src="./static/knockout-3.4.2.js"></script>
        <script src="./js/DataTable.js"></script>
        <script src="./js/DataTable.bootstrap4.js"></script>
       
        <script>

            

            $("[data-hide]").on("click", function(){
                $(this).closest("." + $(this).attr("data-hide")).hide();
            });

            // Get the modal
            var modal = document.getElementById('myModal');

            // Get the button that opens the modal
            var btn = document.getElementById("mybtn");

            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];

            var proceed = document.getElementById("proceed");

            proceed.onclick = function() {
                var r = confirm("Είστε σίγουρος/η πως θέλετε να προχωρήσετε με την πληρωμή;");
                if(r == true){
                    console.log("Θα το πληρώσεις!");
                    var parentID = "<%=id2%>";
                    console.log(parentID);
                    var eventID =  document.getElementById('eventID').value;
                    console.log(eventID+" !!! to pio shmantiko");
                    var ticket_number = "<%=ticket%>";
                    console.log(ticket_number);
                    var today = new Date();
                    var dd = today.getDate();
                    var mm = today.getMonth()+1; //January is 0!
                    var yyyy = today.getFullYear();


                    if(dd<10) {
                        dd = '0'+dd
                    } 

                    if(mm<10) {
                        mm = '0'+mm
                    } 

                    var date = dd+ '/' + mm + '/' + yyyy ;
                    
                    console.log(date);
                    //Ready to create the booking
                    $.ajax({
                        type:"POST",
                        data:{
                            parentID:parentID,
                            eventID:eventID,
                            tickets:ticket_number,
                            date:date
                        },
                        url:'/app/booking',
                        success: function(reply){
                            $('.fail3').hide();
                            $('.fail2').hide();
                            $('.fail1').hide();
                            $('.success').hide();
                            if(reply == "Success"){
                                $("#myModal").modal("hide"); 
                                $(".success").fadeTo(2000, 500).slideUp(500, function(){
                                    $(".success").slideUp(500);
                                });
                            }
                            else if(reply == "Tickets"){
                                $("#myModal").modal("hide"); 
                                $('.fail1').show();
                            }
                            else if(reply == "Pay"){
                                $("#myModal").modal("hide"); 
                                $('.fail3').show();
                            }
                            else{
                                $("#myModal").modal("hide"); 
                                $('.fail2').show();
                            }
                        }
                            
                    }); 
                }
                else{
                    $("#myModal").modal("hide"); 
                }
            };

            // When the user clicks on <span> (x), close the modal
            span.onclick = function() {
                modal.style.display = "none";
                $('.fail3').hide();
                $('.fail2').hide();
                $('.fail1').hide();
                $('.success').hide();
            };

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            };

            $("#myModal").on("hidden.bs.modal", function () {
                myDiv = document.getElementById("p1");
                myDiv.removeChild(myDiv.childNodes[1]);

                myDiv = document.getElementById("p2");
                myDiv.removeChild(myDiv.childNodes[1]);

                myDiv = document.getElementById("p3");
                myDiv.removeChild(myDiv.childNodes[1]);

                myDiv = document.getElementById("p4");
                myDiv.removeChild(myDiv.childNodes[1]);                
            });


            distance = 0;
            var dict = {
                Mon: "Δευ.",
                Tue: "Τρ.",
                Wed: "Τετ.",
                Thu: "Πέμ.",
                Fri: "Παρ.",
                Sat: "Σάβ.",
                Sun: "Κυρ.",
                Jan: "Ιαν.",
                Feb: "Φεβ.",
                Mar: "Μαρ.",
                Apr: "Απρ.",
                May: "Μαΐου",
                Jun: "Ιουν.",
                Jul: "Ιουλ.",
                Aug: "Αυγ.",
                Sep: "Σεπτ.",
                Oct: "Οκτ.",
                Nov: "Νοε.",
                Dec: "Δεκ."
                // etc.
            };
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
            home_lat = 0;
            home_lon = 0;
            function sortByDate(a,b){
                a = a.rank;
                b = b.rank;
                return a>b?1:(a<b?-1:0);
            };
            
            $(document).ready(function(){
                $('[data-toggle="tooltip"]').tooltip(); 
            });
            
            $('[id^="check"]').click(function () {
                if($(this).hasClass('btn-default')){
                    $('[id^="check"]').removeClass('btn-info').addClass('btn-default');
                    $(this).addClass('btn-info');
                }
            });

            /*function toRadians(x){
                return (Math.PI/180)*x;
            };

            function calcDistance(lat1, lon1, lat2, lon2){

                var x1 = toRadians(lat1), x2 = toRadians(lat2), dl = toRadians((lon2-lon1)), R = 6371e3; // gives d in metres
                var d = Math.acos( Math.sin(x1)*Math.sin(x2) + Math.cos(x1)*Math.cos(x2) * Math.cos(dl) ) * R;
                return d;
            };*/


            var viewModel;
            function init() {
                            
                var uluru = {lat: 37.974534, lng: 23.734660};
                var infowindow = new google.maps.InfoWindow();
                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 11,
                    center: uluru,
                    
                });
                

                var Event = function(id, name, description,  address, full_description, hour, duration, cost, photo, longitude, latitude, date, date_full, sort) {
                    this.id = id;
                    this.name = name;
                    this.description = description;
                    this.address = address;
                    this.full_description = full_description;
                    this.hour = hour;
                    this.duration = duration;
                    this.cost = cost;
                    this.photo = photo;
                    this.Longitude = longitude;
                    this.Latitude = latitude;
                    this.date = date;
                    this.date_full = date_full;
                    this.sort_date = sort;
                    this.isVisible = ko.observable(true);
                    this.marker = new google.maps.Marker({
                        map: map,
                        position: {lat: latitude, lng: longitude}
                    });
                    
                    google.maps.event.addListener(this.marker, 'click', function() {
                      infowindow.setContent(name);
                      infowindow.open(map, this);
                    });

                    this.showInMap = ko.observable(true);
                    this.showInMap.subscribe(function(newValue){                    
                        console.log("Changed to " + newValue);
                        if (newValue) {
                            this.marker.setMap(map);
                        }
                        else {
                            this.marker.setMap(null);
                        }                    
                    }, this);
                }

                var VM = function(){
                    var that = this;
                    this.events = ko.observableArray();
                    this.showMe = ko.observable(false);
                    this.notShow = ko.observable(true);
                    this.calculate = ko.computed(function () {
                        var counter=0;
                        var eventsArray = that.events();
                        eventsArray.forEach(function (event){
                            if(event.isVisible()){
                                counter++;
                            }       
                        });
                        return counter;
                    });
                    /*this.selectAll = ko.computed({
                        read : function() {
                            // Get selected when dependent children are selected
                            var someSelected = true;
                            var eventsArray = that.events();
                            eventsArray.forEach(function(event){
                                console.log(event.showInMap());
                                if (!event.showInMap()) {
                                    someSelected = false;
                                }         
                            });
                            return someSelected;
                        },
                        write : function(newState) {
                            
                            $('[id^="check"]').removeClass('btn-info').addClass('btn-default');
                            $('[id="check4"]').addClass('btn-info');
                            
                            // If checked / unchecked, propagate this change to children. This isn't called if we're only
                            // only checking the group checkbox because of a change to a dependent.
                            var eventsArray = that.events();
                            eventsArray.forEach(function (event){
                                event.showInMap(newState);
                                event.isVisible(true);
                            });
                        }
                    });*/

                    this.filter = function(str){
                        //console.log(str);
                        if(str==75){
                            var eventsArray = that.events();
                                eventsArray.forEach(function (event){
                                    event.isVisible(true);
                                    event.showInMap(true);
                            });
                        }
                        else{
                            var eventsArray = that.events();
                            var home = new google.maps.LatLng(home_lat, home_lon);
                            service = new google.maps.DistanceMatrixService();
                            eventsArray.forEach(function (event){
                                //console.log(calcDistance(home_lat, home_lon, event.Latitude, event.Longitude)/1000);
                                
                 
                                service.getDistanceMatrix(
                                {
                                    origins: [home],
                                    destinations: [new google.maps.LatLng(event.Latitude, event.Longitude)],
                                    travelMode: google.maps.TravelMode.DRIVING,
                                    avoidHighways: false,
                                    avoidTolls: false
                                }, 
                                    callback
                                );

                                function callback(response, status) {

                                    if(status=="OK") {
                                        var d = parseInt(response.rows[0].elements[0].distance.text.split(" ")[0]);
                                        console.log("The distance is: "+d+ ", "+str);
                                        if(d > parseInt(str)){
                                            console.log("YES");
                                            event.isVisible(false);
                                            event.showInMap(false);
                                        }
                                        else{
                                            console.log("no");
                                            event.isVisible(true);
                                            event.showInMap(true);
                                        }
                                    } else {
                                        alert("Error: " + status);
                                    }
                                }
                            });
                        }
                        viewModel.calculate();
                    };           
                }

              
                VM.prototype.loadEvents = function() {
                    console.log("Loading events...");
                    var text_search = "<%=text_search%>";
                    var date = "<%=date%>";
                    var ticket = "<%=ticket%>";
                    var age = "<%=age%>";
                    var kind = "<%=kind%>";
                    var team = "<%=team%>";
                    var indoor = "<%=indoor%>";
                    var offer = "<%=offer%>";

                    var id = "<%=id2%>";

                    var opts = {
                        traditional : true,
                        cache       : false,
                        url         : "./api/search?text_search="+text_search+"&date="+date+"&ticket="+ticket+"&age="+age+"&id="+id+'&kind='+kind+'&team='+team+'&indoor='+indoor+'&offer='+offer,
                        type        : "GET",
                        dataType    : "json"
                    };

                    return $.ajax(opts); //returns a promise
                }

                
                viewModel = new VM();
                console.log("Created VM");            

                viewModel.loadEvents().done(function(json){
                    console.log("Done loading events.");                 

                    json.results.forEach(function(eventJson){


                        if(eventJson.EventID == -1){
                            viewModel.showMe(true);
                            viewModel.notShow(false);
                            home_lat = eventJson.Latitude;
                            home_lon = eventJson.Longitude;
                            uluru = {lat: eventJson.Latitude, lng: eventJson.Longitude};
                            var marker = new google.maps.Marker({
                                position: uluru,
                                map: map,
                                icon: {
                                    url: "images/markers/home-icon.svg",
                                    scaledSize: new google.maps.Size(32, 32),
                                }   
                            });
                            if(distance>0){
                                var circle = new google.maps.Circle({
                                    map: map,
                                    radius: distance*1000,    // 10 miles in metres
                                    fillColor: ' #99ccff',
                                    fillOpacity: 0.35,
                                    strokeColor: '#004d99'
                                });
                                circle.bindTo('center', marker, 'position');
                            }
                            map.setCenter(uluru);
                        }
                        else{


                            // parse JSON formatted date to javascript date object
                            var init_date =new Date(eventJson.DateEvent);

                            
                            var parts = init_date.toString().split(" ");
                            var date = "";
                            if(parts[2].startsWith("0")){
                                parts[2] = parts[2].substring(1,2);
                            }
                            console.log("Ημέρα "+parts[0]);
                            var date = dict[parts[0]]+" "+parts[2]+" "+dict[parts[1]]+" "+parts[3];
                            var date_full = dictfull[parts[0]]+", "+parts[2]+" "+dictfull[parts[1]]+" "+parts[3];
                            var rank_date = 10000*init_date.getFullYear()+init_date.getMonth()*100+init_date.getDate()*1;
                            
                            var event_description = eventJson.Description.replace(/(([^\s]+\s\s*){30}).*/,"$1...:)");
                            var ind = event_description.indexOf("...:)");
                            if(ind == -1){
                                event_description = eventJson.Description;
                            }
                            else{
                                event_description = event_description.substring(0,ind+3); 
                            }

                            var cost = eventJson.Cost+" Πόντοι";

                            var event = new Event(
                                eventJson.EventID,
                                eventJson.Name,
                                event_description,
                                eventJson.Address,
                                eventJson.Description,
                                eventJson.Hour,
                                eventJson.Duration+" λεπτά",
                                cost,
                                eventJson.PhotosFolder,
                                eventJson.Longitude,
                                eventJson.Latitude,
                                date,
                                date_full,
                                rank_date
                                );
                            console.log(event);
                            viewModel.events.push(event);
                        }
                    });

                    viewModel.events.sortByProperty("sort_date");
                });

                ko.observableArray.fn.sortByProperty = function(prop) {
                    this.sort(function(obj1, obj2) {
                        if (obj1[prop] == obj2[prop]) 
                            return 0;
                        else if (obj1[prop] < obj2[prop]) 
                            return -1 ;
                        else 
                            return 1;
                    });
                }
                ko.applyBindings(viewModel, document.getElementById('ko'));            
                console.log("Applied bindings");

            }
            function set(clicked_id) {
                var eventId = clicked_id;
                $(".modal-body #eventID").val( eventId );
                var eventsArray = viewModel.events();
                var event1;
                eventsArray.forEach(function (event){
                    if(event.id == eventId){
                        event1 = event;
                    }
                });
                
                document.getElementById("modal-img").src =  event1.photo;
                var myDiv = document.getElementById("p1");
                var paragraph = document.createElement("span");
                var txt = document.createTextNode(event1.name);
                paragraph.appendChild(txt);
                myDiv.appendChild(paragraph);

                myDiv = document.getElementById("p2");
                paragraph = document.createElement("span");
                txt = document.createTextNode(event1.date_full +" και ώρα "+event1.hour);
                paragraph.appendChild(txt);
                myDiv.appendChild(paragraph);

                myDiv = document.getElementById("p3");
                paragraph = document.createElement("span");
                txt = document.createTextNode(event1.address);
                paragraph.appendChild(txt);
                myDiv.appendChild(paragraph);

                var ticket = "<%=ticket%>";
                var help = "";
                if(ticket>1){
                    help=" Εισιτήρια = ";
                }
                else{
                    help=" Εισιτήριο = ";
                }
                myDiv = document.getElementById("p4");
                paragraph = document.createElement("span");
                txt = document.createTextNode(event1.cost+" x "+ ticket+help);
                paragraph.appendChild(txt);
                var temp = document.createElement("strong");
                var sum = parseInt(ticket)*parseInt(event1.cost);
                txt =  document.createTextNode(sum+" Πόντοι");
                temp.appendChild(txt);
                paragraph.appendChild(temp);
                myDiv.appendChild(paragraph);
            }
        </script>

        <% Configuration conf = Configuration.getInstance();
      
         String apiKey = conf.getProperty("apiKey"); %>

        <script async defer src="https://maps.googleapis.com/maps/api/js?key=<%=apiKey%>&callback=init"></script>

    </body>
</html>
