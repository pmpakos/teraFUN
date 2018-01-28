var Company = function(id, username, name, address, postalcode, tel, email, afm, bankaccount, webpage, description, status, points) {
    this.id = id;
    this.username = username;
    this.name = name;
    this.address = address;
    this.postalcode = postalcode; 
    this.tel = tel; 
    this.email = email;
    this.afm = afm; 
    this.bankaccount = bankaccount;
    this.webpage = webpage;
    this.description = description;
    this.status = status;
    this.points = points;
}

var VM = function(){
    this.companies = ko.observableArray();     
       
}

VM.prototype.loadCompanies = function() {
    console.log("Loading companies...");
    var opts = {
        traditional : true,
        cache       : false,
        url         : "./api/companies",
        type        : "GET",
        dataType    : "json"
    };

    return $.ajax(opts); //returns a promise
}

var viewModel = new VM();
console.log("Created VM");            


viewModel.loadCompanies().done(function(json){
    console.log("Done loading companies.");  

    json.results.forEach(function(companyJson){             
        var company = new Company(
			companyJson.CompanyID,
			companyJson.Username,
			companyJson.CompanyName,
			companyJson.Address,
			companyJson.PostalCode,
			companyJson.TelephoneNumber,
			companyJson.Email,
			companyJson.AFM,
			companyJson.BankAccount,
			companyJson.WebPage,
			companyJson.Description,
			companyJson.Status,
			companyJson.Points
            );
        console.log(company);
        viewModel.companies.push(company);
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
            '<li> <button id="check2" type="button" class="toggle-vis btn btn-success btn-filter" data-column="2">Διεύθυνση</button> </li>'+
            '<li> <button id="check3" type="button" class="toggle-vis btn btn-success btn-filter" data-column="3">Τ.Κ.</button> </li>'+
            '<li> <button id="check4" type="button" class="toggle-vis btn btn-success btn-filter" data-column="4">Τηλέφωνο Επικοινωνίας</button></li>'+
            '<li> <button id="check5" type="button" class="toggle-vis btn btn-success btn-filter" data-column="5">Username</button> </li>'+
            '<li> <button id="check6" type="button" class="toggle-vis btn btn-success btn-filter" data-column="6">Email</button> </li>'+
            '<li> <button id="check7" type="button" class="toggle-vis btn btn-success btn-filter" data-column="7">WebPage</button> </li>'+
            '<li> <button id="check8" type="button" class="toggle-vis btn btn-success btn-filter" data-column="8">Περιγραφή</button> </li>'+
            '<li> <button id="check9" type="button" class="toggle-vis btn btn-success btn-filter" data-column="9">ΑΦΜ</button> </li>'+
            '<li> <button id="check10" type="button" class="toggle-vis btn btn-success btn-filter" data-column="10">Πόντοι</button> </li>'+
            '<li> <button id="check11" type="button" class="toggle-vis btn btn-success btn-filter" data-column="11">Αριθμός Κάρτας </button> </li>'+
            '<li> <button id="check12" type="button" class="toggle-vis btn btn-success btn-filter" data-column="12">Status</button> </li>'+
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

function format ( description ) {
    // `d` is the original data object for the row
    return '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
        '<tr>'+
            '<td>Description</td>'+
            '<td>'+description+'</td>'+
        '</tr>'+
    '</table>';
}



function change_status(id, new_status){
    console.log('Changing status of '+id+' to :'+new_status);
    $.ajax({
        type:"POST",
        data:{
            id:id,
            status:new_status
        },
        url:'/app/company_change_status',
        success: function(){
            window.location.href=window.location.href
        }
            
    }); 

}

function show_description(name,description){
    //console.log(description);
    swal({title: name,text: description, button: false});
    // swal(description);

    
    buttons: false

}
