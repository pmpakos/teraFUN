package gr.ntua.ece.softeng17b.data;

import java.sql.PreparedStatement;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.sql.Date;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.jdbc.core.JdbcTemplate;

public class BookingDAO{


	private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;


	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

    public void insert(Booking booking){
         String sql = "INSERT INTO booking (ParentID, EventID, BookDate,"
                    + "NumberOfTickets, Code)"
                    + "VALUES (?, ?, ?, ?, ?)";
        this.jdbcTemplate.update(sql, new Object[] {booking.ParentID, booking.EventID, booking.BookDate, 
                                        booking.NumberOfTickets, booking.Code});
    }

    public List<Booking> getAll(){
        return jdbcTemplate.query("SELECT * FROM booking",new BookingRowMapper());
    }

    public List<Booking> getActiveBookingOfParent(int par_id,int ev_id){
            return jdbcTemplate.query("SELECT * FROM event, booking, parent WHERE ((event.EventID = booking.EventID) and (booking.ParentID = parent.ParentID) and (parent.ParentID = ?) and (event.EventID = ?) and (event.DateEvent >= CURDATE()))", new Object[] {par_id,ev_id}, new BookingRowMapper());
    }
    
    public List<Booking> getPastBookingOfParent(int par_id,int ev_id){
            return jdbcTemplate.query("SELECT * FROM event, booking, parent WHERE ((event.EventID = booking.EventID) and (booking.ParentID = parent.ParentID) and (parent.ParentID = ?) and (event.EventID = ?) and (event.DateEvent < CURDATE()))", new Object[] {par_id,ev_id}, new BookingRowMapper());
    }
}