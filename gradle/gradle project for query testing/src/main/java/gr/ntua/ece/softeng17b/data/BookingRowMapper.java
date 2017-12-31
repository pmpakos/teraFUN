package gr.ntua.ece.softeng17b.data;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

class BookingRowMapper implements RowMapper<Booking>  {

	@Override
    public Booking mapRow(ResultSet rs, int rowNum) throws SQLException {
        
        int id = rs.getInt("BookingID");
      
        System.out.println(id);

        return new Booking(
                    id, 0,0,null,0,""
                );
    }
}