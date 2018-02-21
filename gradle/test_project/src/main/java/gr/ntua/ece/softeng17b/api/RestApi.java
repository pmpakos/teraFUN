package gr.ntua.ece.softeng17b.api;

import org.restlet.Application;
import org.restlet.Restlet;
import org.restlet.routing.Router;

public class RestApi extends Application {

	@Override
	public synchronized Restlet createInboundRoot() {
		Router router = new Router(getContext());

		//GET, POST
		router.attach("/parents", ParentsResource.class);

		//GET, POST
		router.attach("/administrators", AdministratorsResource.class);
		
		//GET, POST
		router.attach("/companies", CompaniesResource.class);

		//GET, POST
		router.attach("/company/{id}", CompanyResource.class);

		//GET, POST
		router.attach("/parent/{id}", ParentResource.class);

		//GET, POST
		router.attach("/adminprofile", AdminProfileResource.class);

		//GET, POST
		router.attach("/events", EventsResource.class);

		//GET, POST
		router.attach("/events/{id}", HistoryEventResource.class);

		//GET, POST
		router.attach("/search", SearchResource.class);

		//GET, POST
		router.attach("/bookings", BookingsResource.class);
		
		////GET, PUT, DELETE
//		router.attach("/places/{id}", PlaceResource.class);

		return router;
	}

}