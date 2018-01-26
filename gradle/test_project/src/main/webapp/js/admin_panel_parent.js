
var Parent = function(id,firstname, lastname, username, address, postalcode, tel, email, cntbook, status, points, bankaccount, vcode) {
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
    this.vcode = vcode;
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
            parentJson.BankAccount,
            parentJson.VerificationCode
            );
        console.log(parent);
        viewModel.parents.push(parent);
    });

    var table = $('#Data').DataTable( {
        "paging": true,
        "iDisplay": 10,
        "bLengthChange": false,
        "columnDefs": [ {
          "targets": 11,
          "orderable": false
        } ],
        "bDeferRender": true, 

        "pagingType": "simple_numbers",
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
            '<li> <button id="check11" type="button" class="toggle-vis btn btn-success btn-filter" data-column="11">Κωδικός Εγγραφής</button> </li>'+
            '<li> <button id="check12" type="button" class="toggle-vis btn btn-success btn-filter" data-column="11">Status</button> </li>'+
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
        
});

ko.applyBindings(viewModel, document.getElementById('ko'));            



function change_status(id, new_status){
	console.log('Changing status of '+id+' to :'+new_status);
	$.ajax({
		type:"POST",
		data:{
			id:id,
			status:new_status
		},
		url:'/app/change_status',
		success: function(){
			window.location.href=window.location.href
		}
			
	});	

}
