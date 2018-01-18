<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                <span data-bind="text:administrators().length"></span> Administrators
            </h1>
            <table class="table" data-bind="visible: administrators().length > 0">
                <thead class="thead-light">
                    <tr>
                        <th scope="col">
                            Όνομα
                        </th>
                        <th scope="col">
                            Eπώνυμοooooo
                        </th>
                        <th scope="col">         
                            Id                   
                        </th>
                    </tr>
                </thead>  
                <tbody data-bind="foreach:administrators">
                    <tr>
                        <td>
                            <span data-bind="text:firstname"></span>
                        </td>
                        <td>
                            <span data-bind="text:lastname"></span>
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
             
            var Administrator = function(id, firstname, lastname) {
                this.id = id;
                this.firstname = firstname;
                this.lastname = lastname;
            }

            var VM = function(){
                this.administrators = ko.observableArray();            
            }

            VM.prototype.loadAdministrators = function() {
                console.log("Loading administrators...");
                var opts = {
                    traditional : true,
                    cache       : false,
                    url         : "./api/administrators",
                    type        : "GET",
                    dataType    : "json"
                };

                return $.ajax(opts); //returns a promise
            }

            var viewModel = new VM();
            console.log("Created VM");            

            viewModel.loadAdministrators().done(function(json){
                console.log("Done loading administrators.");                 

                json.results.forEach(function(administratorJson){             
                    var administrator = new Administrator(
                        administratorJson.AdminID,
                        administratorJson.FirstName,
                        administratorJson.LastName
                        );
                    console.log(administrator);
                    viewModel.administrators.push(administrator);
                });
            });

            ko.applyBindings(viewModel, document.getElementById('ko'));            
            console.log("Applied bindings");
        }

    </script>

   
    <script> init(); </script>

    </body>
</html>
