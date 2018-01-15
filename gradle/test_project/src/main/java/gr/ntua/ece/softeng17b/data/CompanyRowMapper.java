package gr.ntua.ece.softeng17b.data;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

class CompanyRowMapper implements RowMapper<Company>  {

	@Override
    public Company mapRow(ResultSet rs, int rowNum) throws SQLException {
     
        int CompanyID = rs.getInt("CompanyID");
        String Username = rs.getString("Username");
        String CompanyName = rs.getString("CompanyName");
        String Address = rs.getString("Address");
        int PostalCode = rs.getInt("PostalCode");
        long TelephoneNumber = rs.getLong("TelephoneNumber");
        String Email = rs.getString("Email");
        int AFM = rs.getInt("AFM");
        String Password = rs.getString("Password");
        long BankAccount = rs.getLong("BankAccount");
        String WebPage = rs.getString("WebPage");
        String Description = rs.getString("Description");
        int Status = rs.getInt("Status");
        int Points = rs.getInt("Points");
        String PhotosFolder = rs.getString("PhotosFolder");
        double Latitude = rs.getDouble("Latitude");
        double Longitude = rs.getDouble("Longitude");


        return new Company(CompanyID, Username, CompanyName, Address, 
                                        PostalCode, TelephoneNumber, Email,
                                        AFM, Password, BankAccount, WebPage,
                                        Description, Status, Points, PhotosFolder,
                                        Latitude, Longitude);
    }
}