package gr.ntua.ece.softeng17b.api;

import gr.ntua.ece.softeng17b.conf.Configuration;
import gr.ntua.ece.softeng17b.data.DataAccess;
import gr.ntua.ece.softeng17b.data.Company;
import gr.ntua.ece.softeng17b.data.CompanyDAO;


import org.restlet.resource.ServerResource;
import org.restlet.representation.Representation;
import org.restlet.resource.ResourceException;
import org.restlet.data.Status;

import java.util.Optional;

public class CompanyResource extends ServerResource {

	private final DataAccess dataAccess = Configuration.getInstance().getDataAccess();

	@Override
	protected Representation get() throws ResourceException {

		Object idAttr = getRequestAttributes().get("id");
		if (idAttr == null) {
			throw new ResourceException(Status.CLIENT_ERROR_BAD_REQUEST, "Missing company id");
		}

		int id=-1;
		try {
			id = Integer.parseInt(idAttr.toString());
		}
		catch(Exception e) {
			throw new ResourceException(Status.CLIENT_ERROR_BAD_REQUEST, "Invalid company id: " + idAttr);
		}

		CompanyDAO company_dao = new CompanyDAO();
		company_dao.setDataSource(dataAccess.dataSource);
		company_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

		Optional<Company> optional = company_dao.getCompany(id);		
		Company company = optional.orElseThrow(() -> new ResourceException(Status.CLIENT_ERROR_NOT_FOUND, "Not found place with id: " + idAttr));
		return new CompanyJsonRepresentation(company);
	}
}