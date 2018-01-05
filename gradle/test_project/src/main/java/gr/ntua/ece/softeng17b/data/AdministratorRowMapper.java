package gr.ntua.ece.softeng17b.data;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

class AdministratorRowMapper implements RowMapper<Administrator>  {

	@Override
    public Administrator mapRow(ResultSet rs, int rowNum) throws SQLException {
        
        int id = rs.getInt("AdminID");
        String firstname = rs.getString("FirstName");
        String lastname = rs.getString("LastName");

        System.out.println(id);

        return new Administrator(
                    id, "",
                    firstname,
                    lastname,
                    "",""
                );
    }
}