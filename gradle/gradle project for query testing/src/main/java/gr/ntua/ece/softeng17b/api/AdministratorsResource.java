package gr.ntua.ece.softeng17b.api;

import gr.ntua.ece.softeng17b.conf.Configuration;
import gr.ntua.ece.softeng17b.data.DataAccess;
import gr.ntua.ece.softeng17b.data.AdministratorDAO;
import gr.ntua.ece.softeng17b.data.Administrator;

import org.restlet.resource.ServerResource;
import org.restlet.representation.Representation;
import org.restlet.resource.ResourceException;

import java.util.List;

public class AdministratorsResource extends ServerResource {

	private final DataAccess dataAccess = Configuration.getInstance().getDataAccess();

	@Override
	protected Representation get() throws ResourceException {
		AdministratorDAO administrator_dao = new AdministratorDAO();

		administrator_dao.setDataSource(dataAccess.dataSource);
		administrator_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

		List<Administrator> administrators = administrator_dao.getAll();
		return new AdministratorsJsonRepresentation(administrators);
	}
}
