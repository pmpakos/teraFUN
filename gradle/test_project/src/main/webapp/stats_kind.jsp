<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="gr.ntua.ece.softeng17b.conf.*" %>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
  <head>
      <title>Στατιστικά εισιτηρίων | teraFUN</title>
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
<!-- ////////////////////////////////////////////////////////// -->
<!-- flag=="" shmainei unknown -->
<!-- flagidi==0 shmainei admin -->
<!-- flagidi==1 shmainei user -->
<!-- flagidi==2 shmainei company -->
<%
if(flag=="" | flagidi==0 | flagidi==1){
  response.sendRedirect(request.getContextPath() + "/error-404.jsp");
}
int ID = Integer.parseInt(id);
%>
<!-- ////////////////////////////////////////////////////////// -->

      <div class="container">
      <div id="ko">
            <h1>Στατιστικά εισιτηρίων με βάση το είδος των εκδηλώσεων : <span ></span> </h1>
            <table id="Data" class="table table-striped table-bordered" >
                <thead class="thead-light">
                    <tr>
                        <th scope="col">Άθληση </th>
                         <th scope="col">Εκπαίδευση </th>
                          <th scope="col">Ψυχαγωγία </th>
                    </tr>
                </thead>  
                <tbody>
                    <tr>
                        <td> <span data-bind="text:sport"></span> </td>
                        <td> <span data-bind="text:education"></span> </td>
                        <td> <span data-bind="text:fun"></span> </td>

                                     
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
    <!-- <script src="js/stats_kind.js"></script> -->
<script type="text/javascript">
  

var VM = function(){
    this.fun = ko.observable();
    this.education = ko.observable();  
    this.sport = ko.observable();  
}

VM.prototype.loadEvents = function() {
    console.log("Loading events...");
    var ID = <%=ID%>;
    var opts = {
        traditional : true,
        cache       : false,
        url         : "./api/stats_kind/"+ID,
        type        : "GET",
        dataType    : "json"
    };

    return $.ajax(opts); //returns a promise
}

var viewModel = new VM();
console.log("Created VM");            


viewModel.loadEvents().done(function(eventJson){
    console.log("Done loading events."+eventJson.Fun);  

        viewModel.fun(eventJson.Fun);
        viewModel.education(eventJson.Education);
        viewModel.sport(eventJson.Sport);
});


     

    var table = $('#Data').DataTable( {
        "paging": false,
        "iDisplay": 3,
        "bLengthChange": false,
        "columnDefs": [ {
          "targets": 0,
          "orderable": true
        } ],
        "bDeferRender": true, 
        "bInfo" : false,
        "pagingType": "simple_numbers",
        //"scrollY": "200px",
        //"stateSave": true,
        "searching": false
    } );


    $('[id^="check"]').click(function () {
       $(this).toggleClass('btn-success btn-danger'); 
    });

    $('.toggle-vis').on( 'click', function (e) {
        e.preventDefault();

        // Get the column API object
        var column = table.column( $(this).attr('data-column') );

        // Toggle the visibility
        column.visible( !column.visible() );
    } );


ko.applyBindings(viewModel, document.getElementById('ko'));            

function format ( description ) {
    // `d` is the original data object for the row
    return '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
        '<tr>'+
            '<td>Description</td>'+
            '<td>'+description+'</td>'+
        '</tr>'+
    '</table>';
}




function show_description(name,description){
    //console.log(description);
    swal({title: name,text: description, button: false});
    // swal(description);

    
    buttons: false

}

</script>
    </body>
</html>
