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
            <h1>Companies</h1>
            <table class="table">
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
                <tbody>
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

    <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="./static/bootstrap/js/bootstrap.min.js"></script>
    <script src="./static/knockout-3.4.2.js"></script>

    <% Configuration conf = Configuration.getInstance(); %>

    <script>
            
        var VM = function(){
            this.id = ko.observable();
            this.companyname = ko.observable();         
        }

        VM.prototype.loadCompany = function() {
            console.log("Loading company...");
            var opts = {
                traditional : true,
                cache       : false,
                url         : "./api/company/11",
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
        });

        ko.applyBindings(viewModel, document.getElementById('ko'));            
        console.log("Applied bindings");
    </script>

    </body>
</html>
