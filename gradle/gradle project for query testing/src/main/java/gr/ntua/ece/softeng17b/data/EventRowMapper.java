package gr.ntua.ece.softeng17b.data;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

class EventRowMapper implements RowMapper<Event>  {

	@Override
    public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
        
        int id = rs.getInt("EventID");
        String name = rs.getString("Name");
     ;

        System.out.println(id);

        return new Event(
                id,0,
                name,"",null,"",
                0,0,0,"",0.0,0.0,0,0,0,0,0,0,
                0,0,""
            );
    }
}