<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
  <head>
      <title>TeraFun. Where the fun begins!</title>
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
        width:90px;
      }
    .btn-filter {
        width:100%;
      }
      h1{
        margin-top: 200px;
        width: 100%;

        font-family: 'Open Sans', sans-serif;
      }


    </style>

  </head>
    <body>
        <%@include file="header.jsp" %>

       <div class="container" id="ko">
            <h1> <span data-bind="text:parents().length"></span> Parents </h1>

            <table id="Data" class="table table-striped table-bordered" data-bind="visible: parents().length > 0">
                <thead class="thead-light">
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Όνομα </th>
                        <th scope="col">Eπώνυμο </th>
                        <th scope="col">Διεύθυνση</th>
                        <th scope="col">Τ.Κ.</th>
                        <th scope="col">Τηλέφωνο Επικοινωνίας </th>
                        <th scope="col">Username </th>
                        <th scope="col">Email </th>
                        <th scope="col">Πλήθος Κρατήσεων </th>
                        <th scope="col">Πόντοι </th>
                        <th scope="col">Αριθμός Κάρτας </th>
                        <th scope="col">Status </th>
                    </tr>
                </thead>  
                <tbody data-bind="foreach:parents">
                    <tr>
                        <td> <span data-bind="text:id"></span> </td>
                        <td> <span data-bind="text:firstname"></span> </td>
                        <td> <span data-bind="text:lastname"></span> </td>
                        <td> <span data-bind="text:address"></span> </td>
                        <td> <span data-bind="text:postalcode"></span> </td>
                        <td> <span data-bind="text:tel"></span> </td>
                        <td> <span data-bind="text:username"></span> </td>
                        <td> <span data-bind="text:email"></span> </td>
                        <td> <span data-bind="text:cntbook"></span> </td>                        
                        <td> <span data-bind="text:points"></span> </td>
                        <td> <span data-bind="text:bankaccount"></span> </td>
                        <td>
                            <button data-bind="visible: status==0" type="button" class="btn btn-default btn-admin">Ανενεργός</button>
                            <button data-bind="visible: status==1, click: function(data, event) { change_status(id, 2, data, event) }" type="button" class="btn btn-danger btn-admin">Block</button>
                            <button data-bind="visible: status==2, click: function(data, event) { change_status(id, 1, data, event) }" type="button" class="btn btn-info btn-admin">Unblock</button>
                        </td>

                    </tr>                   
                </tbody>
            </table>

        </div>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="./static/bootstrap/js/bootstrap.min.js"></script>
    <script src="./static/knockout-3.4.2.js"></script>
    <script src="./js/DataTable.js"></script>
    <script src="./js/DataTable.bootstrap4.js"></script>
    <script src="js/admin_panel_parent.js"></script>




  </body>
</html>
