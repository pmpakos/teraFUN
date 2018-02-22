<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
  <head>
      <title>TeraFun. Where the fun begins!</title>
      <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <style type="text/css">
     body { padding-top: 10px; } 
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

    </style>
    <style>
       #map {
        height: 400px;
        width: 50%;
       }
    </style>

  </head>
    <body>
    <script type="text/javascript">
      flag=0
      flag = localStorage.getItem("flag");
      id =  localStorage.getItem("id");
      window.onload = console.log(flag);
      window.onload = console.log(id);
      document.write("Eimai ths kathgorias  :  "+flag+" kai exw ID  :  "+id);
    </script>
  </body>
</html>


