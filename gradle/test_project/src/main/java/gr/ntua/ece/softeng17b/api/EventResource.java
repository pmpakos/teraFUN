package gr.ntua.ece.softeng17b.api;

import gr.ntua.ece.softeng17b.conf.Configuration;
import gr.ntua.ece.softeng17b.data.DataAccess;
import gr.ntua.ece.softeng17b.data.Event;
import gr.ntua.ece.softeng17b.data.EventDAO;

import org.restlet.resource.ServerResource;
import org.restlet.representation.Representation;
import org.restlet.resource.ResourceException;
import org.restlet.data.Status;

import java.util.Optional;

public class EventResource extends ServerResource {

	private final DataAccess dataAccess = Configuration.getInstance().getDataAccess();

	@Override
	protected Representation get() throws ResourceException {

		Object idAttr = getRequestAttributes().get("id");
		if (idAttr == null) {
			throw new ResourceException(Status.CLIENT_ERROR_BAD_REQUEST, "Missing event id");
		}

		int id=-1;
		try {
			id = Integer.parseInt(idAttr.toString());
		}
		catch(Exception e) {
			throw new ResourceException(Status.CLIENT_ERROR_BAD_REQUEST, "Invalid event id: " + idAttr);
		}

		EventDAO event_dao = new EventDAO();
		event_dao.setDataSource(dataAccess.dataSource);
		event_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

		Optional<Event> optional = event_dao.getEvent(id);		
		Event event = optional.orElseThrow(() -> new ResourceException(Status.CLIENT_ERROR_NOT_FOUND, "Not found place with id: " + idAttr));
		return new EventJsonRepresentation(event);
	}
}