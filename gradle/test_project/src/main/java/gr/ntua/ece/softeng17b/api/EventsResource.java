package gr.ntua.ece.softeng17b.api;

import gr.ntua.ece.softeng17b.conf.Configuration;
import gr.ntua.ece.softeng17b.data.DataAccess;
import gr.ntua.ece.softeng17b.data.EventDAO;
import gr.ntua.ece.softeng17b.data.Event;

import org.restlet.resource.ServerResource;
import org.restlet.representation.Representation;
import org.restlet.resource.ResourceException;

import java.util.List;

public class EventsResource extends ServerResource {

	private final DataAccess dataAccess = Configuration.getInstance().getDataAccess();

	@Override
	protected Representation get() throws ResourceException {
		EventDAO event_dao = new EventDAO();

		event_dao.setDataSource(dataAccess.dataSource);
		event_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

		List<Event> events = event_dao.getAll();
		return new EventsJsonRepresentation(events);
	}
}
