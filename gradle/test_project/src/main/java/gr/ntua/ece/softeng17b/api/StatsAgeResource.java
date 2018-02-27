package gr.ntua.ece.softeng17b.api;

import gr.ntua.ece.softeng17b.conf.Configuration;
import gr.ntua.ece.softeng17b.data.DataAccess;
import gr.ntua.ece.softeng17b.data.Event;
import gr.ntua.ece.softeng17b.data.EventDAO;
import gr.ntua.ece.softeng17b.data.Company;
import gr.ntua.ece.softeng17b.data.CompanyDAO;

import org.restlet.resource.ServerResource;
import org.restlet.representation.Representation;
import org.restlet.resource.ResourceException;
import org.restlet.data.Status;

import java.util.Optional;

public class StatsAgeResource extends ServerResource {

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

		int stat_age1 = event_dao.getStatAge1(id);
		int stat_age2 = event_dao.getStatAge2(id);
		int stat_age3 = event_dao.getStatAge3(id);


		Event event = new Event(0, -1, "", "", null, "", -1, -1, -1, -1, "", "", -1, -1, -1, -1, -1, -1, -1, -1, stat_age1, stat_age2, stat_age3, -1, "");

		return new EventJsonRepresentation(event);
	}
}