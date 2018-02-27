package gr.ntua.ece.softeng17b.api;

import gr.ntua.ece.softeng17b.conf.Configuration;
import gr.ntua.ece.softeng17b.data.DataAccess;
import gr.ntua.ece.softeng17b.data.Event;
import gr.ntua.ece.softeng17b.data.EventDAO;
import gr.ntua.ece.softeng17b.data.Booking;
import gr.ntua.ece.softeng17b.data.BookingDAO;


import org.restlet.resource.ServerResource;
import org.restlet.representation.Representation;
import org.restlet.resource.ResourceException;
import org.restlet.data.Status;

import java.util.List;


public class PastEventsParentResource extends ServerResource {

	private final DataAccess dataAccess = Configuration.getInstance().getDataAccess();

	@Override
	protected Representation get() throws ResourceException {

		Object idAttr = getRequestAttributes().get("id");
		if (idAttr == null) {
			throw new ResourceException(Status.CLIENT_ERROR_BAD_REQUEST, "Missing parent id");
		}

		int id=-1;
		try {
			id = Integer.parseInt(idAttr.toString());
		}
		catch(Exception e) {
			throw new ResourceException(Status.CLIENT_ERROR_BAD_REQUEST, "Invalid parent id: " + idAttr);
		}

		EventDAO event_dao = new EventDAO();
		event_dao.setDataSource(dataAccess.dataSource);
		event_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

		List<Event> events = event_dao.getPastEventsOfParent(id);

		int cnt=0;
		for(Event temp: events){
			System.out.println("skatoules : "+temp.getName());
			BookingDAO booking_dao = new BookingDAO();
			booking_dao.setDataSource(dataAccess.dataSource);
			booking_dao.setJdbcTemplate(dataAccess.jdbcTemplate);
			List<Booking> bookings = booking_dao.getPastBookingOfParent(id,temp.getEventID());
			String code;
			int ntickets;
			Booking curr_book = bookings.get(0);
			code = curr_book.getCode();
			ntickets = curr_book.getNumberOfTickets();
			System.out.println("Code is : "+code+" NTICKETS is : " + ntickets);

			events.get(cnt).setTagDescription(code);
			events.get(cnt).setCost(ntickets);

			cnt=cnt+1;
		}

		return new EventsJsonRepresentation(events);
	}
}