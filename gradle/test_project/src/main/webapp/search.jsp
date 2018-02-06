<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search | teraFUN</title>


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


	<link rel="stylesheet" href="css/search.css">
	<script src="js/search.js"></script>


</head>

	<%@include file="header_unknown.jsp" %>
    <body>

	<div class="jumbotron container form-body"> 

	<h2 style="text-align: center"> Αναζήτηση</h2>
	<h3 style="font-size:22px"> Βρείτε προσφορές σε κάθε δραστηριότητα!</h3>
	<p style="font-size:17px">Περιηγιθείτε ανάμεσα στις καλύτερες επιλογές της Αθήνας. </p>

		<form id="searchForm" role='form'>
  	 		<div class="form-group search_text inner-addon left-addon">
  	 			<i class="glyphicon glyphicon-search"></i>
	      		<input type="text" class="form-control search_text-validation form-element" id="text_search" name="search_text" placeholder="Αναζήτηση" data-validation="false">
		  		<span class="error"><p1 id="search_text-error"></p1></span>
    		</div>
    	
	    	<div class="input-group date form-group search_date " id='datetimepicker1'>
		      	<input type="text" class="form-control search_date-validation form-element" id="inputID" name="search_date" placeholder="Επιλέξτε Ημερομηνία" data-validation="false">
		      	<span class="input-group-addon">
	            	<span class="glyphicon glyphicon-calendar"></span>
	       		</span>
		    	<span class="error"><p1 id="search_date_error"></p1></span>
	    	</div> 
  	 
		    <div class="row">
				<div class="form-group tickets col-xs-3">
			        <label style="padding-left: 0;" for="text"><span class="glyphicon glyphicon-user"></span>Εισιτήρια</label>
					<select class="form-control" id="sel1">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</div>
			    <div class="form-group age col-xs-3">
			     	<label style="padding-left: 0;" for="age"><span class="glyphicon glyphicon-eye-open"></span>Ηλικία</label>
					<input  type="text" class="form-control age form-element" id="age" name="age" placeholder="Ηλικία" data-validation="false">
			    	<span class="error"><p1 id="age_error"></p1></span>
			    </div>

			    <div class="form-group distance col-xs-5">
			     	<label style="padding-left: 0;" for="distance"><span class="glyphicon glyphicon-road"></span>Απόσταση</label>
			     	<button style="float: right;" type="button" class="btn btn-info btn-xs" data-toggle="hover" data-trigger="focus" title="Απόσταση" data-content="Συμπληρώστε το πεδίο απόσταση (χιλιόμετρα) προκειμένου να ορίσετε την απόσταση των δραστηριοτήτων από τη διεύθυνση σας. Η μέγιστη δυνατή απόσταση είναι 70 χλμ.">

					<span class="glyphicon glyphicon-info-sign"></span>&nbsp; Info </button>
					<input  style="float: left; " type="text" class="form-control distance form-element" id="distance" name="distance" placeholder="Xιλιόμετρα" data-validation="false">
			    	<span class="error"><p1 id="distance_error"></p1></span>

			    </div>

	   		</div>

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
				</ul>
			</div>
    

		  	<div class="form-group btn1" style="float: left;">
				<button type="button" class="btn btn-danger clear-button"><span class="glyphicon glyphicon-remove"></span>&nbsp; Καθαρισμός </button>
			</div> 	 

		   	<div class="form-group btn2" style="float: right;">   
					<button type="button" class="btn btn-primary search-button"><span class="glyphicon glyphicon-search"></span>&nbsp; Αναζήτηση </button>
			</div>

		</form>
	</div>

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