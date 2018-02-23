package gr.ntua.ece.softeng17b.data;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

class AdministratorRowMapper implements RowMapper<Administrator>  {

	@Override
    public Administrator mapRow(ResultSet rs, int rowNum) throws SQLException {
        
        int AdminID = rs.getInt("AdminID");
        String Username = rs.getString("Username");
        String FirstName = rs.getString("FirstName");
        String LastName = rs.getString("LastName");
        String PersonalEmail = rs.getString("PersonalEmail");
        String Password = rs.getString("Password");

        System.out.println(AdminID);

        return new Administrator(
                    AdminID, Username,
                    FirstName,
                    LastName,
                    PersonalEmail,Password
        );
    }
}