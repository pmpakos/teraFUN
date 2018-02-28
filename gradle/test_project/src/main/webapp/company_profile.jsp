<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="gr.ntua.ece.softeng17b.conf.*" %>
<%@ page import="gr.ntua.ece.softeng17b.FileChecker" %>
<!DOCTYPE html>
<html>
<head>
    <title>Προφίλ Εταιρείας | teraFUN</title>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <style type="text/css">
    body { padding-top: 70px; }
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

   .gmap {
        height: 400px;
        margin: auto;
        width: 50%;
    }
    .h2 {
        margin: auto;
        width: 50%;
        text-align: center;
    }
    </style>

</head>
<body>
    <%@include file="header.jsp" %>
 <!-- ////////////////////////////////////////////////////////// -->
<!-- flag=="" shmainei unknown -->
<!-- flagidi==0 shmainei admin -->
<!-- flagidi==1 shmainei user -->
<!-- flagidi==2 shmainei company -->
<%
if(flagidi==0 ){
  response.sendRedirect(request.getContextPath() + "/error-404.jsp");
}
%>
<!-- ////////////////////////////////////////////////////////// -->

<% 
    // String id2= (String)request.getParameter("idcompany");
    // System.out.println("nai re egw eimai: "+id2);
    int id2 = Integer.parseInt((String)request.getParameter("idcompany"));
    if (id2==-1) {//means we are already logged in
        //System.out.println((String)session.getAttribute("id"));

        id2=Integer.parseInt((String)session.getAttribute("id"));
    }
    System.out.println("nai re egw eimai: ");
    System.out.println(id2);
%>


        <div class="container" id="ko">

            <div class="row">
                <div class="col-lg-4"></div>
                <div class="col-lg-4">
                    <h1 style="text-align: center">
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
                            <span class="glyphicon glyphicon-home"></span>
                            <span data-bind="text:address"></span> 
                            <span data-bind="text:postal"></span> 
                        </p>
                        <p>
                            <span class="fa fa-paper-plane"> </span>
                            <a data-bind="attr: { href: web }">
                                <span data-bind="text:web"></span> 
                            </a>
                        </p>
                        <p>
                            <span class="glyphicon glyphicon-phone-alt"></span>
                            <span data-bind="text:telephone"></span>
                        </p>
                    </div>
                </div>
            </div>

            <div  class="jumbotron">
            <div class="row">
                <div class="col-lg-4"></div>
                <div class="col-lg-4">
                    <h2 style="text-align: center">Περιγραφή
                        
                    </h2>
                </div>
                <div class="col-lg-4"></div>
            </div>


            
             <div class="row">
                
                    <p style="text-align: center">
                       <span data-bind="text:description"></span> 
                    </p>
                    <button onclick="window.location.href='edit_profile_company.jsp';" type="button" class="btn btn-primary btn-lg btn-block">Επεξεργασία Προφίλ</button>

                    <button onclick="window.location.href='active_events_company.jsp';" type="button" class="btn btn-success btn-lg btn-block">Ενεργές Εκδηλώσεις</button>

                    <button onclick="window.location.href='history_company.jsp';" type="button" class="btn btn-warning btn-lg btn-block">Ιστορικό Εκδηλώσεων</button>
                </div>               
            </div>
            
            <div style="margin:0 auto; width:50%" class="jumbotron"><h2 style="text-align: center">Τοποθεσία</h2></div>
            <div id="map" class="gmap"></div>
            
    
    </div>

        <div class="body1"></div>


<!--     <script src="https://code.jquery.com/jquery-2.1.4.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 -->

    <!-- <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <!-- <script src="./static/bootstrap/js/bootstrap.min.js"></script> -->
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
                this.telephone = ko.observable();  
                this.postal = ko.observable();
            }

            VM.prototype.loadCompany = function() {
                console.log("Loading company...");
                var ID = <%=id2%>;
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
                viewModel.PhotosFolder(companyJson.PhotosFolder+'user.png');
                viewModel.telephone(companyJson.TelephoneNumber);
                viewModel.postal(companyJson.PostalCode);
                
                <%  //System.out.println(FileChecker.main("/src/main/webapp/images/user_profiles/krataios/")); %>
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
