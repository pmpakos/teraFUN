<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
  <head>
      <title>Διαχείριση Γονέων | teraFUN</title>
      <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
      <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="css/dataTables.min.css"/>
      <link rel="stylesheet" href="css/header.css"> 

        <style type="text/css">
                 .body1 {
          background: url('static/sunrise.jpg') ;
          background-color: #cccccc;
          display: block;
          height: 100%;
          width: 100%;
          left: 0;
          position: fixed;
          margin:auto;
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
        .header{
          font-size:40px;

          }

         body { padding-top: 10px; } 

        .toolbar {
          float: left;
        }
        .btn-admin {
            width:140px;
          }
        .btn-filter {
            width:100%;
          }
          h1{
            margin-top: 80px;
            width: 100%;

            font-family: 'Open Sans', sans-serif;
          }

.table-striped{
    background-color:#eee;
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
if(flag=="" | flagidi==1 | flagidi==2){
  response.sendRedirect(request.getContextPath() + "/error-404.jsp");
}
%>
<!-- ////////////////////////////////////////////////////////// -->

      <div id="ko">
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
                        <th scope="col">Κωδικός Εγγραφής</th>
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
                        <td> <span data-bind="text:vcode"></span> </td>
                        <td>
                            <button data-bind="visible: status==0" type="button" class="btn btn-default btn-admin">Μη Επαληθευμένος</button>
                            <button data-bind="visible: status==1" type="button" class="btn btn-default btn-admin">Ανενεργός</button>
                            <button data-bind="visible: status==2, click: function(data, event) { change_status(id, 3, data, event) }" type="button" class="btn btn-danger btn-admin">Block</button>
                            <button data-bind="visible: status==3, click: function(data, event) { change_status(id, 2, data, event) }" type="button" class="btn btn-info btn-admin">Unblock</button>
                        </td>

                    </tr>                   
                </tbody>
            </table>
        </div>
<div class="body1" ></div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="./static/knockout-3.4.2.js"></script>
    <script src="./js/DataTable.js"></script>
    <script src="./js/DataTable.bootstrap4.js"></script>
    <script src="js/admin_panel_parent.js"></script>
    
    </body>
</html>
