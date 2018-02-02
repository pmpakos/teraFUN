var lat = 38.04043200000000;
var lng = 23.76853800000000;

function init() {
                
    var uluru = {lat: lat, lng: lng};
    var infowindow = new google.maps.InfoWindow();
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 12,
      center: uluru
    });

    new google.maps.Marker({
      position: uluru,
      map: map,
      icon: {
        url: "images/markers/home-icon.svg",
        scaledSize: new google.maps.Size(32, 32)
    }
    });

    var CreateMarker = function(event) {
        var eventLoc = {lat: event.Latitude, lng: event.Longitude};
        var marker = new google.maps.Marker({
          map: map,
          position: eventLoc
        });

        google.maps.event.addListener(marker, 'click', function() {
          infowindow.setContent(event.name);
          infowindow.open(map, this);
        });
    }

    var Event = function(id, name, longitude, latitude) {
        this.id = id;
        this.name = name;
        this.Longitude = longitude;
        this.Latitude = latitude;
    }

    var VM = function(){
        this.events = ko.observableArray();            
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
            var event = new Event(
                eventJson.EventID,
                eventJson.Name,
                eventJson.Longitude,
                eventJson.Latitude
                );
            new CreateMarker(event);
            console.log(event);
            viewModel.events.push(event);
        });
    });

    ko.applyBindings(viewModel, document.getElementById('ko'));            
    console.log("Applied bindings");
}