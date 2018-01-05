package gr.ntua.ece.softeng17b.api;

import gr.ntua.ece.softeng17b.conf.Configuration;
import gr.ntua.ece.softeng17b.data.DataAccess;
import gr.ntua.ece.softeng17b.data.BookingDAO;
import gr.ntua.ece.softeng17b.data.Booking;

import org.restlet.resource.ServerResource;
import org.restlet.representation.Representation;
import org.restlet.resource.ResourceException;

import java.util.List;

public class BookingsResource extends ServerResource {

	private final DataAccess dataAccess = Configuration.getInstance().getDataAccess();

	@Override
	protected Representation get() throws ResourceException {
		BookingDAO booking_dao = new BookingDAO();

		booking_dao.setDataSource(dataAccess.dataSource);
		booking_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

		List<Booking> bookings = booking_dao.getAll();
		return new BookingsJsonRepresentation(bookings);
	}
}
