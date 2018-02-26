
var Event = function(name, date, address, description,id) {
    this.name = name;
    this.date = date;
    this.address = address; 
    this.description = description;
    this.id = id
}

var VM = function(){
    this.events = ko.observableArray();     
       
}

VM.prototype.loadEvents = function() {
    console.log("Loading events...");
    var ID = 5;
    var opts = {
        traditional : true,
        cache       : false,
        url         : "./api/active_events_parent/"+ID,
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
			eventJson.Description,
            eventJson.ID
            );
        console.log(event);
        viewModel.events.push(event);
    });


     

    var table = $('#Data').DataTable( {
        "paging": false,
        "iDisplay": 2,
        "bLengthChange": false,
        "columnDefs": [ {
          "targets": 3,
          "orderable": false
        } ],
        "bDeferRender": true, 
        "bInfo" : false,
        "pagingType": "simple_numbers",
        //"scrollY": "200px",
        //"stateSave": true,
        "searching": false
    } );

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
