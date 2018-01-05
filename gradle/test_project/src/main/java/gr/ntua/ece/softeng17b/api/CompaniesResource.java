package gr.ntua.ece.softeng17b.api;

import gr.ntua.ece.softeng17b.conf.Configuration;
import gr.ntua.ece.softeng17b.data.DataAccess;
import gr.ntua.ece.softeng17b.data.CompanyDAO;
import gr.ntua.ece.softeng17b.data.Company;

import org.restlet.resource.ServerResource;
import org.restlet.representation.Representation;
import org.restlet.resource.ResourceException;

import java.util.List;

public class CompaniesResource extends ServerResource {

	private final DataAccess dataAccess = Configuration.getInstance().getDataAccess();

	@Override
	protected Representation get() throws ResourceException {
		CompanyDAO company_dao = new CompanyDAO();

		company_dao.setDataSource(dataAccess.dataSource);
		company_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

		List<Company> companies = company_dao.getAll();
		return new CompaniesJsonRepresentation(companies);
	}
}
