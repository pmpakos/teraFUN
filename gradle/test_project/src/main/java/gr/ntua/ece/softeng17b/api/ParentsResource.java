package gr.ntua.ece.softeng17b.api;

import gr.ntua.ece.softeng17b.conf.Configuration;
import gr.ntua.ece.softeng17b.data.DataAccess;
import gr.ntua.ece.softeng17b.data.ParentDAO;
import gr.ntua.ece.softeng17b.data.Parent;

import org.restlet.resource.ServerResource;
import org.restlet.representation.Representation;
import org.restlet.resource.ResourceException;

import java.util.List;

public class ParentsResource extends ServerResource {

	private final DataAccess dataAccess = Configuration.getInstance().getDataAccess();

	@Override
	protected Representation get() throws ResourceException {
		ParentDAO parent_dao = new ParentDAO();

		parent_dao.setDataSource(dataAccess.dataSource);
		parent_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

		List<Parent> parents = parent_dao.getAll();
		return new ParentsJsonRepresentation(parents);
	}
}
