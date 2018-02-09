package gr.ntua.ece.softeng17b.api;

import gr.ntua.ece.softeng17b.conf.Configuration;
import gr.ntua.ece.softeng17b.data.DataAccess;
import gr.ntua.ece.softeng17b.data.EventDAO;
import gr.ntua.ece.softeng17b.data.Event;

import org.restlet.resource.ServerResource;
import org.restlet.representation.Representation;
import org.restlet.resource.ResourceException;
import org.restlet.data.Status;


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
				
		


		EventDAO event_dao = new EventDAO();
		event_dao.setDataSource(dataAccess.dataSource);
		event_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

		
		List<Event> events = event_dao.searchAll(text_search, date, ticket, age, distance);
		return new EventsJsonRepresentation(events);
	}
}