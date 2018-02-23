<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="gr.ntua.ece.softeng17b.conf.*" %>
<%  int ID = 1; %>
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
<div class="container" style="text-align: center" id="ko">
    <div class="jumbotron">
        <table class="table table-striped ">
            <tbody>
                <tr>
                    <td><span class="glyphicon glyphicon-user"></span> Όνομα</td>
                    <td><span data-bind="text:first"></span></td>
                </tr>
                <tr>
                    <td><span class="glyphicon glyphicon-user"></span> Username</td>
                    <td><span data-bind="text:username"></span></td>
                </tr>
                <tr>
                    <td><span class="glyphicon glyphicon-user"></span> Epwnumo</td>
                    <td><span data-bind="text:last"></span></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>


    <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="./static/bootstrap/js/bootstrap.min.js"></script>
    <script src="./static/knockout-3.4.2.js"></script>

    <% Configuration conf = Configuration.getInstance(); %>

    <script>
        function initMap() {    
            var VM = function(){
                this.username = ko.observable(); 
                this.first = ko.observable();
                this.last= ko.observable();                   
            }

            VM.prototype.loadAdministrator = function() {
                console.log("Loading administrator...");
                var ID = <%=ID%>;
                var opts = {
                    traditional : true,
                    cache       : false,
                    url         : "./api/administrator/"+ID,
                    type        : "GET",
                    dataType    : "json"
                };

                return $.ajax(opts); //returns a promise
            }

            var viewModel = new VM();
            console.log("Created VM");            

            viewModel.loadAdministrator().done(function(administratorJson){
                console.log("Done loading administrators.");                 
                viewModel.first(administratorJson.FirstName);
                viewModel.last(administratorJson.LastName);
                viewModel.username(administratorJson.Username);
            });

            ko.applyBindings(viewModel);            
            console.log("Applied bindings");
        }
    </script>

    <script> initMap(); </script>

    </body>
</html>
