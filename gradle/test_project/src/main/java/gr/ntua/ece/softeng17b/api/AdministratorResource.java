package gr.ntua.ece.softeng17b.api;

import gr.ntua.ece.softeng17b.conf.Configuration;
import gr.ntua.ece.softeng17b.data.DataAccess;
import gr.ntua.ece.softeng17b.data.Administrator;
import gr.ntua.ece.softeng17b.data.AdministratorDAO;


import org.restlet.resource.ServerResource;
import org.restlet.representation.Representation;
import org.restlet.resource.ResourceException;
import org.restlet.data.Status;

import java.util.Optional;

public class AdministratorResource extends ServerResource {

	private final DataAccess dataAccess = Configuration.getInstance().getDataAccess();

	@Override
	protected Representation get() throws ResourceException {

		Object idAttr = getRequestAttributes().get("id");
		if (idAttr == null) {
			throw new ResourceException(Status.CLIENT_ERROR_BAD_REQUEST, "Missing admin id");
		}

		int id=-1;
		try {
			id = Integer.parseInt(idAttr.toString());
		}
		catch(Exception e) {
			throw new ResourceException(Status.CLIENT_ERROR_BAD_REQUEST, "Invalid admin id: " + idAttr);
		}

		AdministratorDAO administrator_dao = new AdministratorDAO();
		administrator_dao.setDataSource(dataAccess.dataSource);
		administrator_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

		Optional<Administrator> optional = administrator_dao.getAdministrator(id);		
		Administrator administrator = optional.orElseThrow(() -> new ResourceException(Status.CLIENT_ERROR_NOT_FOUND, "Not found place with id: " + idAttr));
		return new AdministratorJsonRepresentation(administrator);
	}
}