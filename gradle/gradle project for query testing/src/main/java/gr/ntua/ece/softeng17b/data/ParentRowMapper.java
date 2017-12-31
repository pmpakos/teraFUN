package gr.ntua.ece.softeng17b.data;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

class ParentRowMapper implements RowMapper<Parent>  {

	@Override
    public Parent mapRow(ResultSet rs, int rowNum) throws SQLException {
        
        int id = rs.getInt("ParentID");
        String firstname = rs.getString("FirstName");
        String lastname = rs.getString("LastName");

        System.out.println(id);

        return new Parent(
                    id, "",
                    firstname,
                    lastname,
                    "",0,0,"","",0,0,0,0,0.0,0.0
                );
    }
}