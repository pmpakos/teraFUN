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

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.jdbc.core.JdbcTemplate;

public class CompanyDAO{


    private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;


    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void insert(Company company){
        String sql = "INSERT INTO companyservice (Username, CompanyName, Address,"
                    + "PostalCode, TelephoneNumber, Email, AFM, Password,"
                    + "BankAccount, WebPage, Description, PhotosFolder, Latitude, Longitude)"
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        this.jdbcTemplate.update(sql, new Object[] {company.Username, company.CompanyName, company.Address, 
                                        company.PostalCode, company.TelephoneNumber, company.Email,
                                        company.AFM, company.Password, company.BankAccount, company.WebPage,
                                        company.Description, company.PhotosFolder, company.Latitude, company.Longitude});  
    }

    public void changeStatus(int id, int newStatus){
        String sql = "UPDATE companyservice SET status = ? WHERE CompanyID = ?";

        this.jdbcTemplate.update(sql, new Object[] {newStatus, id});   
    }

    public int login(String username, String password) {        
        List<String> db_id = jdbcTemplate.queryForList("select CompanyID from companyservice where (Username = ? && Password = ?)", new Object[] {username, password}, String.class); 

        if(db_id.size() == 0){
           return -1;
        }
        
        return Integer.parseInt(db_id.get(0)); 
    }

    public int check_username(String username) {        
        List<Company> company = jdbcTemplate.query("select * from companyservice where Username = ?", new Object[] {username}, new CompanyRowMapper());
        if (company.size() == 1)  {
            return 1;
        }
        else {
            return 0;
        }        
    }

    public int check_email(String email) {        
        List<Company> company = jdbcTemplate.query("select * from companyservice where Email = ?", new Object[] {email}, new CompanyRowMapper());
        if (company.size() == 1)  {
            return 1;
        }
        else {
            return 0;
        }        
    }

    public Optional<Company> getCompany(int id) {        
        List<Company> company = jdbcTemplate.query("select * from companyservice where CompanyID = ?", new Object[] {id}, new CompanyRowMapper());
        if (company.size() == 1)  {
            return Optional.of(company.get(0));
        }
        else {
            return Optional.empty();
        }        
    }



    public List<Company> getAll(){
        return jdbcTemplate.query("SELECT * FROM companyservice",new CompanyRowMapper());
    }
    /*
    public Boolean login(String Username, String Password){
        
        String sql = "SELECT * "
                + "FROM companyservice WHERE ( (companyservice.Username = ?) && (companyservice.Password = ? ) )";

        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, Username);
            ps.setString(2, Password);
            ResultSet rs = ps.executeQuery();
            int flag = 0;
            if ( rs.next() ) {
                flag = 1;
            }
            rs.close();
            ps.close();
            if (flag==1)
                return true;
            return false;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                conn.close();
                } catch (SQLException e) {}
            }
        }
    }
    
    public Company Details(String Username, String Password){
        
        String sql = "SELECT * "
                + "FROM companyservice WHERE ( (companyservice.Username="+ Username +") && (companyservice.Password =" + Password +"))";

        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            Company user = null;
            ResultSet rs = ps.executeQuery();
            int flag = 0;
            if ( rs.next() ) {
                user = new Company(
                    rs.getInt("CompanyID"), rs.getString("Username"),
                    rs.getString("CompanyName"),
                    rs.getString("Address"),rs.getInt("PostalCode"),rs.getInt("TelephoneNumber"),
                    rs.getString("Email"), rs.getInt("AFM"), rs.getString("Password"),rs.getInt("BankAccount"),rs.getString("Description"),
                    rs.getInt("Status"), rs.getInt("Points"), rs.getDouble("Latitude"), 
                    rs.getDouble("Longitude")
                );
                flag = 1;
            }
            rs.close();
            ps.close();
            if (flag==1)
                return user;
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                conn.close();
                } catch (SQLException e) {}
            }
        }
    }
    
    public ArrayList<Company> getAllCompanys(){

        ArrayList<Company> Rep = new ArrayList<Company>();
        
        String sql = "SELECT companyservice.CompanyID, companyservice.CompanyName, FROM companyservice";

        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            Company user = null;
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("Hi");
                user = new Company(
                    rs.getInt("CompanyID"),"",
                    rs.getString("CompanyName"),
                    "",0,0,"",0,"",0,"", "",0,0,"", 0.0,0.0
                );
                Rep.add(user);
                
            }
            rs.close();
            ps.close();
            return Rep;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                conn.close();
                } catch (SQLException e) {}
            }
        }
    }*/
}