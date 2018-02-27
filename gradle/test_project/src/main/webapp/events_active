<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="gr.ntua.ece.softeng17b.conf.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Results | teraFUN</title>


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

    <style type="text/css">
        .body1 {
    background: url('static/lala.jpg');
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
      -webkit-filter: blur(0px);
      -moz-filter: blur(0px);
      -o-filter: blur(0px);
      -ms-filter: blur(0px);
      filter: blur(0px);   
    }
    </style>

    </head>

    <body>
    <%@include file="header.jsp" %>

    
        
          <div class="container" id="ko">   
                 
               <div class="panel container" style="align:center; width:600px;background-color:#E6E6FA;border-radius: 1000px;  ">
                    <h1 style="text-align:center">Επερχόμενες Εκδηλώσεις</h1>
               </div>
            

            
            <section class="col-xs-12 col-sm-12 col-md-12 col-lg-12 " data-bind="foreach:events">
                    <article class="search-result row" >
                     <div class="jumbotron" style="background-color:#E6E6FA">
                        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-3"  >
                            <div class="portrait">
                                <a href="#" title="Lorem ipsum" class="thumbnail" style="width:220px"><img class=img1 data-bind="attr:{src: photo}"></a>
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
                                <button onclick="location.href = 'sign_up_parent.jsp';" data-bind="visible: $parent.notShow" type="button" class="btn btn-warning" style="float: right;" data-toggle="tooltip" title="Γίνε μέλος για να κάνεις κράτηση!">Κάνε εγγραφή τώρα!</button>
                            </div>
                        <span class="clearfix borda"></span>
                        </div>
                    </article>      


                </section>


      

    <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="./static/bootstrap/js/bootstrap.min.js"></script>
    <script src="./static/knockout-3.4.2.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>

        <script src="./static/knockout-3.4.2.js"></script>
        <script src="./js/DataTable.js"></script>
        <script src="./js/DataTable.bootstrap4.js"></script>

    <% Configuration conf = Configuration.getInstance(); %>

    <script>
        function init() {
            
          
          //  var map = new google.maps.Map(document.getElementById('map'), {
          //      zoom: 13,
          //      center: ece
          //  });

          //  console.log("Created map");
             
            var Event = function(id, name , description, address, hour, duration, cost, photo, date) {
                this.id = id;
                this.name = name;
                this.description = description;
                this.address = address;
                this.hour = hour;
                this.duration = duration;
                this.cost = cost;
                this.photo = photo;
                this.date = date;

            }

            var VM = function(){
                this.events = ko.observableArray();            
            }

            VM.prototype.loadEvents = function() {
                console.log("Loading events...");
                var opts = {
                    traditional : true,
                    cache       : false,
                    url         : "./api/events",
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
                var init_date =new Date(eventJson.DateEvent);

                            
                            var parts = init_date.toString().split(" ");
                            var date = "";
                            if(parts[2].startsWith("0")){
                                parts[2] = parts[2].substring(1,2);
                            }
                            console.log("Ημέρα "+parts[0]);
                            var date = dict[parts[0]]+" "+parts[2]+" "+dict[parts[1]]+" "+parts[3];           
                    var event = new Event(
                        eventJson.EventID,
                        eventJson.Name,
                        eventJson.Description,
                        eventJson.Address,
                        eventJson.Hour,
                        eventJson.Duration+" Λεπτά",
                        eventJson.Cost+" Πόντοι",
                        eventJson.PhotosFolder,
                        date

                        );
                    console.log(event);
                    viewModel.events.push(event);
                });
            });

            ko.applyBindings(viewModel, document.getElementById('ko'));            
            console.log("Applied bindings");
        }

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
            

    </script>

   
    <script> init(); </script>
    <div class="body1"></div>

    </body>
</html>
