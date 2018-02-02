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

    <style>

        .gmap {
            margin: auto;
            height: 400px;
            width: 800px;
        }
        </style>
    </head>

    <body>


        <%@include file="header_user.jsp" %>

        <div id="ko" style="margin-top: 100px;">
                <h1> <span data-bind="text:events().length"></span> Αποτελέσματα </h1>
                <table id="Data" class="table table-striped table-bordered" data-bind="visible:events().length > 0">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">Αποτελέσματα</th>
                        </tr>
                    </thead>  
                    <tbody data-bind="foreach:events">
                        <tr>
                            <td> <span data-bind="text:name"></span> </td>
                        </tr>                   
                    </tbody>
                </table>
        </div>
        <div id="map" class="gmap"></div>


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
