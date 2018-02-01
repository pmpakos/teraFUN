
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Event | teraFUN</title>


	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
	<!-- Latest compiled JavaScript -->
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="js/uploadimage.js"></script>
	<script src="js/validateparent.js"></script>
	<script src="js/validatecompany.js"></script>
  <script src="js/event.js"></script>

  <script type="text/javascript" src="js/jquery.validate.js"></script>

	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/stylelogin.css"> 
	<link rel="stylesheet" href="css/header.css"> 


<style>
  ul#stepForm, ul#stepForm li {
    margin: 0;
    padding: 0;
  }
  ul#stepForm li {
    list-style: none outside none;
  } 
  label{margin-top: 10px;}
  .help-inline-error{color:red;}
</style>

<style>
.body1 {
  background: url('static/vector.jpg');
  background-color: #cccccc;
  display: block;
  height: 100%;
  width: 100%;
  left: 0;
  position: fixed;
  right: 0;
  z-index: -1;
   top: 0;

  /*background-size:cover;*/
    /*-webkit-filter: blur(5px);
    -moz-filter: blur(5px);
    -o-filter: blur(5px);
    -ms-filter: blur(5px);
    filter: blur(5px);   */
}
</style>
</head>

<body>


<%@include file="header_unknown.jsp" %>
<br>
<br>
	

<div class="container" style="padding-left: 0px; padding-right: 15px;">
  <div class="panel panel-primary">
    <div class="panel-heading">
      <h3 class="panel-title">Complete this form in quick 3 steps!</h3>
    </div>
    <div class="panel-body">
      <form name="basicform" id="basicform" method="post" action="upload_image_company" enctype="multipart/form-data" role="form">
        
        <div id="sf1" class="frm">
          <fieldset>
            <legend>Step 1 of 3</legend>


            <div class="form-group eventname">
                  <label for="eventname" class="col-lg-2 control-label"> Όνομα Event</label>
                  <div class="col-lg-6">
                    <input type="text" class="form-control fname-validation form-element" name="usn" id="usn" placeholder="Είσάγετε το όνομα του event" data-validation="false">
                    <span class="error"><p1 id="usn_error"></p1></span>
                   </div> 
            </div>
            <div class="clearfix" style="height: 10px;clear: both;"></div>

            <div class="form-group">
              <div class="col-lg-10 col-lg-offset-2">
                <button class="btn btn-primary open1" type="button">Next <span class="fa fa-arrow-right"></span></button> 
              </div>
            </div>

          </fieldset>
        </div>

        <div id="sf2" class="frm" style="display: none;">
          <fieldset>
            <legend>Step 2 of 3</legend>


            <div class="form-group">
              <label class="col-lg-2 control-label" for="uemail">Your Email: </label>
              <div class="col-lg-6">
                <input type="text" placeholder="Your Email" id="uemail" name="uemail" class="form-control" autocomplete="off">
              </div>
            </div>

            <div class="clearfix" style="height: 10px;clear: both;"></div>



            <div class="clearfix" style="height: 10px;clear: both;"></div>

            <div class="form-group">
              <div class="col-lg-10 col-lg-offset-2">
                <button class="btn btn-warning back2" type="button"><span class="fa fa-arrow-left"></span> Back</button> 
                <button class="btn btn-primary open2" type="button">Next <span class="fa fa-arrow-right"></span></button> 
              </div>
            </div>

          </fieldset>
        </div>

        <div id="sf3" class="frm" style="display: none;">
          <fieldset>
            <legend>Step 3 of 3</legend>

            <div class="col-lg-8">  
                        <label for="pic"><span class="glyphicon glyphicon-picture"></span> Φωτογραφία Εταιρίας</label>
                                                <!-- image-preview-filename input [CUT FROM HERE]-->
                                                <div class="input-group image-preview">
                                                  
                                                    <input type="value" class="form-control image-preview-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
                                                    <span class="input-group-btn">
                                                        <!-- image-preview-clear button -->
                                                        <button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                                                            <span class="glyphicon glyphicon-remove"></span> Clear
                                                        </button>
                                                        <!-- image-preview-input -->
                                                        <div class="btn btn-default image-preview-input">
                                                            <span class="glyphicon glyphicon-folder-open"></span>
                                                            <span class="image-preview-input-title">Browse</span>
                                                            <input type="file" name="file" id="file"/> <!-- rename it -->
                                                        </div>
                                                    </span>
                                                </div><!-- /input-group image-preview [TO HERE]--> 
                                            <!-- </div> -->
                  </div>
                  <br>
            <!-- <div class="form-group"> -->
              <!-- <div class="col-lg-10 col-lg-offset-2"> -->
               <!--  <button class="btn btn-warning back3" type="button"><span class="fa fa-arrow-left"></span> Back</button>  -->
                <!-- <button class="btn btn-primary open3" type="button">Submit </button>  -->
                <div class="form-group">
                    <!-- <div class="row"> -->
                      <div class="col-sm-6 col-sm-offset-3">
                        <input type="submit"  class="form-control btn btn-registerc" value="submit" />
                        <!-- <button type="button" name="registerc-submit" id="registerc-submit" tabindex="4" class="form-control btn btn-loginp"><span>ΔΗΜΙΟΥΡΓΙΑ ΛΟΓΑΡΙΑΣΜΟΥ </span></button> -->
                      </div>
                    </div>
                  <!-- </div>       -->
                <img src='static/spinner.gif' alt="" id="loader" style="display: none">
              </div>
            </div>

          </fieldset>
        </div>
      </form>
    </div>
  </div>


</div>


 <script async defer
     src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDJxFd20F7bBF7yY7hdjPcw0UybXJXiPYE">
    </script>
    <!-- <div class="body1"></div> -->

</body>
</html>