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
 
  <link href="https://fonts.googleapis.com/css?family=Didact+Gothic" rel="stylesheet">
 

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
  /*font:   'GFS Neohellenic', sans-serif;*/
  font: 400 40px/0.8 'Didact Gothic', sans-serif;
  color: #204060;
  /*text-shadow: 4px 4px 3px rgba(0,0,0,0); */
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



   <div class="col-md-8 col-md-offset-2">
    <div class="panel panel-eventoutside">
      <div class="panel-body">
        <br>

        <h2>Δημιουργία εκδήλωσης σε 4 βήματα</h2>
        <br>

      <div class="container">
        <div class="col-xs-8 ">

        <div class="panel panel-event">
          
          <!-- <div class="panel-heading"> -->
            <!-- <h3 class="panel-title">Complete this form in quick 3 steps!</h3> -->
          <!-- </div> -->
          <div class="panel-body">
            <form name="basicform"  onsubmit="return checknumber()" id="basicform" method="post"  enctype="multipart/form-data" role="form">

              <!-- action="upload_image_company" -->
              <div id="sf1" class="frm">
                <fieldset>
                  <legend>Βήμα 1 από 4</legend>


                  <div class="form-group eventname">
                     <div class="col-xs-8">
                      
                      <label class="control-label" for="eventname"><p>Δώστε ένα όνομα για την εκδήλωση σας</p> </label>
                         
                        <!-- <div class="col-lg-6"> -->
                          <input type="text" class="form-control eventname-validation form-element" name="eventname" id="eventname" placeholder="Είσάγετε το όνομα της εκδήλωσης">
                          <span class="error"><p1 id="eventname_error"></p1></span>
                         </div> 
                       </div>
                  
                  
                  <div class="col-xs-10">
                  <div class="form-group">
                    
                      <label for="description"><p>Γράψτε μία περιγραφή της εκδήλωσης</p></label>
                      <textarea class="form-control desc-validation" id="description" ></textarea>
                       <span class="error"><p1 id="desc_error"></p1></span>
                  </div>

                </div>

                <div class="clearfix" style="height: 10px;clear: both;"></div>
                  <div class="row">
                  <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button class="btn btn-next open1" type="button">Επόμενο <span class="fa fa-arrow-right"></span></button> 
                    </div>
                  </div>
                </div>
                </fieldset>
              </div>

              <div id="sf2" class="frm" style="display: none;">
                <fieldset>
                  <legend>Βήμα 2 από 4</legend>

                   
                  <div class= "row col-xs-10"><p>Πού γίνεται η εκδήλωση;</p></div>

                    <div class="row">
                       
                      <div class="form-group addr col-xs-6">
                        
                      <input type="text" class="form-control addr-validation form-element" id="addr" name="addr" placeholder="Διεύθυνση" data-validation="false">
                    <span class="error"><p1 id="addr_error"></p1></span>
                    </div>  

                    <div class="form-group postal col-xs-6">
                   
                      <input type="text" class="form-control postal-validation form-element" id="postal" name="postal"  placeholder="Ταχυδρομικός Κώδικας" data-validation="false">
                      <span class="error"><p1 id="postal_error"></p1></span>
                    </div> 
                    </div>

                     <div class= "row col-xs-12"><p>Πότε;</p></div>
                  <div class="input-group date form-group search_date col-xs-8" id='datetimepicker1'>
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
                                      <option>12:00πμ</option>
                                    <option> 12:30πμ</option>
                                    <option>1:00πμ</option>
                                    <option>1:30πμ</option>
                                    <option>2:00πμ</option>
                                    <option>2:30πμ</option>
                                    <option>3:00πμ</option>
                                    <option>3:30πμ</option>
                                    <option>4:00πμ</option>
                                    <option>4:30πμ</option>
                                    <option>5:00πμ</option>
                                    <option>5:30πμ</option>
                                    <option>6:00πμ</option>
                                    <option>6:30πμ</option>
                                    <option>7:00πμ</option>
                                    <option>7:30πμ</option>
                                    <option>8:00πμ</option>
                                    <option>8:30πμ</option>
                                    <option>9:00πμ</option>
                                    <option>9:30πμ</option>
                                    <option>10:00πμ</option>
                                    <option>10:30πμ</option>
                                    <option>11:00πμ</option>
                                    <option>11:30πμ</option>
                                    <option>12:00μμ</option>
                                    <option>12:30μμ</option>
                                    <option>1:00μμ</option>
                                    <option>1:30μμ</option>
                                    <option>2:00μμ</option>
                                    <option>2:30μμ</option>
                                    <option>3:00μμ</option>
                                    <option>3:30μμ</option>
                                    <option>4:00μμ</option>
                                    <option>4:30μμ</option>
                                    <option>5:00μμ</option>
                                    <option>5:30μμ</option>
                                    <option>6:00μμ</option>
                                    <option>6:30μμ</option>
                                    <option>7:00μμ</option>
                                    <option>7:30μμ</option>
                                    <option>8:00μμ</option>
                                    <option>8:30μμ</option>
                                    <option>9:00μμ</option>
                                    <option>9:30μμ</option>
                                    <option>10:00μμ</option>
                                    <option>10:30μμ</option>
                                    <option>11:00μμ</option>
                                    <option>11:30μμ</option>
                     </select>
                    </div>
                  
                  
                         <div class="form-group finishhour col-xs-4">
                          <label for="dur"><p>Διάρκεια:</p></label> 
                            <input type="text" class="form-control dur-validation form-element" id="dur" name="dur" placeholder="Λεπτά" data-validation="false">
                          <span class="error"><p1 id="dur_error"></p1></span>
                          
                          
                 
                    </div>
                  </div>
               
<div class="row">
                     <div class="form-group price col-xs-8">
                        

                      <label for="price"><p>Πόσο κοστίζει το ατομικό εισιτήριο;</p></label> 
                      <input type="text" class="form-control price-validation form-element" id="price" name="price" placeholder="Τιμή σε πόντους(1 ευρώ = 10 πόντοι)" data-validation="false">
                    <span class="error"><p1 id="price_error"></p1></span>
                    </div>
                    </div>  
                    <div class="row">
                  
                         <div class="form-group finishhour col-xs-4">
                          
                          
                  <label style="padding-left: 0;" for="text"><p>Είναι σε προσφορά;</p></label>
                    
                      <select class="form-control" id="sel3">
                                     <option>ναι</option>
                                    <option>όχι</option>
                              

                     </select>
                    </div>
                    <br>
                  </div>
               

                   
               <!--    <div class="form-group">
                    <label class="col-lg-2 control-label" for="uemail">Your Email: </label>
                    <div class="col-lg-6">
                      <input type="text" placeholder="Your Email" id="uemail" name="uemail" class="form-control" autocomplete="off">
                    </div>
                  </div>
                  <div class="clearfix" style="height: 10px;clear: both;"></div>
                  
                  <div class="clearfix" style="height: 10px;clear: both;"></div> -->
                  <div class="row">
                    
                  </br>
                  <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button class="btn btn-prev back2" type="button"><span class="fa fa-arrow-left"></span> Προηγούμενο</button> 
                      <button class="btn btn-next open2" type="button">Επόμενο <span class="fa fa-arrow-right"></span></button> 
                    </div>
                  </div>
                </div>
                </fieldset>
              </div>

              <div id="sf3" class="frm" style="display: none;">
                <fieldset>
                  <legend>Βήμα 3 από 4</legend>

                    
                   <div class="form-group a1 col-xs-10 col-sm-10 col-md-10">
                  <p>Γράψτε μας τον μέγιστο αριθμό καθώς και το εύρος των ηλικιών των παιδιών που μπορούν να έρθουν στην εκδηλωσή σας</p>
                </div>
                  <!-- <div class= "row col-xs-10"><p><br/></p></div> -->
                  
                      
                        
                      <div class="form-group col-xs-4 col-sm-4 col-md-4 ">
                    

                      <!-- <label for="addr"></label> -->
                      <input type="text" class="form-control cap-validation form-element" id="cap" name="cap" placeholder="Χωρητικότητα">
                    <span class="error"><p1 id="cap_error"></p1></span>
                    </div>  

                    <div class="form-group col-xs-4 col-sm-4 col-md-4">
                        

                      <!-- <label for="addr"></label> -->
                      <input type="text" class="form-control min-validation form-element" id="min" name="min" placeholder="Ελάχιστη ηλικία">
                    <span class="error"><p1 id="min_error"></p1></span>
                    </div>  

                      <div class="form-group col-xs-4 col-sm-4 col-md-4">
                        

                      <!-- <label for="addr"></label> -->
                      <input type="text" class="form-control max-validation form-element" id="max" name="max" placeholder="Μέγιστη ηλικία" data-validation="false">
                    <span class="error"><p1 id="max_error"></p1></span>
                    </div>  
                    
                    <div class= "row col-xs-10"><p><br/></p></div>
                     <div class= "row col-xs-10"><p>Επιλέξτε όσες επιλογές από τις παρακάτω χαρακτηρίζουν την εκδήλωση σας</p></div>
                    <br>

                     <div class="form-check location1">
                        <ul class="checkboxes">
                         <!--  <li>
                            <label class="custom-control custom-checkbox">
                                        <input type="checkbox" name="1" id="c1" class="custom-control-input">
                                        <span class="custom-control-indicator"></span>Εξωτερικός χώρος
                                    </label>
                          </li> -->
                          <li>
                            <label class="custom-control custom-checkbox">
                                        <input type="checkbox" name="2" id="c2" class="custom-control-input">
                                        <span class="custom-control-indicator"></span>Εσωτερικός χώρος
                                    </label>
                          </li>
                       

                        
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

                         <div class="col-xs-10">
                  <div class="form-group">
                    
                      <label for="tag"><p>Γράψτε λέξεις-φράσεις κλειδιά για την εκδήλωση προκειμένου να γίνεται η αναζήτηση από τους χρήστες</p></label>
                      <textarea class="form-control tag-validation" id="tag" ></textarea>
                       <span class="error"><p1 id="tag_error"></p1></span>
                  </div>

                </div>

                      <div class= "row col-xs-10"><p><br/></p></div>
                      
                  <div class="form-group">
                    <div class="row">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button class="btn btn-prev back3" type="button"><span class="fa fa-arrow-left"></span> Προηγούμενο</button> 
                     
                      <button class="btn btn-next open3" type="button">Αποθήκευση και συνέχεια με τις φωτογραφίες <span class="fa fa-arrow-right"></span></button> 
                       <!-- <span class="error"><p1>(*)</p1></span> -->
                    </div>
                  </div>

                 
                  </div>
                  <span class="error"><p1 id="total_error1"></p1></span>
                 <!--  <div class= "row col-xs-10"><p><br/></p></div>

                  <div class="form-group">
                    <div class="row">
                      <div class="col-lg-12">
                        <div class="text-center">
                          <span class="error"><p1>(*)</p1></span>
                          <span class="details">Πατώντας το κουμπί συνέχεια δεν θα μπορείτε να τροποποιήσετε τα στοιχεία που δώσατε για την εκδήλωση</span>
                        </div>
                      </div>
                    </div>
                  </div> -->


                </fieldset>
              </div>

              <div id="sf4" class="frm" style="display: none;">
                <fieldset>
                  <legend>Βήμα 4 από 4</legend>

                  <div class="col-xs-12">  
                              <label for="pic"> <p>Διαλέξτε έως 10 φωτογραφίες για την εκδήλωση σας!</p></label>

                                     <div class="form-group">
                                        <div class="row">
                                          
                                             <div class="col-xs-12">  
                                              
                                              <span class="details">Από τις φωτογραφίες που θα επιλέξετε, η πρώτη θα αποτελεί την φωτογραφία προφίλ της εκδήλωσης</span>
                                            
                                          </div>
                                        </div>
                                      </div>
                                                      <!-- image-preview-filename input [CUT FROM HERE]-->
                                                      <div class="col-xs-6">
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
                                                                  <input type="file" name="file" id="file" multiple/> <!-- rename it -->
                                                              </div>
                                                          </span>
                                                      </div>
                                                    </div>
                        </div>
                        <br>

                 


                      <div class= "row col-xs-12"><p><br/></p></div>

                  <!-- <div class="form-group"> -->
                    <!-- <div class="col-lg-10 col-lg-offset-2"> -->
                     <!--  <button class="btn btn-prev back3" type="button"><span class="fa fa-arrow-left"></span> Back</button>  -->
                      <!-- <button class="btn btn-next open3" type="button">Submit </button>  -->
                      
                      <div class="form-group">
                        <div class="row">
                          <!-- <div class="row"> -->
                            <div class="col-xs-6 col-xs-offset-1">
                              <input type="submit"  class="form-control btn btn-next" value="Αποθήκευση Φωτογραφιών" />
                              <!-- <button type="button" name="registerc-submit" id="registerc-submit" tabindex="4" class="form-control btn btn-loginp"><span>ΔΗΜΙΟΥΡΓΙΑ ΛΟΓΑΡΙΑΣΜΟΥ </span></button> -->
                            </div>
                          </div>
                        </div>
                        <!-- </div>       -->
                      <!-- <img src='static/spinner.gif' alt="" id="loader" style="display: none"> -->
                    
                  <!-- </div> -->
                  <span class="error"><p1 id="total_error"></p1></span>
                  </div>
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