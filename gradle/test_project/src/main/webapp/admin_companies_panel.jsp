<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
  <head>
      <title>Companies Admin Panel | teraFUN</title>
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

    <head>
        <%@include file="header.jsp" %>
    </head>

    <body>
      <div id="ko">
            <h1> <span data-bind="text:companies().length"></span> Companies </h1>
            <table id="Data" class="table table-striped table-bordered" data-bind="visible: companies().length > 0">
                <thead class="thead-light">
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Όνομα </th>
                        <th scope="col">Διεύθυνση</th>
                        <th scope="col">Τ.Κ.</th>
                        <th scope="col">Τηλέφωνο Επικοινωνίας </th>
                        <th scope="col">Username </th>
                        <th scope="col">Email </th>
                        <th scope="col">WebPage </th>
                        <th scope="col">Περιγραφή </th>
                        <th scope="col">ΑΦΜ </th>
                        <th scope="col">Πόντοι </th>
                        <th scope="col">Αριθμός Κάρτας </th>
                        <th scope="col">Status </th>
                    </tr>
                </thead>  
                <tbody data-bind="foreach:companies">
                    <tr>
                        <td> <span data-bind="text:id"></span> </td>
                        <td> <span data-bind="text:name"></span> </td>
                        <td> <span data-bind="text:address"></span> </td>
                        <td> <span data-bind="text:postalcode"></span> </td>
                        <td> <span data-bind="text:tel"></span> </td>
                        <td> <span data-bind="text:username"></span> </td>
                        <td> <span data-bind="text:email"></span> </td>
                        <td> <span data-bind="text:webpage"></span> </td>
                        
                        <td>
                          <!-- shit to be done here -->
                          <!-- <span data-bind="text:description"></span> -->
                          <button id="description" data-bind="click: function(data, event) { show_description(name,description, data,  event) }" type="button" class="btn btn-info btn-admin">Περιγραφή</button>


                        </td> 
                        
                        <td> <span data-bind="text:afm"></span> </td>                        
                        <td> <span data-bind="text:points"></span> </td>
                        <td> <span data-bind="text:bankaccount"></span> </td>
                        <td>
                            <button data-bind="visible: status==0, click: function(data, event) { change_status(id, 1, data, event) }" type="button" class="btn btn-success btn-admin">Μη Επαληθευμένος</button>
                            <button data-bind="visible: status==1, click: function(data, event) { change_status(id, 2, data, event) }" type="button" class="btn btn-danger btn-admin">Block</button>
                            <button data-bind="visible: status==2, click: function(data, event) { change_status(id, 1, data, event) }" type="button" class="btn btn-info btn-admin">Unblock</button>
                        </td>

                    </tr>                   
                </tbody>
            </table>
        </div>


    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="./static/bootstrap/js/bootstrap.min.js"></script>
    <script src="./static/knockout-3.4.2.js"></script>
    <script src="./js/DataTable.js"></script>
    <script src="./js/DataTable.bootstrap4.js"></script>
    <script src="js/admin_panel_company.js"></script>

    </body>
</html>
