<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="gr.ntua.ece.softeng17b.conf.*" %>
<%@ page import="gr.ntua.ece.softeng17b.FileChecker" %>
<%  int ID = 17; %>
<!DOCTYPE html>
<html>
<head>
    <title>TeraFun</title>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <style type="text/css">
    body { padding-top: 70px; }
    .jumbotron {
      color: #2c3e50;
      background: #ecf0f1;

    }
    .navbar-inverse {
      background: #2c3e50;
      color: white;
    }
    .navbar-inverse .navbar-brand, .navbar-inverse a{
      color:white;
      height:60px;
    }
    .navbar-inverse .navbar-nav>li>a {
      color: white;
      margin-top:10px;
      font-size:150%;
    } 
    .navbar-brand img{
       height:50px;
       margin-top:0px;
    }
    .form-inline{
    margin-top:20px;
    }
    .img1 {
        max-width: 100%; 
        max-height: 100%;
        object-fit: cover;
    }

    .portrait {
        height: 200px;
        width: 400px;
    }


  </style>
  <style>
       .gmap {
        height: 400px;
        width: 50%;
       }
    </style>

</head>
<body>
    <%@include file="header_company.jsp" %>



        <div class="container" id="ko">

            <div class="row">
                <div class="col-lg-4"></div>
                <div class="col-lg-4">
                    <h1>
                       <span data-bind="text:companyname"></span> 
                    </h1>
                </div>
                <div class="col-lg-4"></div>
            </div>
            <div class="jumbotron">
            <div class="row">
            
                <div class="col-lg-4">
                    <div class="portrait">
                        <img class=img1 data-bind="attr:{src: PhotosFolder}">
                    </div>
                </div>
                <div class="col-lg-4"></div>
                <div class="col-lg-4">
                    

                        <h2>
                            Στοιχεία Επικοινωνίας
                        </h2>
                        <p>
                            <span data-bind="text:address"></span> 
                            <a href="#">
                            <span data-bind="text:web"></span> 
                            </a>
                        </p>
                    </div>
                </div>
            </div>

            <div  class="jumbotron">
            <div class="row">
                <div class="col-lg-4"></div>
                <div class="col-lg-4">
                    <h2 >Περιγραφή
                        
                    </h2>
                </div>
                <div class="col-lg-4"></div>
            </div>


            
             <div class="row">
                
                    <p>
                       <span data-bind="text:description"></span> 
                    </p>
                    <button type="button" class="btn btn-primary btn-lg btn-block">Events</button>
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
                this.companyname = ko.observable(); 
                this.web = ko.observable(); 
                this.description =  ko.observable(); 
                this.address =  ko.observable();
                this.PhotosFolder = ko.observable();    
            }

            VM.prototype.loadCompany = function() {
                console.log("Loading company...");
                var ID = <%=ID%>;
                var opts = {
                    traditional : true,
                    cache       : false,
                    url         : "./api/company/"+ID,
                    type        : "GET",
                    dataType    : "json"
                };

                return $.ajax(opts); //returns a promise
            }

            var viewModel = new VM();
            console.log("Created VM");            

            viewModel.loadCompany().done(function(companyJson){
                console.log("Done loading companies.");                 
                viewModel.id(companyJson.CompanyID);
                viewModel.companyname(companyJson.CompanyName);
                viewModel.web(companyJson.WebPage);
                viewModel.description(companyJson.Description);
                viewModel.address(companyJson.Address);
                viewModel.PhotosFolder(companyJson.PhotosFolder);
                
                <%  System.out.println(FileChecker.main("/src/main/webapp/images/user_profiles/krataios/")); %>
                var uluru = {lat: companyJson.Latitude, lng: companyJson.Longitude};

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
