package gr.ntua.ece.softeng17b.api;

import gr.ntua.ece.softeng17b.conf.Configuration;
import gr.ntua.ece.softeng17b.data.DataAccess;
import gr.ntua.ece.softeng17b.data.EventDAO;
import gr.ntua.ece.softeng17b.data.Event;
import gr.ntua.ece.softeng17b.data.ParentDAO;
import gr.ntua.ece.softeng17b.data.Parent;

import org.restlet.resource.ServerResource;
import org.restlet.representation.Representation;
import org.restlet.resource.ResourceException;
import org.restlet.data.Status;
import java.util.Optional;

import java.util.List;

public class SearchResource extends ServerResource {

	private final DataAccess dataAccess = Configuration.getInstance().getDataAccess();
    
	@Override
	protected Representation get() throws ResourceException {
		String text_search = getQueryValue("text_search");
		String date = getQueryValue("date");
		String ticket = getQueryValue("ticket");
		String age = getQueryValue("age");
		String distance = getQueryValue("distance");
		String kind = getQueryValue("kind");
		String team = getQueryValue("team");
		String indoor = getQueryValue("indoor");
		String offer = getQueryValue("offer");
		String id = getQueryValue("id");
		


		EventDAO event_dao = new EventDAO();
		event_dao.setDataSource(dataAccess.dataSource);
		event_dao.setJdbcTemplate(dataAccess.jdbcTemplate);
		
		List<Event> events = event_dao.searchAll(text_search, date, ticket, age, distance, kind, team, indoor, offer);
		
		if(!(id.equals(""))){
			
			ParentDAO parent_dao = new ParentDAO();
			parent_dao.setDataSource(dataAccess.dataSource);
			parent_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

			Optional<Parent> optional = parent_dao.getParent(Integer.parseInt(id));
			Parent user = optional.orElseThrow(() -> new ResourceException(Status.CLIENT_ERROR_NOT_FOUND, "Not found place with id: " + id));
			if((user.getLatitude()>0.0) && (user.getLongitude()>0.0)){
				events.add(new Event(user.getLatitude(), user.getLongitude()));
			}
		}

		return new EventsJsonRepresentation(events);
	}
}