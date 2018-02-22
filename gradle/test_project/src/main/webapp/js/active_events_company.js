
var Event = function(name, date, address, ticket_counter, income, description) {
    this.name = name;
    this.date = date;
    this.address = address;
    this.ticket_counter = ticket_counter;
    this.income = income;
    this.description = description;
}

var VM = function(){
    this.events = ko.observableArray();     
       
}

VM.prototype.loadEvents = function() {
    console.log("Loading events...");
    var ID = 3;
    var opts = {
        traditional : true,
        cache       : false,
        url         : "./api/active_events_company/"+ID,
        type        : "GET",
        dataType    : "json"
    };

    return $.ajax(opts); //returns a promise
}

var viewModel = new VM();
console.log("Created VM");            


viewModel.loadEvents().done(function(json){
    console.log("Done loading events.");  

    json.results.forEach(function(eventJson){             
        var event = new Event(
			eventJson.Name,
			eventJson.DateEvent,
            eventJson.Address,
			eventJson.TicketCounter,
			eventJson.IncomingCash,
			eventJson.Description
            );
        console.log(event);
        viewModel.events.push(event);
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
            '<li> <button id="check0" type="button" class="toggle-vis btn btn-success btn-filter" data-column="0">Όνομα </button> </li>         '+
            '<li> <button id="check1" type="button" class="toggle-vis btn btn-success btn-filter" data-column="1">Ημερομηνία </button> </li>'+
            '<li> <button id="check2" type="button" class="toggle-vis btn btn-success btn-filter" data-column="2">Πλήθος Κρατήσεων </button> </li>'+
            '<li> <button id="check3" type="button" class="toggle-vis btn btn-success btn-filter" data-column="3">Έσοδα </button> </li>'+
            '<li> <button id="check4" type="button" class="toggle-vis btn btn-success btn-filter" data-column="4">Επισκέψεις </button></li>'+
            '<li> <button id="check5" type="button" class="toggle-vis btn btn-success btn-filter" data-column="5">Περιγραφή </button> </li>'+
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




function show_description(name,description){
    //console.log(description);
    swal({title: name,text: description, button: false});
    // swal(description);

    
    buttons: false

}
