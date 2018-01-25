package gr.ntua.ece.softeng17b.data;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

class ParentRowMapper implements RowMapper<Parent>  {

	@Override
    public Parent mapRow(ResultSet rs, int rowNum) throws SQLException {
        
        int ParentID = rs.getInt("ParentID");
        String Username = rs.getString("Username");
        String FirstName = rs.getString("FirstName");
        String LastName = rs.getString("LastName");
        String Address = rs.getString("Address");
        int PostalCode = rs.getInt("PostalCode");
        long TelephoneNumber = rs.getLong("TelephoneNumber");
        String Email = rs.getString("Email");
        String Password = rs.getString("Password");
        int Status = rs.getInt("Status");
        int CounterEvents = rs.getInt("CounterEvents");
        int Points = rs.getInt("Points");
        long BankAccount = rs.getLong("BankAccount");
        double Latitude = rs.getDouble("Latitude");
        double Longitude = rs.getDouble("Longitude");
        long VerificationCode = rs.getLong("VerificationCode");

        return new Parent( ParentID, Username, FirstName, LastName, 
                         Address, PostalCode, TelephoneNumber, 
                         Email, Password, Status, 
                         CounterEvents, Points, BankAccount, 
                         Latitude, Longitude, VerificationCode);
    }
}