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

   
    

}