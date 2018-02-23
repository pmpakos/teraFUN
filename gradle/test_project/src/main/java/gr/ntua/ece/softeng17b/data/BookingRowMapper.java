package gr.ntua.ece.softeng17b.data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;

import org.springframework.jdbc.core.RowMapper;

class BookingRowMapper implements RowMapper<Booking>  {

	@Override
    public Booking mapRow(ResultSet rs, int rowNum) throws SQLException {
        
        int bookid = rs.getInt("BookingID");
      	int parentid = rs.getInt("ParentID");
      	int eventid = rs.getInt("EventID");
      	int tickets = rs.getInt("NumberOfTickets");
      	Date date = rs.getDate("BookDate");
      	String code = rs.getString("Code");

        return new Booking(
                    bookid, parentid,eventid,date,tickets,code
                );
    }
}