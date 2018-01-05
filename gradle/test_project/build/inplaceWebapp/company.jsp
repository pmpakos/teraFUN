<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ page import="gr.ntua.ece.softeng17b.conf.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Ajax and MVVM example</title>
        <link rel="stylesheet" href="./static/bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="./static/font-awesome/css/font-awesome.min.css"/>
        <style>
            .gmap {
                height: 400px;
                width: 100%;
            }
        </style>
    </head>

    <body>

        <div class="container" id="ko">
            <h1>
                <span data-bind="text:companies().length"></span> Companies
            </h1>
            <table class="table" data-bind="visible: companies().length > 0">
                <thead class="thead-light">
                    <tr>
                        <th scope="col">
                            Όνομα
                        </th>
                        <th scope="col">         
                            Id                   
                        </th>
                    </tr>
                </thead>  
                <tbody data-bind="foreach:companies">
                    <tr>
                        <td>
                            <span data-bind="text:companyname"></span>
                        </td>
                        <td>
                            <span data-bind="text:id"></span>
                        </td>
                    </tr>
                    
                </tbody>
            </table>
            <div class="gmap" id="map">
        </div>


    <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="./static/bootstrap/js/bootstrap.min.js"></script>
    <script src="./static/knockout-3.4.2.js"></script>

    <% Configuration conf = Configuration.getInstance(); %>

    <script>
        function init() {
            
          
          //  var map = new google.maps.Map(document.getElementById('map'), {
          //      zoom: 13,
          //      center: ece
          //  });

          //  console.log("Created map");
             
            var Company = function(id, companyname) {
                this.id = id;
                this.companyname = companyname;
            }

            var VM = function(){
                this.companies = ko.observableArray();            
            }

            VM.prototype.loadCompanies = function() {
                console.log("Loading companies...");
                var opts = {
                    traditional : true,
                    cache       : false,
                    url         : "./api/companies",
                    type        : "GET",
                    dataType    : "json"
                };

                return $.ajax(opts); //returns a promise
            }

            var viewModel = new VM();
            console.log("Created VM");            

            viewModel.loadCompanies().done(function(json){
                console.log("Done loading companies.");                 

                json.results.forEach(function(companyJson){             
                    var company = new Company(
                    		companyJson.CompanyID,
                    		companyJson.CompanyName
                        );
                    console.log(company);
                    viewModel.companies.push(company);
                });
            });

            ko.applyBindings(viewModel, document.getElementById('ko'));            
            console.log("Applied bindings");
        }

    </script>

   
    <script> init(); </script>

    </body>
</html>
