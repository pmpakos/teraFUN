<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Search | teraFUN</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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

	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet">

	<link rel="stylesheet" href="css/search.css">
	<script src="js/search.js"></script>


<style>
.body1 {
  background: url('static/block.jpg');
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


p {

  font: 400 20px/0.8  'Source Sans Pro', sans-serif;
  color: #000;
  text-align: center;
  /*text-shadow: 4px 4px 3px rgba(0,0,0,0.1); */
  /*text-align: center;*/
}
</style>

</head>

	<%@include file="header_unknown.jsp" %>
    <body>

    	
	
	<div class="container">
    	<div class="row">
    		<br>
    	<br>
    	</br>
    	</br>
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-search">
					<div class="panel-heading">
						
						 <h2 style="text-align: center"> Αναζήτηση Εκδηλώσεων</h2>
						<!-- <hr class="style1"> -->
					
					</div>
					<div class="panel-body">
						 <div class="row"> 
							<div class="col-lg-10 col-md-offset-1">
								<br>

								<p> Βρείτε προσφορές σε κάθε δραστηριότητα!</p>
							<p>Περιειγηθείτε ανάμεσα στις καλύτερες επιλογές της Αθήνας.</br> </br></p>


		<form id="searchForm" role='form'>
  	 		<div class="form-group search_text inner-addon left-addon">
  	 			<i class="glyphicon glyphicon-search"></i>
	      		<input type="text" class="form-control search_text-validation form-element" id="text_search" name="search_text" placeholder="Αναζήτηση" data-validation="false">
		  		<span class="error"><p1 id="search_text-error"></p1></span>
    		</div>
    	
	    	<div class="input-group date form-group search_date dropdown" id='datetimepicker1'>
		      	<input type="text" class="form-control search_date-validation form-element" id="inputID" name="search_date" placeholder="Επιλέξτε Ημερομηνία" data-validation="false">
		      	<span class="input-group-addon">
	            	<span class="glyphicon glyphicon-calendar"></span>
	       		</span>
		    	<span class="error"><p1 id="search_date_error"></p1></span>
	    	</div> 
  	 <br>
		    <div class="row">
				<div class="form-group tickets col-xs-3 col-lg-offset-2">
			        <label style="padding-left: 0;" for="text"><p>Εισιτήρια:</p></label>
					<select class="form-control" id="sel1">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</div>
			    <div class="form-group age col-xs-3 col-lg-offset-2">
			     	<label style="padding-left: 0;" for="age"></span><p>Ηλικία:</p></label>
					<input  type="text" class="form-control age form-element" id="age" name="age" placeholder="Ηλικία" data-validation="false">
			    	<span class="error"><p1 id="age_error"></p1></span>
			    </div>

			    <!--<div class="form-group distance col-xs-5">
			     	<label style="padding-left: 0;" for="distance"><span class="glyphicon glyphicon-road"></span>Απόσταση</label>
			     	<button style="float: right;" type="button" class="btn btn-info btn-xs" data-toggle="hover" data-trigger="focus" title="Απόσταση" data-content="Συμπληρώστε το πεδίο απόσταση (χιλιόμετρα) προκειμένου να ορίσετε την απόσταση των δραστηριοτήτων από τη διεύθυνση σας. Η μέγιστη δυνατή απόσταση είναι 70 χλμ.">

					<span class="glyphicon glyphicon-info-sign"></span>Info </button>
					<input  style="float: left; " type="text" class="form-control distance form-element" id="distance" name="distance" placeholder="Xιλιόμετρα" data-validation="false">
			    	<span class="error"><p1 id="distance_error"></p1></span>

			    </div>-->

	   		</div>

<br>

<div class="row">


<div class="form-group kind col-xs-3">
			        <label style="padding-left: 0;" for="text"><p>Είδος:</p></label>
					<select class="form-control" id="kind">
						<option></option>
						<option>Άθληση</option>
						<option>Εκπαίδευση</option>
						</select>
				</div>

<div class="form-group team col-xs-3">
			        <label style="padding-left: 0;" for="text"><p>Ομαδικότητα:</p></label>
					<select class="form-control" id="team">
						<option></option>
						<option>Ομαδικό</option>
						<option>Ατομικό</option>
						</select>
				</div>


<div class="form-group indoor col-xs-3">
			        <label style="padding-left: 0;" for="text"><p>Χώρος:</p></label>
					<select class="form-control" id="indoor">
						<option></option>
						<option>Εσωτερικός</option>
						<option>Εξωτερικός</option>
						</select>
				</div>

<div class="form-group offer col-xs-3">
			        <label style="padding-left: 0;" for="text"><p>Προσφορά:</p></label>
					<select class="form-control" id="offer">
						<option></option>
						<option>Ναι</option>
						<option>Όχι</option>
						</select>
				</div>

</div>




<!--

		    <div class="form-check location">


				<ul class="checkboxes">
					<li>

   
						
						<label class="custom-control custom-checkbox">
		                    <input type="radio" name="1" id="c1" class="custom-control-input">
		                    <span class="custom-control-indicator"></span>Εξωτερικός χώρος
		                </label>
		            
					</li>
					<li>
						<label class="custom-control custom-checkbox">
		                    <input type="checkbox" name="2" id="c2" class="custom-control-input">
		                    <span class="custom-control-indicator"></span>Εσωτερικός χώρος
		                </label>
					</li>
					<li>
						<label class="custom-control custom-checkbox">
		                    <input type="checkbox" name="5" id="c5" class="custom-control-input">
		                    <span class="custom-control-indicator"></span>Aθλητισμός
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
		                    <input type="checkbox" name="2" id="c6" class="custom-control-input">
		                    <span class="custom-control-indicator"></span>Ομαδικό πνεύμα
		                </label>
					</li>
				</ul>
			</div>
    
-->
		  	<div class="form-group btn1" style="float: left;">
				<button type="button" class="btn btn-danger clear-button"><span class="glyphicon glyphicon-remove"></span>&nbsp; Καθαρισμός </button>
			</div> 	 

		   	<div class="form-group btn2" style="float: right;">   
					<button type="button" class="btn btn-primary search-button"><span class="glyphicon glyphicon-search"></span>&nbsp; Αναζήτηση </button>
			</div>

		</form>
	</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="body1"></div>
	<script>
	
	$(function () {

	$('#datetimepicker1').datetimepicker({ format: 'DD/MM/YYYY', minDate:  moment().millisecond(0).second(0).minute(0).hour(0)});
});
		$("[data-toggle=hover]").popover({
			container: 'body'
		});

	</script>
	  
	
	</body>
</html>