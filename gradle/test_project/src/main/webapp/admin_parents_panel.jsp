<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
  <head>
      <title>TeraFun. Where the fun begins!</title>
      <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
      <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="css/dataTables.min.css"/>

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
    .jumbotron {
        color: #2c3e50;
        background: #ecf0f1;
        height: 190px;
      }
      .navbar-inverse {
        background: #2c3e50;
        color: white;
      }
      .navbar-inverse .navbar-brand, .navbar-inverse a{
        color:white;
        height:60px;
      }
      .navbar-inverse .navbar-nav>li>a {
        color: white;
        margin-top:10px;
        font-size:150%;
      } 
      .navbar-brand img{
         height:50px;
         margin-top:0px;
      }
      .form-inline{
      margin-top:20px;
      }
      .footer{
        margin-top:20px;
        background-color: #ecf0f1;
        color: black;
      }
      h1{
        margin-top: 200px;
        width: 100%;

        font-family: 'Open Sans', sans-serif;
      }


    </style>

  </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-nav-demo" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
                
                    <a href="index.html" class="navbar-brand"><img src="logo.png"  class="img-responsive" alt=""/></a>
                </div>
                <div class="collapse navbar-collapse" id="bs-nav-demo">
                    <ul class="nav navbar-nav">
                        <li><a href="#"> Επικοινωνία </a></li>
                        <li><a href="#"> Σχετικά </a></li>                
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="signup_parent.jsp">Εγγραφή  <i class="fa fa-user-plus"></i></a></li>
                            <li><a href="login.jsp">Σύνδεση<i class="fa fa-user"></i></a></li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                          <input class="form-control mr-sm-2 " type="search" placeholder="Αναζήτηση" aria-label="Search">
                              <button class="btn btn-danger my-2 my-sm-0" type="submit">Αναζήτηση</button>
                        </form>
                </div>
            </div>
        </nav>

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
                            <button data-bind="visible: status==1" type="button" class="btn btn-danger btn-admin">Block</button>
                            <button data-bind="visible: status==2" type="button" class="btn btn-info btn-admin">Unblock</button>
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



    <script>
            $(document).ready(function() {
              var table = $('#Data').DataTable( {
                  "paging": true,
                  "iDisplay": 10,
                  "bLengthChange": false,
                  "columnDefs": [ {
                    "targets": 11,
                    "orderable": false
                  } ],
                  //"pagingType": "simple_numbers",
                  //"scrollY": "200px",
                  //"stateSave": true,
                  //"searching": true,
                  "dom": '<"toolbar">frtip'
                } );
   
              $("div.toolbar").html(
            '<div class="row">'+
              '<div class="col-lg-12">'+
                 '<div class="button-group">'+
                    '<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown"><span class="glyphicon '+
                      'glyphicon-filter"> Φίλτρα</span> <span class="caret"></span></button>'+
                    '<ul class="dropdown-menu">'+
                      '<li> <button id="check0" type="button" class="toggle-vis btn btn-success btn-filter" data-column="0">Id </button> </li>         '+
                      '<li> <button id="check1" type="button" class="toggle-vis btn btn-success btn-filter" data-column="1">Όνομα</button> </li>'+
                      '<li> <button id="check2" type="button" class="toggle-vis btn btn-success btn-filter" data-column="2">Επώνυμο</button> </li>'+
                      '<li> <button id="check3" type="button" class="toggle-vis btn btn-success btn-filter" data-column="3">Διεύθυνση</button> </li>'+
                      '<li> <button id="check4" type="button" class="toggle-vis btn btn-success btn-filter" data-column="4">Τ.Κ.</button> </li>'+
                      '<li> <button id="check5" type="button" class="toggle-vis btn btn-success btn-filter" data-column="5">Τηλέφωνο Επικοινωνίας</button></li>'+
                      '<li> <button id="check6" type="button" class="toggle-vis btn btn-success btn-filter" data-column="6">Username</button> </li>'+
                      '<li> <button id="check7" type="button" class="toggle-vis btn btn-success btn-filter" data-column="7">Email</button> </li>'+
                      '<li> <button id="check8" type="button" class="toggle-vis btn btn-success btn-filter" data-column="8">Πλήθος Κρατήσεων</button> </li>'+
                      '<li> <button id="check9" type="button" class="toggle-vis btn btn-success btn-filter" data-column="9">Πόντοι</button> </li>'+
                      '<li> <button id="check10" type="button" class="toggle-vis btn btn-success btn-filter" data-column="10">Αριθμός Κάρτας </button> </li>'+
                      '<li> <button id="check11" type="button" class="toggle-vis btn btn-success btn-filter" data-column="11">Status</button> </li>'+
                    '</ul>'+
                '</div>'+
              '</div>'+
            '</div>'
              );
          
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
            } );


             
            var Parent = function(id,firstname, lastname, username, address, postalcode, tel, email, cntbook, status, points, bankaccount) {
                this.id = id;
                this.firstname = firstname;
                this.lastname = lastname;
                this.username = username;
                this.address = address;
                this.postalcode = postalcode; 
                this.tel = tel; 
                this.email = email;
                this.cntbook = cntbook; 
                this.status = status;
                this.points = points;
                this.bankaccount = bankaccount;
            }

            var VM = function(){
                this.parents = ko.observableArray();            
            }

            VM.prototype.loadParents = function() {
                console.log("Loading parents...");
                var opts = {
                    traditional : true,
                    cache       : false,
                    url         : "./api/parents",
                    type        : "GET",
                    dataType    : "json"
                };

                return $.ajax(opts); //returns a promise
            }

            var viewModel = new VM();
            console.log("Created VM");            

            viewModel.loadParents().done(function(json){
                console.log("Done loading parents.");                 

                json.results.forEach(function(parentJson){             
                    var parent = new Parent(
                        parentJson.ParentID,
                        parentJson.FirstName,
                        parentJson.LastName,
                        parentJson.Username,
                        parentJson.Address,
                        parentJson.PostalCode,
                        parentJson.TelephoneNumber,
                        parentJson.Email,
                        parentJson.CounterEvents,
                        parentJson.Status,
                        parentJson.Points,
                        parentJson.BankAccount
                        );
                    console.log(parent);
                    viewModel.parents.push(parent);
                });
            });

            ko.applyBindings(viewModel, document.getElementById('ko'));            

    </script>




  </body>
</html>
