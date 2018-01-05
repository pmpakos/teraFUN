package gr.ntua.ece.softeng17b.data;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

class CompanyRowMapper implements RowMapper<Company>  {

	@Override
    public Company mapRow(ResultSet rs, int rowNum) throws SQLException {
        
        int id = rs.getInt("CompanyID");
        String companyname = rs.getString("CompanyName");
     

        System.out.println(id);

        return new Company(
                id,"",
                companyname,
                "",0,0,"",0,"",0,"",0,0,0.0,0.0
            );
    }
}