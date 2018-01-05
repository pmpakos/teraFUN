package gr.ntua.ece.softeng17b.api;

import gr.ntua.ece.softeng17b.conf.Configuration;
import gr.ntua.ece.softeng17b.data.DataAccess;
import gr.ntua.ece.softeng17b.data.AdminProfileDAO;
import gr.ntua.ece.softeng17b.data.AdminProfile;

import org.restlet.resource.ServerResource;
import org.restlet.representation.Representation;
import org.restlet.resource.ResourceException;

import java.util.List;

public class AdminProfileResource extends ServerResource {

	private final DataAccess dataAccess = Configuration.getInstance().getDataAccess();

	@Override
	protected Representation get() throws ResourceException {
		AdminProfileDAO adminprofile_dao = new AdminProfileDAO();

		adminprofile_dao.setDataSource(dataAccess.dataSource);
		adminprofile_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

		List<AdminProfile> adminprofile = adminprofile_dao.getAll();
		return new AdminProfileJsonRepresentation(adminprofile);
	}
}
