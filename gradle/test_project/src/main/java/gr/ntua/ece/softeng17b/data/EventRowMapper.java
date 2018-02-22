package gr.ntua.ece.softeng17b.data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;

import org.springframework.jdbc.core.RowMapper;

class EventRowMapper implements RowMapper<Event>  {

	@Override
    public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
        
        int EventID = rs.getInt("EventID");
        int CompanyID = rs.getInt("CompanyID");
        String Name = rs.getString("Name");
        String Address = rs.getString("Address");
        Date DateEvent = rs.getDate("DateEvent");
        String Hour = rs.getString("Hour");
        int Duration = rs.getInt("Duration");
        int TicketCounter = rs.getInt("TicketCounter");
        int IncomingCash = rs.getInt("IncomingCash");
        int Cost = rs.getInt("Cost");
        String Description = rs.getString("Description");
        String PhotosFolder = rs.getString("PhotosFolder");
        int IsOffer = rs.getInt("IsOffer");
        int Visits = rs.getInt("Visits");
        double Latitude = rs.getDouble("Latitude");
        double Longitude = rs.getDouble("Longitude");
        int MaxCapacity = rs.getInt("MaxCapacity");
        int Indoor = rs.getInt("Indoor");
        int MinAge = rs.getInt("MinAge");
        int MaxAge = rs.getInt("MaxAge");
        int Fun = rs.getInt("Fun");
        int Sport = rs.getInt("Sport");
        int Education = rs.getInt("Education");
        int Team = rs.getInt("Team");
        String TagDescription = rs.getString("TagDescription");

        return new Event(EventID, CompanyID, Name, Address, DateEvent,
                            Hour, Duration, TicketCounter, IncomingCash, Cost, Description, PhotosFolder,
                            IsOffer, Visits, Latitude, Longitude, MaxCapacity, Indoor,
                            MinAge, MaxAge, Fun, Sport, Education, Team, 
                            TagDescription);
    }
}