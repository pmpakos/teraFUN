<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="gr.ntua.ece.softeng17b.conf.*" %>

<%  
    String id;
    if(session.getAttribute("id") == null || session.getAttribute("id").equals("")){
        id ="";
    }
    else{
        id = (String)session.getAttribute("id");
    }

    String text_search = request.getParameter("text_search");
    String date = request.getParameter("date");
    String ticket = request.getParameter("ticket");
    String age = request.getParameter("age");
    String distance = request.getParameter("distance");
   
    String sports = request.getParameter("sports");
    String team_spirit = request.getParameter("team_spirit");
    String fun = request.getParameter("fun");    
    String education = request.getParameter("education");

    id="4";
 %>


<!DOCTYPE html>
<% //FOr example the search is being done by Πέτρος Μανταλίδης with given lat, long

    

 %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Results | teraFUN</title>


        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
        <!-- Latest compiled JavaScript -->
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/build/css/bootstrap-datetimepicker.css" rel="stylesheet">

        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
         <script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js"></script>
        <link rel="stylesheet" href="css/header.css"> 
        <script src="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/src/js/bootstrap-datetimepicker.js"></script>
        <link rel="stylesheet" href="css/dataTables.min.css"/>
        <link rel="stylesheet" href="css/header.css"> 

        <link rel="stylesheet" href="css/after_search.css">

    </head>

    <body>


        <%@include file="header_user.jsp" %>


        <div class="parent">
            <div class="container" style="margin-top:80px; border-bottom: 1px solid #ccc;">
                <h1>Αποτελέσματα αναζήτησης</h1>
                <hgroup class="mb20">
                    
                    <h2 class="lead" style="float:left">Βρέθηκαν<strong class="text-danger"> <span data-bind="text:events().length"></span> </strong>εκδηλώσεις</h2>
                    <label class="container1">Eμφάνιση Όλων των εκδηλώσεων στον χάρτη
                        <input type="checkbox" checked="checked" data-bind="checked: selectAll" class="custom-control-input">
                        <span class="checkmark"></span>
                    </label>
                                    
                </hgroup>

                <section class="col-xs-12 col-sm-6 col-md-12 pre-scrollable" data-bind="foreach:events">
                    <article class="search-result row">
                        <div class="col-xs-12 col-sm-12 col-md-3">
                            <a href="#" title="Lorem ipsum" class="thumbnail"><img src="static/logo.png" alt="Lorem ipsum" /></a>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-2">
                            <ul class="meta-search">
                                <li><i class="glyphicon glyphicon-calendar"></i> <span data-bind="text:date"></span></li>
                                <li><i class="glyphicon glyphicon-time"></i> <span data-bind="text:hour"></span></li>
                                <li style="font-weight:bold; border:2px solid #00cc00; display: inline; padding-right: 8px;"><i class="glyphicon glyphicon-piggy-bank"></i> <span data-bind="text:cost"></span></li>
                                <li>    
                                    <label class="container1">
                                        <input type="checkbox" checked="checked" data-bind="checked: showInMap">
                                        <span class="checkmark"></span>
                                    </label>
                                </li>
                            </ul>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-7 excerpet">
                            <h3><span data-bind="text:name"></span></h3>
                            <p data-bind="text:description"></p>                        
                            <button type="button" class="btn btn-info btn-sm" style="vertical-align:bottom;">Μάθε Περισσότερα</button>
                            <button type="button" class="btn btn-success" style="float: right;">Κλείσε θέση τώρα!</button>
                        </div>
                        <span class="clearfix borda"></span>
                    </article>       

                </section>
            </div>


        <div id="map" class="gmap"></div>
        </div>


        <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>

        <script src="./static/bootstrap/js/bootstrap.min.js"></script>
        <script src="./static/knockout-3.4.2.js"></script>
        <script src="./js/DataTable.js"></script>
        <script src="./js/DataTable.bootstrap4.js"></script>
       
        <script>
            var dict = {
  Mon: "Δευ.",
  Tue: "Τρ.",
  Wen: "Τετ.",
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

function sortByDate(a,b){
    a = a.rank;
    b = b.rank;
    return a>b?1:(a<b?-1:0);
};



function init() {
                
    var uluru = {lat: 37.974534, lng: 23.734660};
    var infowindow = new google.maps.InfoWindow();
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 11,
        center: uluru,
        
    });
    

    var Event = function(id, name, description, full_description, hour, cost, longitude, latitude, date, sort) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.full_description = full_description;
        this.hour = hour;
        this.cost = cost;
        this.Longitude = longitude;
        this.Latitude = latitude;
        this.date = date;
        this.sort_date = sort;

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

        this.selectAll = ko.computed({
            read : function() {
                // Get selected when dependent children are selected
                var someSelected = false;
                var eventsArray = that.events();
                eventsArray.forEach(function(event){
                    console.log(event.showInMap());
                    if (event.showInMap()) {
                        someSelected = true;
                    }         
                });
                return someSelected;
            },
            write : function(newState) {
                // If checked / unchecked, propagate this change to children. This isn't called if we're only
                // only checking the group checkbox because of a change to a dependent.
                var eventsArray = that.events();
                eventsArray.forEach(function (event){
                    event.showInMap(newState);
                });
            }
        });           
    }

  
    VM.prototype.loadEvents = function() {
        console.log("Loading events...");
        var text_search = "<%=text_search%>";
        var date = "<%=date%>";
        var ticket = "<%=ticket%>";
        var age = "<%=age%>";
        var distance = "<%=distance%>";
        var sports = "<%=sports%>";
        var team_spirit = "<%=team_spirit%>";
        var fun = "<%=fun%>";
        var education = "<%=education%>";

        var id = "<%=id%>";

        var opts = {
            traditional : true,
            cache       : false,
            url         : "./api/search?text_search="+text_search+"&date="+date+"&ticket="+ticket+"&age="+age+"&distance="+distance+"&id="+id+'&sports='+sports+'&team_spirit='+team_spirit+'&fun='+fun+'&education='+education,
            type        : "GET",
            dataType    : "json"
        };

        return $.ajax(opts); //returns a promise
    }

    var viewModel = new VM();
    console.log("Created VM");            

    viewModel.loadEvents().done(function(json){
        console.log("Done loading events.");                 

        json.results.forEach(function(eventJson){


            if(eventJson.EventID == -1){
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
                var date = dict[parts[0]]+" "+parts[2]+" "+dict[parts[1]]+" "+parts[3];
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
                    eventJson.Description,
                    eventJson.Hour,
                    cost,
                    eventJson.Longitude,
                    eventJson.Latitude,
                    date,
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
        </script>

        <% Configuration conf = Configuration.getInstance();
      
         String apiKey = conf.getProperty("apiKey"); %>

        <script async defer src="https://maps.googleapis.com/maps/api/js?key=<%=apiKey%>&callback=init"></script>

    </body>
</html>
