$(document).ready(function() {
    $('#example').DataTable();
} );
var dict = {
  Mon: "Δευτέρα",
  Tue: "Τρίτη",
  Wen: "Τετάρτη",
  Thu: "Πέμπτη",
  Fri: "Παρασκευή",
  Sat: "Σάββατο",
  Sun: "Κυριακή",
  Jan: "Ιανουαρίου",
  Feb: "Φερβουαρίου",
  Mar: "Μαρτίου",
  Apr: "Απριλίου",
  May: "Μαΐου",
  Jun: "Ιουνίου",
  Jul: "Ιουλίου",
  Aug: "Αυγούστου",
  Sep: "Σεμπτεμβρίου",
  Oct: "Οκτωβρίου",
  Nov: "Νοεμβρίου",
  Dec: "Δεκεμβρίου"
  // etc.
};

function sortByDate(a,b){
    a = a.rank;
    b = b.rank;
    return a>b?1:(a<b?-1:0);
};





var lat = 38.04043200000000;
var lng = 23.76853800000000;
var distance = 10;

function init() {
                
    var uluru = {lat: lat, lng: lng};
    var infowindow = new google.maps.InfoWindow();
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 12,
        center: uluru,
        
    });

    var marker = new google.maps.Marker({
      position: uluru,
      map: map,
      icon: {
        url: "images/markers/home-icon.svg",
        scaledSize: new google.maps.Size(32, 32),
    }
    });

    if(distance>0){
        var circle = new google.maps.Circle({
            map: map,
            radius: distance*1000,    // 10 miles in metres
            fillColor: ' #99ccff',
            fillOpacity: 0.35,
            strokeColor: '#004d99'
        });
        circle.bindTo('center', marker, 'position');
    }
    

    var Event = function(id, name, longitude, latitude, date, sort) {
        this.id = id;
        this.name = name;
        this.Longitude = longitude;
        this.Latitude = latitude;
        this.date = date;
        this.sort_date = sort;

        this.marker = new google.maps.Marker({
            map: map,
            position: {lat: latitude, lng: longitude}
        });
        
        google.maps.event.addListener(this.marker, 'click', function() {
          infowindow.setContent(name);
          infowindow.open(map, this);
        });

        this.showInMap = ko.observable(true);
        this.showInMap.subscribe(function(newValue){                    
            console.log("Changed to " + newValue);
            if (newValue) {
                this.marker.setMap(map);
            }
            else {
                this.marker.setMap(null);
            }                    
        }, this);
    }

    var VM = function(){
        var that = this;
        this.events = ko.observableArray();

        this.selectAll = ko.computed({
            read : function() {
                // Get selected when dependent children are selected
                var someSelected = false;
                var eventsArray = that.events();
                eventsArray.forEach(function(event){
                    console.log(event.showInMap());
                    if (event.showInMap()) {
                        someSelected = true;
                    }         
                });
                return someSelected;
            },
            write : function(newState) {
                // If checked / unchecked, propagate this change to children. This isn't called if we're only
                // only checking the group checkbox because of a change to a dependent.
                var eventsArray = that.events();
                eventsArray.forEach(function (event){
                    event.showInMap(newState);
                });
            }
        });           
    }

    VM.prototype.loadEvents = function() {
        console.log("Loading events...");
        var opts = {
            traditional : true,
            cache       : false,
            url         : "./api/events",
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

            // parse JSON formatted date to javascript date object
            var init_date =new Date(eventJson.DateEvent);

            
            var parts = init_date.toString().split(" ");
            var date = "";
            var date = dict[parts[0]]+", "+parts[2]+" "+dict[parts[1]]+" "+parts[3];
            var rank_date = 10000*init_date.getFullYear()+init_date.getMonth()*100+init_date.getDate()*1;
            // format display date (e.g. 04/10/2012)

            var event = new Event(
                eventJson.EventID,
                eventJson.Name,
                eventJson.Longitude,
                eventJson.Latitude,
                date,
                rank_date
                );
            console.log(event);
            viewModel.events.push(event);
        });

    var table = $('#Data').DataTable( {
            "paging": false,
            "scrollY": "400px", 
            "bScrollCollapse": true,
            "searching": true,
            "bInfo" : false,

            "columns": [
                { "visible": true },
                { "visible": true, "orderData": 2  },
                { "visible": false},
                { "visible": true, "sorting":false }
            ],
        } );

    });

    ko.applyBindings(viewModel, document.getElementById('ko'));            
    console.log("Applied bindings");

}



