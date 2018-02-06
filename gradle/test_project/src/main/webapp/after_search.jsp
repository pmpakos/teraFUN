<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="gr.ntua.ece.softeng17b.conf.*" %>
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

        <link rel="stylesheet" href="css/search.css">
        <script src="js/search.js"></script>

    <style>
        .parent {
          display: flex;
        }
        .resize {
            width: 150px;
            height: 70%;
        }
        .gmap {
            margin-top: 150px;
            float:right;
            height: 500px;
            width: 45%;
        }
        .table_results{
            float: left;
            height: 400px;
            width: 60%;
        }

        .dataTables_wrapper .dataTables_filter {
            float: left;
            text-align: left;
            right: 90%;
        }

        </style>
    </head>

    <body>


        <%@include file="header_user.jsp" %>


        <div class="parent">
        <div class="table_results" id="ko" style="margin-top: 150px;">
                <table id="Data" class="table cell-border table-bordered" data-bind="visible:events().length > 0">
                <h1> <span data-bind="text:events().length"></span> Αποτελέσματα </h1>
                    <thead class="thead-light">
                        <tr>
                            <th scope="col" rowspan="2">Αποτελέσματα</th>
                            <th scope="col" rowspan="2">Ημερομηνία</th>
                            <th scope="col" rowspan="2">Ημερομηνία</th>
                            <th scope="col">Προβολή στο χάρτη</th>
                        </tr>
                        <tr>
                            <th>
                                <label class="custom-control custom-checkbox">
                                    <input type="checkbox" checked="checked" data-bind="checked: selectAll" class="custom-control-input">
                                    <span class="custom-control-indicator"></span>
                                </label>
                            </th>
                        </tr>

                        
                    </thead>  
                    <tbody data-bind="foreach:events">
                        <tr>
                            <td width="500" height="100">
                                <span style="padding-right:3px; padding-top: 3px; display:inline-block;">
                                <img class="resize" src="static/logo.png"></img>
                                </span>
                                <span style="font-weight: bold;" data-bind="text:name"></span>
                                <button type="button" class="btn btn-info btn-sm" style="vertical-align:bottom;">Μάθε Περισσότερα</button>
                                <button type="button" class="btn btn-success"  style="float: right;">Κλείσε θέση τώρα!</button>
                            </td>

                            <td width="200"> <span data-bind="text:date"></span> </td>
                            <td> <span data-bind="text:sort_date"></span> </td>
                            <td width="100">
                            <label class="custom-control custom-checkbox">
                                <input type="checkbox" checked="checked" data-bind="checked: showInMap" class="custom-control-input" >
                                <span class="custom-control-indicator"></span>
                            </label> 
                        </td>
                        </tr>                   
                    </tbody>
                </table>
        </div>
        <div id="map" class="gmap"></div>
        </div>


        <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>

        <script src="./static/bootstrap/js/bootstrap.min.js"></script>
        <script src="./static/knockout-3.4.2.js"></script>
        <script src="./js/DataTable.js"></script>
        <script src="./js/DataTable.bootstrap4.js"></script>
        <script src="./js/after_search.js"></script>

        <% Configuration conf = Configuration.getInstance();
      
         String apiKey = conf.getProperty("apiKey"); %>

        <script async defer src="https://maps.googleapis.com/maps/api/js?key=<%=apiKey%>&callback=init"></script>

    </body>
</html>
