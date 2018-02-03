
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
  <link href="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/build/css/bootstrap-datetimepicker.css" rel="stylesheet">

  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
   <script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js"></script>
  <link rel="stylesheet" href="css/header.css"> 
  <script src="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/src/js/bootstrap-datetimepicker.js"></script>

<!-- Our js files -->
  <script src="js/uploadimage.js"></script>
  <script src="js/validateparent.js"></script>
  <script src="js/validatecompany.js"></script>
  <script type="text/javascript" src="js/jquery.validate.js"></script>
  <script src="js/event.js"></script>
  <script src="js/search.js"></script>  
<!-- Our css files -->
  <link rel="stylesheet" href="css/search.css">
	<link rel="stylesheet" href="css/stylelogin.css"> 
	<link rel="stylesheet" href="css/header.css"> 
  
<!-- Fonts -->
  <link href='http://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>
  
  <link href='http://fonts.googleapis.com/css?family=Cookie' rel='stylesheet' type='text/css'>

  <link href="https://fonts.googleapis.com/css?family=GFS+Neohellenic:400i" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=GFS+Neohellenic" rel="stylesheet">

<style>


.panel-eventoutside{border-color:#fff}
.panel-eventoutside>.panel-heading{color:#fff;background-color:#337ab7;border-color:#337ab7}
.panel-eventoutside>.panel-heading+.panel-collapse>.panel-body{border-top-color:#337ab7}
.panel-eventoutside>.panel-heading .badge{color:#337ab7;background-color:#fff}

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

<style type="text/css">
.body1 {
  background: url('static/balls.jpg');
  background-color: #cccccc;
  display: block;
  height: 100%;
  width: 100%;
  left: 0;
  position: fixed;
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

/*h2 {
  font: 400 90px/0.8 'Great Vibes', Helvetica, sans-serif;
  color: #ccc;
  text-shadow: 4px 4px 3px rgba(0,0,0,0.1); 
  text-align: center;

}*/



h2 {
  font: 400 50px/0.8  'GFS Neohellenic', sans-serif;
  color: #204060;
  text-shadow: 4px 4px 3px rgba(0,0,0,0.1); 
  text-align: center;
}


p {

  font: 400 20px/0.8  'GFS Neohellenic', sans-serif;
  color: #204060;
  /*text-shadow: 4px 4px 3px rgba(0,0,0,0.1); */
  /*text-align: center;*/
}

</style>
</head>

<body>
   <%@include file="header_company.jsp" %>   
   <div class="col-md-8 col-md-offset-2">
    <div class="panel panel-eventoutside">
      <div class="panel-body">
        <br>

      	<h2>Δημιουργία εκδήλωσης σε τέσσερα βήματα!</h2>
        <br>

      <div class="container">
        <div class="col-xs-8 ">

        <div class="panel panel-event">
          
          <!-- <div class="panel-heading"> -->
            <!-- <h3 class="panel-title">Complete this form in quick 3 steps!</h3> -->
          <!-- </div> -->
          <div class="panel-body">
            <form name="basicform" id="basicform" method="post" action="upload_image_company" enctype="multipart/form-data" role="form">
              
              <div id="sf1" class="frm">
                <fieldset>
                  <legend>Step 1 of 4</legend>


                  <div class="form-group eventname">
                     <div class="col-xs-8">
                      
                      <label class="control-label" for="eventname"><p>Δώστε ένα όνομα για την εκδήλωση σας</p> </label>
                         
                        <!-- <div class="col-lg-6"> -->
                          <input type="text" class="form-control fname-validation form-element" name="usn" id="usn" placeholder="Είσάγετε το όνομα του event" data-validation="false">
                          <span class="error"><p1 id="usn_error"></p1></span>
                         </div> 
                       </div>
                  
                  <div class="clearfix" style="height: 10px;clear: both;"></div>
                  <div class="col-xs-10">
                  <div class="form-group">
                      <label for="description"><p>Γράψτε μία περιγραφή της εκδήλωσης</p></label>
                      <textarea class="form-control" id="description" ></textarea>
                  </div>
                </div>

                  <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button class="btn btn-primary open1" type="button">Επόμενο <span class="fa fa-arrow-right"></span></button> 
                    </div>
                  </div>

                </fieldset>
              </div>

              <div id="sf2" class="frm" style="display: none;">
                <fieldset>
                  <legend>Step 2 of 4</legend>

                   
                  <div class= "row col-xs-10"><p>Πού γίνεται η εκδήλωση;</p></div>

                    <div class="row">
                      
                      
                        
                      <div class="form-group addr col-xs-6">
                        

                      <!-- <label for="addr"></label> -->
                      <input type="text" class="form-control addr-validation form-element" id="addr" name="addr" placeholder="Οδός" data-validation="false">
                    <span class="error"><p1 id="addr_error"></p1></span>
                    </div>  

                    <div class="form-group postal col-xs-6">
                   
                      <!-- <label for="postal"></label> -->
                      <input type="text" class="form-control postal-validation form-element" id="postal" name="postal"  placeholder="Ταχυδρομικός Κώδικας" data-validation="false">
                      <span class="error"><p1 id="postal_error"></p1></span>
                    </div> 
                    </div>

                     <div class= "row col-lg-12"><p>Πότε;</p></div>
                  <div class="input-group date form-group search_date " id='datetimepicker1'>
                    <input type="text" class="form-control search_date-validation form-element" id="inputID" name="search_date" placeholder="Επιλέξτε Ημερομηνία" data-validation="false">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                  <span class="error"><p1 id="search_date_error"></p1></span>
                </div> 

                 
                  <div class="row">
                    <div class="form-group starthour col-xs-4">
                          
                          
              <label style="padding-left: 0;" for="text"><p>Έναρξη:</p></label>
                      <select class="form-control" id="sel1">
                                    <option>12:00am</option>
                                    <option> 12:30am</option>
                                    <option>1:00am</option>
                                    <option>1:30am</option>
                                    <option>2:00am</option>
                                    <option>2:30am</option>
                                    <option>3:00am</option>
                                    <option>3:30am</option>
                                    <option>4:00am</option>
                                    <option>4:30am</option>
                                    <option>5:00am</option>
                                    <option>5:30am</option>
                                    <option>6:00am</option>
                                    <option>6:30am</option>
                                    <option>7:00am</option>
                                    <option>7:30am</option>
                                    <option>8:00am</option>
                                    <option>8:30am</option>
                                    <option>9:00am</option>
                                    <option>9:30am</option>
                                    <option>10:00am</option>
                                    <option>10:30am</option>
                                    <option>11:00am</option>
                                    <option>11:30am</option>
                                    <option>12:00pm</option>
                                    <option>12:30pm</option>
                                    <option>1:00pm</option>
                                    <option>1:30pm</option>
                                    <option>2:00pm</option>
                                    <option>2:30pm</option>
                                    <option>3:00pm</option>
                                    <option>3:30pm</option>
                                    <option>4:00pm</option>
                                    <option>4:30pm</option>
                                    <option>5:00pm</option>
                                    <option>5:30pm</option>
                                    <option>6:00pm</option>
                                    <option>6:30pm</option>
                                    <option>7:00pm</option>
                                    <option>7:30pm</option>
                                    <option>8:00pm</option>
                                    <option>8:30pm</option>
                                    <option>9:00pm</option>
                                    <option>9:30pm</option>
                                    <option>10:00pm</option>
                                    <option>10:30pm</option>
                                    <option>11:00pm</option>
                                    <option>11:30pm</option>

                     </select>
                    </div>
                  
                  
                         <div class="form-group finishhour col-xs-4">
                          
                          
                  <label style="padding-left: 0;" for="text"><p>Λήξη:</p></label>
                    
                      <select class="form-control" id="sel2">
                                     <option>12:00am</option>
                                    <option> 12:30am</option>
                                    <option>1:00am</option>
                                    <option>1:30am</option>
                                    <option>2:00am</option>
                                    <option>2:30am</option>
                                    <option>3:00am</option>
                                    <option>3:30am</option>
                                    <option>4:00am</option>
                                    <option>4:30am</option>
                                    <option>5:00am</option>
                                    <option>5:30am</option>
                                    <option>6:00am</option>
                                    <option>6:30am</option>
                                    <option>7:00am</option>
                                    <option>7:30am</option>
                                    <option>8:00am</option>
                                    <option>8:30am</option>
                                    <option>9:00am</option>
                                    <option>9:30am</option>
                                    <option>10:00am</option>
                                    <option>10:30am</option>
                                    <option>11:00am</option>
                                    <option>11:30am</option>
                                    <option>12:00pm</option>
                                    <option>12:30pm</option>
                                    <option>1:00pm</option>
                                    <option>1:30pm</option>
                                    <option>2:00pm</option>
                                    <option>2:30pm</option>
                                    <option>3:00pm</option>
                                    <option>3:30pm</option>
                                    <option>4:00pm</option>
                                    <option>4:30pm</option>
                                    <option>5:00pm</option>
                                    <option>5:30pm</option>
                                    <option>6:00pm</option>
                                    <option>6:30pm</option>
                                    <option>7:00pm</option>
                                    <option>7:30pm</option>
                                    <option>8:00pm</option>
                                    <option>8:30pm</option>
                                    <option>9:00pm</option>
                                    <option>9:30pm</option>
                                    <option>10:00pm</option>
                                    <option>10:30pm</option>
                                    <option>11:00pm</option>
                                    <option>11:30pm</option>

                     </select>
                    </div>
                  </div>
               
<div class="row">
                     <div class="form-group price col-xs-8">
                        

                      <label for="addr"><p>Πόσο κοστίζει το ατομικό εισητίριο;</p></label> 
                      <input type="text" class="form-control price-validation form-element" id="addr" name="addr" placeholder="Γράψτε την τιμή σε ευρώ π.χ 30,50" data-validation="false">
                    <span class="error"><p1 id="addr_error"></p1></span>
                    </div>
                    </div>  
                  
                         <div class="form-group finishhour col-xs-4">
                          
                          <div class="row">
                  <label style="padding-left: 0;" for="text"><p>Είναι σε προσφορά;</p></label>
                    
                      <select class="form-control" id="sel2">
                                     <option>ναι</option>
                                    <option>όχι</option>
                              

                     </select>
                    </div>
                  </div>
               

                   
               <!--    <div class="form-group">
                    <label class="col-lg-2 control-label" for="uemail">Your Email: </label>
                    <div class="col-lg-6">
                      <input type="text" placeholder="Your Email" id="uemail" name="uemail" class="form-control" autocomplete="off">
                    </div>
                  </div>

                  <div class="clearfix" style="height: 10px;clear: both;"></div>

                  

                  <div class="clearfix" style="height: 10px;clear: both;"></div> -->
                    <br>
                  </br>
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
                  <legend>Step 3 of 4</legend>

                    <div class= "row col-xs-10"><p><br/></p></div>
                  
                  <div class= "row col-xs-10"><p>Γράψτε μας τον μέγιστο αριθμό καθώς και το εύρος των ηλικιών των παιδιών που μπορούν να έρθουν στην εκδηλωσή σας<br/></p></div>
                  <div class= "row col-xs-10"><p><br/></p></div>
                  
                      
                        
                      <div class="form-group addr col-xs-4">
                        

                      <!-- <label for="addr"></label> -->
                      <input type="text" class="form-control addr-validation form-element" id="addr" name="addr" placeholder="Χωρητικότητα" data-validation="false">
                    <span class="error"><p1 id="addr_error"></p1></span>
                    </div>  

                    <div class="form-group addr col-xs-4">
                        

                      <!-- <label for="addr"></label> -->
                      <input type="text" class="form-control addr-validation form-element" id="addr" name="addr" placeholder="Ελάχιστη ηλικία" data-validation="false">
                    <span class="error"><p1 id="addr_error"></p1></span>
                    </div>  

                      <div class="form-group addr col-xs-4">
                        

                      <!-- <label for="addr"></label> -->
                      <input type="text" class="form-control addr-validation form-element" id="addr" name="addr" placeholder="Μέγιστη ηλικία" data-validation="false">
                    <span class="error"><p1 id="addr_error"></p1></span>
                    </div>  
                    
                    <div class= "row col-xs-10"><p><br/></p></div>
                     <div class= "row col-xs-10"><p>Επιλέξτε όσες επιλογές από τις παρακάτω χαρακτηρίζουν την εκδήλωση σας</p></div>
                    <br>

                     <div class="form-check location">
                        <ul class="checkboxes">
                          <li>
                            <label class="custom-control custom-checkbox">
                                        <input type="checkbox" name="1" id="c1" class="custom-control-input">
                                        <span class="custom-control-indicator"></span>Εξωτερικός χώρος
                                    </label>
                          </li>
                          <li>
                            <label class="custom-control custom-checkbox">
                                        <input type="checkbox" name="2" id="c2" class="custom-control-input">
                                        <span class="custom-control-indicator"></span>Εσωτερικός χώρος
                                    </label>
                          </li>
                        </ul>

                        <ul class="checkboxes">
                          <li>
                            <label class="custom-control custom-checkbox">
                                        <input type="checkbox" name="3" id="c3" class="custom-control-input">
                                        <span class="custom-control-indicator"></span>Διασκέδαση
                                    </label>
                          </li>
                          <li>
                            <label class="custom-control custom-checkbox">
                                          <input type="checkbox" name="4" id="c4" class="custom-control-input">
                                          <span class="custom-control-indicator"></span>Εκπαίδευση
                                  </label>
                                </li>
                                <li>
                            <label class="custom-control custom-checkbox">
                                          <input type="checkbox" name="5" id="c5" class="custom-control-input">
                                          <span class="custom-control-indicator"></span>Αθλητισμός
                                  </label>
                                </li>
                                <li>
                            <label class="custom-control custom-checkbox">
                                          <input type="checkbox" name="6" id="c6" class="custom-control-input">
                                          <span class="custom-control-indicator"></span>Ομαδικό Πνεύμα
                                  </label>
                                </li>
                        </ul>
                      </div>

                      <div class= "row col-xs-10"><p><br/></p></div>
                  <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button class="btn btn-warning back3" type="button"><span class="fa fa-arrow-left"></span> Back</button> 
                      <button class="btn btn-primary open3" type="button">Next <span class="fa fa-arrow-right"></span></button> 
                    </div>
                  </div>

                </fieldset>
              </div>

              <div id="sf4" class="frm" style="display: none;">
                <fieldset>
                  <legend>Step 4 of 4</legend>

                  <div class="col-lg-8">  
                              <label for="pic"> <p>Διαλέξτε έως 5 φωτογραφίες για την εκδήλωση σας!</p></label>
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
                      <div class= "row col-xs-10"><p><br/></p></div>
                  <!-- <div class="form-group"> -->
                    <!-- <div class="col-lg-10 col-lg-offset-2"> -->
                     <!--  <button class="btn btn-warning back3" type="button"><span class="fa fa-arrow-left"></span> Back</button>  -->
                      <!-- <button class="btn btn-primary open3" type="button">Submit </button>  -->
                      <div class="row">
                      <div class="form-group">
                          <!-- <div class="row"> -->
                            <div class="col-sm-6 col-sm-offset-3">
                              <input type="submit"  class="form-control btn btn-registerc" value="submit" />
                              <!-- <button type="button" name="registerc-submit" id="registerc-submit" tabindex="4" class="form-control btn btn-loginp"><span>ΔΗΜΙΟΥΡΓΙΑ ΛΟΓΑΡΙΑΣΜΟΥ </span></button> -->
                            </div>
                          </div>
                        </div>
                        <!-- </div>       -->
                      <!-- <img src='static/spinner.gif' alt="" id="loader" style="display: none"> -->
                    </div>
                  <!-- </div> -->

          </fieldset>
        </div>
      </form>
    </div>
  </div>
</div>

</div>
</div>
</div>
</div>


 <script async defer
     src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDJxFd20F7bBF7yY7hdjPcw0UybXJXiPYE">
    </script>
    <!-- <div class="body1"></div> -->

</body>
</html>