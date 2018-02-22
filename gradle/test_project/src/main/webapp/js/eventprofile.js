 function initMap() {    
            var VM = function(){
                this.id = ko.observable();
                this.eventname = ko.observable(); 
                console.log(this.eventname);
                 this.hour = ko.observable(); 
                 this.address= ko.observable(); 
                 this.date= ko.observable(); 
                 this.cost= ko.observable(); 
                   
            }

            VM.prototype.loadEvent = function() {
                console.log("Loading company...");
                var ID = <%=ID%>;
                var opts = {
                    traditional : true,
                    cache       : false,
                    url         : "./api/event/"+ID,
                    type        : "GET",
                    dataType    : "json"
                };

                return $.ajax(opts); //returns a promise
            }

            var viewModel = new VM();
            console.log("Created VM");            

            viewModel.loadEvent().done(function(eventJson){
                console.log("Done loading companies.");                 
                viewModel.id(eventJson.EventID);
                viewModel.eventname(eventJson.Name);
                viewModel.hour(eventJson.Hour);
                viewModel.address(eventJson.Address);
                viewModel.date(eventJson.DateEvent);
                viewModel.cost(eventJson.Cost);
               
                
                <%  System.out.println(FileChecker.main("/src/main/webapp/images/user_profiles/krataios/")); %>
                var uluru = {lat: eventJson.Latitude, lng: eventJson.Longitude};

                var map = new google.maps.Map(document.getElementById('map'), {
                  zoom: 15,
                  center: uluru
                });
                
                var marker = new google.maps.Marker({
                  position: uluru,
                  map: map
                });

            });

            ko.applyBindings(viewModel);            
            console.log("Applied bindings");
        }

        $(document).ready(function(){
     var ID = <%=ID%>;
     var l1= "<div class='item'> <img src='"     
     var l2="'> </div>"

     var l10= "<div class='item active'><img src='"
     var l20="' alt='Chania'></div>"

    var l3="<li data-target='#myCarousel' data-slide-to='";
    var l4="'></li>";
    var l6= "<li data-target='#myCarousel' data-slide-to='0' class='active'></li>"

    var folder = "/app/images/events/event"+ID;

    var counter=0;
   
  
    // console.log(folder);
    $.ajax({
        url : folder,
        success: function (data) {
            $(data).find("a").attr("href", function (i, val) {
                if( val.match(/\.(jpe?g|png|gif)$/) ) { 
                    if(counter==0){
                        $(".carousel-indicators").append( l6 );

                        $(".carousel-inner").append( l10 + val +l20 );

                    

                    // $(".carousel-inner").append( l7 );


                    }
                    else{
                
                    $(".carousel-indicators").append( l3 + counter +l4 );

                    $(".carousel-inner").append( l1 + val +l2 );
                  
                    }
                    // $("body").append( "<img src='" + val +"'>" );
                    counter++;
                } 
            });
        }
    });

});
