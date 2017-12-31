package gr.ntua.ece.softeng17b.data;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

class AdminProfileRowMapper implements RowMapper<AdminProfile>  {

	@Override
    public AdminProfile mapRow(ResultSet rs, int rowNum) throws SQLException {
        
        int id = rs.getInt("AdminProfileID");
        String name = rs.getString("NameofTeraFun");
        int amount = rs.getInt("TotalAmount");

        System.out.println(id);

        return new AdminProfile(
                    id, amount,"",
                    name,"",0,0,"",0
                );
    }
}