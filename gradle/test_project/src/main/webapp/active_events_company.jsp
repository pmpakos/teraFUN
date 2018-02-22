<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="gr.ntua.ece.softeng17b.conf.*" %>
<% int ID = 3; %>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
  <head>
      <title>Επερχόμενες Εκδηλώσεις Εταιρείας | teraFUN</title>
      <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
      <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="css/dataTables.min.css"/>
      <link rel="stylesheet" href="css/header.css"> 

        <style type="text/css">
         body { padding-top: 10px; } 
        .toolbar {
          float: left;
        }
        .btn-admin {
            width:150px;
          }
        .btn-filter {
            width:100%;
          }
          h1{
            margin-top: 80px;
            width: 100%;

            font-family: 'Open Sans', sans-serif;
          }
        </style>

   
    </head>

    <body>
<%@include file="header.jsp" %>
      <div class="container">
      <div id="ko">
            <h1>Επερχόμενες εκδηλώσεις : <span data-bind="text:events().length"></span> </h1>
            <table id="Data" class="table table-striped table-bordered" data-bind="visible: events().length > 0">
                <thead class="thead-light">
                    <tr>
                        <th scope="col">Όνομα </th>
                        <th scope="col">Ημερομηνία </th>
                        <th scope="col">Διεύθυνση </th>
                        <th scope="col">Συνολικά Εισιτήρια </th>
                        <th scope="col">Έσοδα σε ευρώ </th>
                        <th scope="col">Περιγραφή </th>
                    </tr>
                </thead>  
                <tbody data-bind="foreach:events">
                    <tr>
                        <td> <span data-bind="text:name"></span> </td>
                        <td> <span data-bind="text:date"></span> </td>
                        <td> <span data-bind="text:address"></span> </td>
                        <td> <span data-bind="text:ticket_counter"></span> </td>
                        <td> <span data-bind="text:income"></span> </td>
                                              
                        <td>
                          <!-- shit to be done here -->
                          <!-- <span data-bind="text:description"></span> -->
                          <button id="description" data-bind="click: function(data, event) { show_description(name, description, data,  event) }" type="button" class="btn btn-info btn-admin">Περιγραφή</button>
                        </td>                    
                    </tr>                   
                </tbody>
            </table>
        </div>
        </div>


    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="./static/bootstrap/js/bootstrap.min.js"></script>
    <script src="./static/knockout-3.4.2.js"></script>
    <script src="./js/DataTable.js"></script>
    <script src="./js/DataTable.bootstrap4.js"></script>
    <script src="js/active_events_company.js"></script>

    </body>
</html>
